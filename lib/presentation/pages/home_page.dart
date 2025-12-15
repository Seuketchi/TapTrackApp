import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/user.dart';
import '../../domain/entities/pending_user.dart';
import '../../domain/usecases/add_user.dart';
import '../../domain/usecases/add_pending_user.dart';
import '../../core/di/injection_container.dart';
import '../bloc/user_bloc.dart';
import '../bloc/pending_user_bloc.dart';
import 'package:taptrack_app/presentation/widgets/attendance_list_widget.dart';
import 'package:taptrack_app/presentation/widgets/user_list_widget.dart';
import 'package:taptrack_app/presentation/widgets/pending_user_list_widget.dart';
import 'package:taptrack_app/presentation/widgets/attendance_dialogs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TapTrack'),
          centerTitle: true,
          elevation: 2,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Attendance'),
              Tab(text: 'Users'),
              Tab(text: 'Pending'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const AttendanceListWidget(),
            UserBlocGuard(child: UserListWidget()),
            PendingUserBlocGuard(child: PendingUserListWidget()),
          ],
        ),
        floatingActionButton: Builder(builder: (context) {
          final tabIndex = DefaultTabController.of(context).index;
          return FloatingActionButton(
            backgroundColor: theme.colorScheme.primary,
            foregroundColor: theme.colorScheme.onPrimary,
            onPressed: () {
              if (tabIndex == 0) {
                showAddAttendanceDialog(context);
              } else if (tabIndex == 1) {
                // show add user dialog
                _showAddUserDialog(context);
              } else {
                // show add pending user dialog
                _showAddPendingUserDialog(context);
              }
            },
            child: const Icon(Icons.add),
          );
        }),
      ),
    );
  }

  void _showAddUserDialog(BuildContext context) {
    final nameController = TextEditingController();
    final uidController = TextEditingController();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Add User'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: nameController, decoration: const InputDecoration(labelText: 'Name')),
            TextField(controller: uidController, decoration: const InputDecoration(labelText: 'UID')),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              final user = User(
                uid: uidController.text,
                name: nameController.text,
                status: 'registered',
                registeredAt: DateTime.now(),
              );
              context.read<UserBloc>().add(UserEvent.addUser(AddUserParams(user)));
              Navigator.pop(context);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  void _showAddPendingUserDialog(BuildContext context) {
    final uidController = TextEditingController();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Add Pending User'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: uidController, decoration: const InputDecoration(labelText: 'UID')),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
          ElevatedButton(
            onPressed: () {
              final pending = PendingUser(
                uid: uidController.text,
                status: 'pending',
                firstScannedAt: DateTime.now(),
                lastScannedAt: DateTime.now(),
              );
              context.read<PendingUserBloc>().add(PendingUserEvent.addPendingUser(AddPendingUserParams(pending)));
              Navigator.pop(context);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}

/// Guard widget that tries to resolve UserBloc from GetIt.
class UserBlocGuard extends StatefulWidget {
  final Widget child;
  const UserBlocGuard({required this.child, super.key});

  @override
  State<UserBlocGuard> createState() => _UserBlocGuardState();
}

class _UserBlocGuardState extends State<UserBlocGuard> {
  String? _error;
  UserBloc? _bloc;

  @override
  void initState() {
    super.initState();
    _tryCreate();
  }

  Future<void> _tryCreate() async {
    setState(() { _error = null; });
    try {
      _bloc = getIt<UserBloc>()..add(const UserEvent.getAllUsers());
      setState(() {});
    } catch (e) {
      _error = e.toString();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_bloc != null) {
      return BlocProvider<UserBloc>.value(value: _bloc!, child: widget.child);
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Service unavailable for Users', style: TextStyle(fontSize: 16)),
            if (_error != null) ...[
              const SizedBox(height: 8),
              Text(_error!, style: const TextStyle(color: Colors.red), textAlign: TextAlign.center),
            ],
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () async {
                await configureDependencies();
                await _tryCreate();
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}

/// Guard widget that tries to resolve PendingUserBloc from GetIt.
class PendingUserBlocGuard extends StatefulWidget {
  final Widget child;
  const PendingUserBlocGuard({required this.child, super.key});

  @override
  State<PendingUserBlocGuard> createState() => _PendingUserBlocGuardState();
}

class _PendingUserBlocGuardState extends State<PendingUserBlocGuard> {
  String? _error;
  PendingUserBloc? _bloc;

  @override
  void initState() {
    super.initState();
    _tryCreate();
  }

  Future<void> _tryCreate() async {
    setState(() { _error = null; });
    try {
      _bloc = getIt<PendingUserBloc>()..add(const PendingUserEvent.getAllPendingUsers());
      setState(() {});
    } catch (e) {
      _error = e.toString();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_bloc != null) {
      return BlocProvider<PendingUserBloc>.value(value: _bloc!, child: widget.child);
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Service unavailable for Pending Users', style: TextStyle(fontSize: 16)),
            if (_error != null) ...[
              const SizedBox(height: 8),
              Text(_error!, style: const TextStyle(color: Colors.red), textAlign: TextAlign.center),
            ],
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () async {
                await configureDependencies();
                await _tryCreate();
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
