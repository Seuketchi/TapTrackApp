// filepath: lib/domain/usecases/add_pending_user.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/pending_user_repository.dart';

import '../entities/pending_user.dart';

@injectable
class AddPendingUser implements UseCase<NoReturn, AddPendingUserParams> {
  final PendingUserRepository repository;

  AddPendingUser(this.repository);

  @override
  Future<Result<NoReturn, Failure>> call(AddPendingUserParams params) async {
    await repository.addPendingUser(params.user);
    return ResultSuccess(NoReturn());
  }
}

class AddPendingUserParams {
  final PendingUser user;
  AddPendingUserParams(this.user);
}
