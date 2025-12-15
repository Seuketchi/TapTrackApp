// filepath: lib/domain/usecases/get_pending_user.dart
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/pending_user_repository.dart';

import '../entities/pending_user.dart';

class GetPendingUser implements UseCase<PendingUser, GetPendingUserParams> {
  final PendingUserRepository repository;

  GetPendingUser(this.repository);

  @override
  Future<Result<PendingUser, Failure>> call(GetPendingUserParams params) async {
    final user = await repository.getPendingUser(params.uid);
    return ResultSuccess(user);
  }
}

class GetPendingUserParams {
  final String uid;
  GetPendingUserParams(this.uid);
}

