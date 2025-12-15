// filepath: lib/domain/usecases/get_all_users.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/user_repository.dart';

import '../entities/user.dart';

@injectable
class GetAllUsers implements UseCase<List<User>, NoParams> {
  final UserRepository repository;

  GetAllUsers(this.repository);

  @override
  Future<Result<List<User>, Failure>> call(NoParams params) async {
    final users = await repository.getAllUsers();
    return ResultSuccess(users);
  }
}
