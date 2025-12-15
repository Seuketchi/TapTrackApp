// filepath: lib/domain/usecases/update_pending_user.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/pending_user_repository.dart';

import '../entities/pending_user.dart';

@injectable
class UpdatePendingUser implements UseCase<NoReturn, UpdatePendingUserParams> {
  final PendingUserRepository repository;

  UpdatePendingUser(this.repository);

  @override
  Future<Result<NoReturn, Failure>> call(UpdatePendingUserParams params) async {
    await repository.updatePendingUser(params.uid, params.updated);
    return ResultSuccess(NoReturn());
  }
}

class UpdatePendingUserParams {
  final String uid;
  final PendingUser updated;
  UpdatePendingUserParams(this.uid, this.updated);
}
