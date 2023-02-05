// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:innoq/data/api/notifications_api.dart' as _i8;
import 'package:innoq/data/api/queues_api.dart' as _i12;
import 'package:innoq/data/api/user_api.dart' as _i15;
import 'package:innoq/data/data.dart' as _i11;
import 'package:innoq/domain/domain.dart' as _i9;
import 'package:innoq/domain/repositories/notifications_repository.dart'
    as _i10;
import 'package:innoq/domain/repositories/queues_repository.dart' as _i13;
import 'package:innoq/domain/repositories/settings_repository.dart' as _i14;
import 'package:innoq/domain/repositories/user_repository.dart' as _i7;
import 'package:innoq/presentation/pages/notifications/bloc/notifications_bloc.dart'
    as _i3;
import 'package:innoq/presentation/pages/queues/bloc/queues_bloc.dart' as _i4;
import 'package:innoq/presentation/pages/tasks/bloc/tasks_bloc/tasks_bloc.dart'
    as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import 'register_module.dart' as _i16;

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
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i6.TasksBloc>(_i6.TasksBloc());
  gh.singleton<_i7.UserRepository>(
      _i7.UserRepository(gh<_i5.SharedPreferences>()));
  gh.singleton<_i8.NotificationsApi>(
      _i8.NotificationsApi(gh<_i9.UserRepository>()));
  gh.singleton<_i10.NotificationsRepository>(
      _i10.NotificationsRepository(gh<_i11.NotificationsApi>()));
  gh.singleton<_i12.QueuesApi>(_i12.QueuesApi(gh<_i9.UserRepository>()));
  gh.singleton<_i13.QueuesRepository>(
      _i13.QueuesRepository(gh<_i11.QueuesApi>()));
  gh.singleton<_i14.SettingsRepository>(
      _i14.SettingsRepository(gh<_i5.SharedPreferences>()));
  gh.singleton<_i15.UserApi>(_i15.UserApi(gh<_i9.UserRepository>()));
  return getIt;
}

class _$RegisterModule extends _i16.RegisterModule {}
