import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:taptrack_app/presentation/bloc/user_bloc.dart';
import 'package:taptrack_app/domain/entities/user.dart';
import 'package:taptrack_app/core/widget/data_state/data_state_widget.dart';

class UserListWidget extends StatelessWidget {
  const UserListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
      return DataStateWidget<List<User>>(
        state: state.users,
        loadingBuilder: (_) => const Center(child: CircularProgressIndicator()),
        errorBuilder: (_, error, __) => Center(child: Text('Error: $error')),
        childBuilder: (_, users) {
          if (users.isEmpty) return Center(child: Text('No users'));

          return RefreshIndicator(
            onRefresh: () async => context.read<UserBloc>().add(const UserEvent.getAllUsers()),
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: users.length,
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemBuilder: (_, i) => _UserCard(user: users[i]),
            ),
          );
        },
      );
    });
  }
}

class _UserCard extends StatelessWidget {
  final User user;
  const _UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final registered = DateFormat('MMM d, yyyy').format(user.registeredAt);

    return Card(
      margin: EdgeInsets.zero,
      child: ListTile(
        title: Text(user.name),
        subtitle: Text('UID: ${user.uid} • Registered: $registered'),
        trailing: Wrap(
          spacing: 8,
          children: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => _showEditDialog(context, user),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => context.read<UserBloc>().add(UserEvent.deleteUser(user.uid)),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context, User user) {
    final nameController = TextEditingController(text: user.name);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Edit User'),
        content: TextField(controller: nameController),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              final updated = User(
                uid: user.uid,
                name: nameController.text,
                status: user.status,
                registeredAt: user.registeredAt,
              );
              context.read<UserBloc>().add(UserEvent.updateUser(user.uid, updated));
              Navigator.pop(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
