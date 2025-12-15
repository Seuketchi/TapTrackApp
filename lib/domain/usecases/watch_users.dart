// filepath: lib/domain/usecases/watch_users.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/user_repository.dart';

import '../entities/user.dart';

@injectable
class WatchUsers implements UseCase<Stream<List<User>>, NoParams> {
  final UserRepository repository;

  WatchUsers(this.repository);

  @override
  Future<Result<Stream<List<User>>, Failure>> call(NoParams params) async {
    final stream = repository.watchUsers();
    return ResultSuccess(stream);
  }
}
