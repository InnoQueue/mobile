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
import 'package:innoq/presentation/pages/queues/bloc/queues_bloc.dart' as _i4;
import 'package:innoq/presentation/pages/tasks/bloc/tasks_bloc/tasks_bloc.dart'
    as _i7;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.QueuesApi>(_i3.QueuesApi());
  gh.singleton<_i4.QueuesBloc>(_i4.QueuesBloc());
  gh.singleton<_i5.QueuesRepository>(_i5.QueuesRepository(gh<_i6.QueuesApi>()));
  gh.singleton<_i7.TasksBloc>(_i7.TasksBloc());
  return getIt;
}
