// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:innoq/data/api/dio.dart' as _i15;
import 'package:innoq/data/api/notifications_api.dart' as _i16;
import 'package:innoq/data/api/queues_api.dart' as _i19;
import 'package:innoq/data/api/user_api.dart' as _i22;
import 'package:innoq/data/data.dart' as _i18;
import 'package:innoq/domain/domain.dart' as _i3;
import 'package:innoq/domain/repositories/analytics_repository/analytics_repository_impl.dart'
    as _i23;
import 'package:innoq/domain/repositories/analytics_repository/mock_analytics_repository_impl.dart'
    as _i4;
import 'package:innoq/domain/repositories/firebase_messaging_repository/firebase_messaging_repository_impl.dart'
    as _i5;
import 'package:innoq/domain/repositories/firebase_messaging_repository/mock_firebase_messaging_repository_impl.dart'
    as _i6;
import 'package:innoq/domain/repositories/notifications_repository.dart'
    as _i17;
import 'package:innoq/domain/repositories/queues_repository/mock_queues_repository_impl.dart'
    as _i10;
import 'package:innoq/domain/repositories/queues_repository/queues_repository_impl.dart'
    as _i20;
import 'package:innoq/domain/repositories/settings_repository.dart' as _i21;
import 'package:innoq/domain/repositories/user_repository/mock_user_repository_impl.dart'
    as _i14;
import 'package:innoq/domain/repositories/user_repository/user_repository_impl.dart'
    as _i13;
import 'package:innoq/presentation/bloc/firebase_notifications_cubit/firebase_notifications_cubit.dart'
    as _i7;
import 'package:innoq/presentation/pages/notifications/bloc/notifications_bloc.dart'
    as _i8;
import 'package:innoq/presentation/pages/queues/bloc/queues_bloc.dart' as _i9;
import 'package:innoq/presentation/pages/tasks/bloc/tasks_bloc/tasks_bloc.dart'
    as _i12;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import 'register_module.dart' as _i24;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';

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
  gh.singleton<_i3.AnalyticsRepository>(
    _i4.MockAnalyticsRepositoryImpl(),
    registerFor: {_test},
  );
  gh.singleton<_i3.FirebaseMessagingRepository>(
    _i5.FirebaseMessagingRepositoryImpl(),
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.singleton<_i3.FirebaseMessagingRepository>(
    _i6.MockFirebaseMesssagingRepository(),
    registerFor: {_test},
  );
  await gh.singletonAsync<_i7.FirebaseNotifcationsCubit>(
    () {
      final i =
          _i7.FirebaseNotifcationsCubit(gh<_i3.FirebaseMessagingRepository>());
      return i.initPushNotifications().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i8.NotificationsBloc>(_i8.NotificationsBloc());
  gh.singleton<_i9.QueuesBloc>(_i9.QueuesBloc());
  gh.singleton<_i3.QueuesRepository>(
    _i10.MockQueuesRepositoryImpl(),
    registerFor: {_test},
  );
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i12.TasksBloc>(_i12.TasksBloc());
  gh.singleton<_i3.UserRepository>(
    _i13.UserRepositoryImpl(gh<_i11.SharedPreferences>()),
    registerFor: {
      _dev,
      _prod,
    },
  );
  gh.singleton<_i3.UserRepository>(
    _i14.MockUserRepositoryImpl(gh<_i11.SharedPreferences>()),
    registerFor: {_test},
  );
  gh.singleton<_i15.BaseApi>(_i15.BaseApi(gh<_i3.UserRepository>()));
  gh.singleton<_i16.NotificationsApi>(
      _i16.NotificationsApi(gh<_i15.BaseApi>()));
  gh.singleton<_i17.NotificationsRepository>(
      _i17.NotificationsRepository(gh<_i18.NotificationsApi>()));
  gh.singleton<_i19.QueuesApi>(_i19.QueuesApi(gh<_i18.BaseApi>()));
  gh.singleton<_i3.QueuesRepository>(
    _i20.QueuesRepositoryImpl(gh<_i18.QueuesApi>()),
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.singleton<_i21.SettingsRepository>(
      _i21.SettingsRepository(gh<_i11.SharedPreferences>()));
  gh.singleton<_i22.UserApi>(_i22.UserApi(gh<_i15.BaseApi>()));
  return getIt;
} // initializes the registration of analytics-scope dependencies inside of GetIt

_i1.GetIt initAnalyticsScope(
  _i1.GetIt getIt, {
  _i1.ScopeDisposeFunc? dispose,
}) {
  return _i2.GetItHelper(getIt).initScope(
    'analytics',
    dispose: dispose,
    init: (_i2.GetItHelper gh) {
      gh.singleton<_i3.AnalyticsRepository>(
        _i23.AnalyticsRepositoryImpl(),
        registerFor: {
          _prod,
          _dev,
        },
      );
    },
  );
}

class _$RegisterModule extends _i24.RegisterModule {}
