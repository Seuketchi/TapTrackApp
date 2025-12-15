import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:taptrack_app/presentation/bloc/pending_user_bloc.dart';
import 'package:taptrack_app/presentation/bloc/user_bloc.dart';
import 'package:taptrack_app/domain/entities/pending_user.dart';
import 'package:taptrack_app/domain/entities/user.dart';
import 'package:taptrack_app/domain/usecases/add_user.dart';
import 'package:taptrack_app/domain/usecases/delete_pending_user.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import '../../core/di/injection_container.dart';
import 'package:taptrack_app/core/widget/data_state/data_state_widget.dart';

class PendingUserListWidget extends StatelessWidget {
  const PendingUserListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PendingUserBloc, PendingUserState>(builder: (context, state) {
      return DataStateWidget<List<PendingUser>>(
        state: state.pendingUsers,
        loadingBuilder: (_) => const Center(child: CircularProgressIndicator()),
        errorBuilder: (_, error, __) => Center(child: Text('Error: $error')),
        childBuilder: (_, users) {
          if (users.isEmpty) return Center(child: Text('No pending users'));

          return RefreshIndicator(
            onRefresh: () async => context.read<PendingUserBloc>().add(const PendingUserEvent.getAllPendingUsers()),
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: users.length,
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemBuilder: (_, i) => _PendingUserCard(user: users[i]),
            ),
          );
        },
      );
    });
  }
}

class _PendingUserCard extends StatelessWidget {
  final PendingUser user;
  const _PendingUserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    final first = DateFormat('MMM d, yyyy – HH:mm').format(user.firstScannedAt);
    final last = DateFormat('MMM d, yyyy – HH:mm').format(user.lastScannedAt);

    return Card(
      margin: EdgeInsets.zero,
      child: ListTile(
        title: Text(user.uid),
        subtitle: Text('Status: ${user.status}\nFirst: $first\nLast: $last'),
        isThreeLine: true,
        trailing: Wrap(
          spacing: 8,
          children: [
            IconButton(
              icon: const Icon(Icons.check, color: Colors.green),
              tooltip: 'Approve',
              onPressed: () => _showApproveDialog(context, user),
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => context.read<PendingUserBloc>().add(PendingUserEvent.deletePendingUser(user.uid)),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showApproveDialog(BuildContext context, PendingUser pending) async {
    final nameController = TextEditingController(text: pending.uid);
    final result = await showDialog<String?>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Approve Pending User'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('UID: ${pending.uid}'),
            const SizedBox(height: 8),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, null), child: const Text('Cancel')),
          ElevatedButton(onPressed: () => Navigator.pop(context, nameController.text.trim()), child: const Text('Approve')),
        ],
      ),
    );

    if (result == null || result.isEmpty) return;

    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(const SnackBar(content: Text('Approving user...')));

    try {
      final addUserUsecase = getIt<AddUser>();
      final newUser = User(uid: pending.uid, name: result, status: 'registered', registeredAt: DateTime.now());
      final addRes = await addUserUsecase(AddUserParams(newUser));

      switch (addRes) {
        case ResultSuccess<NoReturn, dynamic>():
          // proceed to delete pending
          try {
            final delUsecase = getIt<DeletePendingUser>();
            final delRes = await delUsecase(pending.uid);
            switch (delRes) {
              case ResultSuccess<NoReturn, dynamic>():
                // Refresh blocs
                try {
                  context.read<UserBloc>().add(const UserEvent.getAllUsers());
                } catch (_) {}
                try {
                  context.read<PendingUserBloc>().add(const PendingUserEvent.getAllPendingUsers());
                } catch (_) {}
                scaffold.showSnackBar(const SnackBar(content: Text('User approved')));
                break;
              case ResultFailure<NoReturn, dynamic>(:final failure):
                scaffold.showSnackBar(SnackBar(content: Text('Failed to remove pending user: ${failure.message}')));
                break;
            }
          } catch (e) {
            scaffold.showSnackBar(SnackBar(content: Text('Failed to remove pending user: $e')));
          }
          break;
        case ResultFailure<NoReturn, dynamic>(:final failure):
          scaffold.showSnackBar(SnackBar(content: Text('Failed to add user: ${failure.message}')));
          break;
      }
    } catch (e) {
      scaffold.showSnackBar(SnackBar(content: Text('Approve failed: $e')));
    }
  }
}
