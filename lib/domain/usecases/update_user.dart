// filepath: lib/domain/usecases/update_user.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/user_repository.dart';

import '../entities/user.dart';

@injectable
class UpdateUser implements UseCase<NoReturn, UpdateUserParams> {
  final UserRepository repository;

  UpdateUser(this.repository);

  @override
  Future<Result<NoReturn, Failure>> call(UpdateUserParams params) async {
    await repository.updateUser(params.uid, params.updated);
    return ResultSuccess(NoReturn());
  }
}

class UpdateUserParams {
  final String uid;
  final User updated;
  UpdateUserParams(this.uid, this.updated);
}
