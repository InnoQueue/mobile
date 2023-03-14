import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

String _baseUrl = 'https://innoqueue-dev.herokuapp.com/api/v1';

@Singleton()
class BaseApi {
  final UserRepository userRepository;

  BaseApi(this.userRepository);

  Dio get dio => Dio(
        BaseOptions(baseUrl: _baseUrl, headers: {
          'user-token': userRepository.getUser()?.token,
        }),
      );
}