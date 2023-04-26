// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:innoq/data/api/dio.dart' as _i12;
import 'package:innoq/data/api/notifications_api.dart' as _i13;
import 'package:innoq/data/api/queues_api.dart' as _i16;
import 'package:innoq/data/api/user_api.dart' as _i19;
import 'package:innoq/data/data.dart' as _i15;
import 'package:innoq/domain/domain.dart' as _i6;
import 'package:innoq/domain/repositories/notifications_repository.dart'
    as _i14;
import 'package:innoq/domain/repositories/queues_repository/mock_queues_repositpry_impl.dart'
    as _i7;
import 'package:innoq/domain/repositories/queues_repository/queues_repository_impl.dart'
    as _i17;
import 'package:innoq/domain/repositories/settings_repository.dart' as _i18;
import 'package:innoq/domain/repositories/user_repository/mock_user_repository_repository.dart'
    as _i10;
import 'package:innoq/domain/repositories/user_repository/user_repository_impl.dart'
    as _i11;
import 'package:innoq/presentation/bloc/firebase_notifications_cubit.dart'
    as _i3;
import 'package:innoq/presentation/pages/notifications/bloc/notifications_bloc.dart'
    as _i4;
import 'package:innoq/presentation/pages/queues/bloc/queues_bloc.dart' as _i5;
import 'package:innoq/presentation/pages/tasks/bloc/tasks_bloc/tasks_bloc.dart'
    as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import 'register_module.dart' as _i20;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
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
  gh.singleton<_i3.FirebaseNotifcationsCubit>(_i3.FirebaseNotifcationsCubit());
  gh.singleton<_i4.NotificationsBloc>(_i4.NotificationsBloc());
  gh.singleton<_i5.QueuesBloc>(_i5.QueuesBloc());
  gh.singleton<_i6.QueuesRepository>(
    _i7.MockQueuesRepositoryImpl(),
    registerFor: {_test},
  );
  await gh.factoryAsync<_i8.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i9.TasksBloc>(_i9.TasksBloc());
  gh.singleton<_i6.UserRepository>(
    _i10.MockUserRepositoryImpl(gh<_i8.SharedPreferences>()),
    registerFor: {_test},
  );
  gh.singleton<_i6.UserRepository>(
    _i11.UserRepositoryImpl(gh<_i8.SharedPreferences>()),
    registerFor: {
      _dev,
      _prod,
    },
  );
  gh.singleton<_i12.BaseApi>(_i12.BaseApi(gh<_i6.UserRepository>()));
  gh.singleton<_i13.NotificationsApi>(
      _i13.NotificationsApi(gh<_i12.BaseApi>()));
  gh.singleton<_i14.NotificationsRepository>(
      _i14.NotificationsRepository(gh<_i15.NotificationsApi>()));
  gh.singleton<_i16.QueuesApi>(_i16.QueuesApi(gh<_i15.BaseApi>()));
  gh.singleton<_i6.QueuesRepository>(
    _i17.QueuesRepositoryImpl(gh<_i15.QueuesApi>()),
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.singleton<_i18.SettingsRepository>(
      _i18.SettingsRepository(gh<_i8.SharedPreferences>()));
  gh.singleton<_i19.UserApi>(_i19.UserApi(gh<_i12.BaseApi>()));
  return getIt;
}

class _$RegisterModule extends _i20.RegisterModule {}
