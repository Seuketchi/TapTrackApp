// filepath: lib/domain/usecases/delete_user.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/user_repository.dart';

@injectable
class DeleteUser implements UseCase<NoReturn, DeleteUserParams> {
  final UserRepository repository;

  DeleteUser(this.repository);

  @override
  Future<Result<NoReturn, Failure>> call(DeleteUserParams params) async {
    await repository.deleteUser(params.uid);
    return ResultSuccess(NoReturn());
  }
}

class DeleteUserParams {
  final String uid;
  DeleteUserParams(this.uid);
}
