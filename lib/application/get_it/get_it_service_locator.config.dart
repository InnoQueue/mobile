// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:innoq/data/api/dio.dart' as _i14;
import 'package:innoq/data/api/notifications_api.dart' as _i15;
import 'package:innoq/data/api/queues_api.dart' as _i18;
import 'package:innoq/data/api/user_api.dart' as _i21;
import 'package:innoq/data/data.dart' as _i17;
import 'package:innoq/domain/domain.dart' as _i3;
import 'package:innoq/domain/repositories/firebase_messaging_repository/firebase_messaging_repository_impl.dart'
    as _i4;
import 'package:innoq/domain/repositories/firebase_messaging_repository/mock_firebase_messaging_repository_impl.dart'
    as _i5;
import 'package:innoq/domain/repositories/notifications_repository.dart'
    as _i16;
import 'package:innoq/domain/repositories/queues_repository/mock_queues_repositpry_impl.dart'
    as _i9;
import 'package:innoq/domain/repositories/queues_repository/queues_repository_impl.dart'
    as _i19;
import 'package:innoq/domain/repositories/settings_repository.dart' as _i20;
import 'package:innoq/domain/repositories/user_repository/mock_user_repository_repository.dart'
    as _i12;
import 'package:innoq/domain/repositories/user_repository/user_repository_impl.dart'
    as _i13;
import 'package:innoq/presentation/bloc/firebase_notifications_cubit/firebase_notifications_cubit.dart'
    as _i6;
import 'package:innoq/presentation/pages/notifications/bloc/notifications_bloc.dart'
    as _i7;
import 'package:innoq/presentation/pages/queues/bloc/queues_bloc.dart' as _i8;
import 'package:innoq/presentation/pages/tasks/bloc/tasks_bloc/tasks_bloc.dart'
    as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import 'register_module.dart' as _i22;

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
  gh.singleton<_i3.FirebaseMessagingRepository>(
    _i4.FirebaseMessagingRepositoryImpl(),
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.singleton<_i3.FirebaseMessagingRepository>(
    _i5.MockFirebaseMesssagingRepository(),
    registerFor: {_test},
  );
  await gh.singletonAsync<_i6.FirebaseNotifcationsCubit>(
    () {
      final i =
          _i6.FirebaseNotifcationsCubit(gh<_i3.FirebaseMessagingRepository>());
      return i.initPushNotifications().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i7.NotificationsBloc>(_i7.NotificationsBloc());
  gh.singleton<_i8.QueuesBloc>(_i8.QueuesBloc());
  gh.singleton<_i3.QueuesRepository>(
    _i9.MockQueuesRepositoryImpl(),
    registerFor: {_test},
  );
  await gh.factoryAsync<_i10.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i11.TasksBloc>(_i11.TasksBloc());
  gh.singleton<_i3.UserRepository>(
    _i12.MockUserRepositoryImpl(gh<_i10.SharedPreferences>()),
    registerFor: {_test},
  );
  gh.singleton<_i3.UserRepository>(
    _i13.UserRepositoryImpl(gh<_i10.SharedPreferences>()),
    registerFor: {
      _dev,
      _prod,
    },
  );
  gh.singleton<_i14.BaseApi>(_i14.BaseApi(gh<_i3.UserRepository>()));
  gh.singleton<_i15.NotificationsApi>(
      _i15.NotificationsApi(gh<_i14.BaseApi>()));
  gh.singleton<_i16.NotificationsRepository>(
      _i16.NotificationsRepository(gh<_i17.NotificationsApi>()));
  gh.singleton<_i18.QueuesApi>(_i18.QueuesApi(gh<_i17.BaseApi>()));
  gh.singleton<_i3.QueuesRepository>(
    _i19.QueuesRepositoryImpl(gh<_i17.QueuesApi>()),
    registerFor: {
      _prod,
      _dev,
    },
  );
  gh.singleton<_i20.SettingsRepository>(
      _i20.SettingsRepository(gh<_i10.SharedPreferences>()));
  gh.singleton<_i21.UserApi>(_i21.UserApi(gh<_i14.BaseApi>()));
  return getIt;
}

class _$RegisterModule extends _i22.RegisterModule {}
