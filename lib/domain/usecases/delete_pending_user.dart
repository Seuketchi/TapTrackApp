// filepath: lib/domain/usecases/delete_pending_user.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/pending_user_repository.dart';

@injectable
class DeletePendingUser implements UseCase<NoReturn, String> {
  final PendingUserRepository repository;

  DeletePendingUser(this.repository);

  @override
  Future<Result<NoReturn, Failure>> call(String uid) async {
    await repository.deletePendingUser(uid);
    return ResultSuccess(NoReturn());
  }
}
