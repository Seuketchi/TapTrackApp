// filepath: lib/domain/usecases/get_all_pending_users.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/pending_user_repository.dart';

import '../entities/pending_user.dart';

@injectable
class GetAllPendingUsers implements UseCase<List<PendingUser>, NoParams> {
  final PendingUserRepository repository;

  GetAllPendingUsers(this.repository);

  @override
  Future<Result<List<PendingUser>, Failure>> call(NoParams params) async {
    final users = await repository.getAllPendingUsers();
    return ResultSuccess(users);
  }
}
