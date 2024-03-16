import 'package:dartz/dartz.dart';
import 'package:mz_rsa_plugin/mz_rsa_plugin.dart';

import '../../../core/core.dart';
import '../../login.dart';

/// Implementation of [ILoginRepository]
class LoginRepository implements ILoginRepository {
  final ILoginDatasource _datasource;
  final ILoginLocalDatasource _localDatasource;

  /// Constructor of [LoginRepository]
  LoginRepository(this._datasource, this._localDatasource);

  @override
  Future<Either<Failure, Login>> login(LoginParams params) async {
    try {
      final encrypt =
          await MzRsaPlugin.encryptStringByPublicKey(params.password, rsaKey);
      // final encrypt = await this._datasource.encrypt(params.password);
      final response = await _datasource.login(
        LoginParamsModel.fromEntity(params.copyWith(password: encrypt)),
      );

      _localDatasource.save([response]);

      return Right(response.toEntity());
    } catch (error) {
      Log.e(error);
      return const Left(Failure.badRequest());
    }
  }

  @override
  Future<Either<Unit, Login>> getCredentials() async {
    final logins = await _localDatasource.get();
    if (logins.isNotEmpty) return Right(logins.first.toEntity());
    return const Left(unit);
  }

  @override
  Future<Either<Unit, void>> logout() async {
    try {
      await this._localDatasource.clear();
      Nav.navigate(LoginModule.root);
      return Right(null);
    } catch (error) {
      return const Left(unit);
    }
  }
}
