// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:innoq/data/api/dio.dart' as _i11;
import 'package:innoq/data/api/notifications_api.dart' as _i12;
import 'package:innoq/data/api/queues_api.dart' as _i15;
import 'package:innoq/data/api/user_api.dart' as _i18;
import 'package:innoq/data/data.dart' as _i14;
import 'package:innoq/domain/domain.dart' as _i5;
import 'package:innoq/domain/repositories/notifications_repository.dart'
    as _i13;
import 'package:innoq/domain/repositories/queues_repository/mock_queues_repositpry_impl.dart'
    as _i6;
import 'package:innoq/domain/repositories/queues_repository/queues_repository_impl.dart'
    as _i16;
import 'package:innoq/domain/repositories/settings_repository.dart' as _i17;
import 'package:innoq/domain/repositories/user_repository/mock_user_repository_repository.dart'
    as _i9;
import 'package:innoq/domain/repositories/user_repository/user_repository_impl.dart'
    as _i10;
import 'package:innoq/presentation/pages/notifications/bloc/notifications_bloc.dart'
    as _i3;
import 'package:innoq/presentation/pages/queues/bloc/queues_bloc.dart' as _i4;
import 'package:innoq/presentation/pages/tasks/bloc/tasks_bloc/tasks_bloc.dart'
    as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import 'register_module.dart' as _i19;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.NotificationsBloc>(_i3.NotificationsBloc());
  gh.singleton<_i4.QueuesBloc>(_i4.QueuesBloc());
  gh.singleton<_i5.QueuesRepository>(
    _i6.MockQueuesRepositoryImpl(),
    registerFor: {_test},
  );
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i8.TasksBloc>(_i8.TasksBloc());
  gh.singleton<_i5.UserRepository>(
    _i9.MockUserRepositoryImpl(gh<_i7.SharedPreferences>()),
    registerFor: {_test},
  );
  gh.singleton<_i5.UserRepository>(
    _i10.UserRepositoryImpl(gh<_i7.SharedPreferences>()),
    registerFor: {
      _dev,
      _prod,
    },
  );
  gh.singleton<_i11.BaseApi>(_i11.BaseApi(gh<_i5.UserRepository>()));
  gh.singleton<_i12.NotificationsApi>(
      _i12.NotificationsApi(gh<_i11.BaseApi>()));
  gh.singleton<_i13.NotificationsRepository>(
      _i13.NotificationsRepository(gh<_i14.NotificationsApi>()));
  gh.singleton<_i15.QueuesApi>(_i15.QueuesApi(gh<_i14.BaseApi>()));
  gh.singleton<_i5.QueuesRepository>(
    _i16.QueuesRepositoryImpl(gh<_i14.QueuesApi>()),
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.singleton<_i17.SettingsRepository>(
      _i17.SettingsRepository(gh<_i7.SharedPreferences>()));
  gh.singleton<_i18.UserApi>(_i18.UserApi(gh<_i11.BaseApi>()));
  return getIt;
}

class _$RegisterModule extends _i19.RegisterModule {}
