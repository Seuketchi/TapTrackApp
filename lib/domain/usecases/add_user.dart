// filepath: lib/domain/usecases/add_user.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/user_repository.dart';

import '../entities/user.dart';

@injectable
class AddUser implements UseCase<NoReturn, AddUserParams> {
  final UserRepository repository;

  AddUser(this.repository);

  @override
  Future<Result<NoReturn, Failure>> call(AddUserParams params) async {
    await repository.addUser(params.user);
    return ResultSuccess(NoReturn());
  }
}

class AddUserParams {
  final User user;
  AddUserParams(this.user);
}
