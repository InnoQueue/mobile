// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:innoq/data/api/queues_api.dart' as _i3;
import 'package:innoq/data/data.dart' as _i6;
import 'package:innoq/domain/repositories/queues_repository.dart' as _i5;
import 'package:innoq/domain/repositories/settings_repository.dart' as _i7;
import 'package:innoq/presentation/pages/queues/bloc/queues_bloc.dart' as _i4;
import 'package:innoq/presentation/pages/tasks/bloc/tasks_bloc/tasks_bloc.dart'
    as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import 'register_module.dart' as _i10;

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
  gh.singleton<_i3.QueuesApi>(_i3.QueuesApi());
  gh.singleton<_i4.QueuesBloc>(_i4.QueuesBloc());
  gh.singleton<_i5.QueuesRepository>(_i5.QueuesRepository(gh<_i6.QueuesApi>()));
  gh.singleton<_i7.SettingsRepository>(_i7.SettingsRepository());
  await gh.factoryAsync<_i8.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i9.TasksBloc>(_i9.TasksBloc());
  return getIt;
}

class _$RegisterModule extends _i10.RegisterModule {}
