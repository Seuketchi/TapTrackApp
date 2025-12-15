// filepath: lib/domain/usecases/watch_pending_users.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/pending_user_repository.dart';

import '../entities/pending_user.dart';

@injectable
class WatchPendingUsers implements UseCase<Stream<List<PendingUser>>, NoParams> {
  final PendingUserRepository repository;

  WatchPendingUsers(this.repository);

  @override
  Future<Result<Stream<List<PendingUser>>, Failure>> call(NoParams params) async {
    final stream = repository.watchPendingUsers();
    return ResultSuccess(stream);
  }
}
