import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/user_repository.dart';

import '../entities/user.dart';

@injectable
class GetUser implements UseCase<User, GetUserParams> {
  final UserRepository repository;

  GetUser(this.repository);

  @override
  Future<Result<User, Failure>> call(GetUserParams params) async {
    final user = await repository.getUser(params.userId);
    return ResultSuccess(user);
  }
}

class GetUserParams {
  final String userId;
  GetUserParams(this.userId);
}