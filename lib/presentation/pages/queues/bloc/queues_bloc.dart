import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../application/application.dart';
import '../../../../data/data.dart';
import '../../../../domain/domain.dart';

part 'queues_event.dart';
part 'queues_state.dart';
part 'queues_bloc.freezed.dart';

@Singleton()
class QueuesBloc extends Bloc<QueuesEvent, QueuesState> {
  QueuesBloc() : super(const _Initial()) {
    on<_LoadData>(_loadData);
    on<_CreateQueue>(_createQueue);
    on<_EmitInitial>((event, emit) => emit(const _Initial()));
  }

  Future<void> _loadData(
    _LoadData event,
    Emitter<QueuesState> emit,
  ) async {
    emit(const _Initial());
    var queuesInfo = await getIt.get<QueuesRepository>().getQueues();
    var activeQueuesInfo = queuesInfo.queues;
    emit(QueuesState.dataLoaded(activeQueuesInfo.toList()));
  }

  Future<void> _createQueue(
    _CreateQueue event,
    Emitter<QueuesState> emit,
  ) async {
    emit(const QueuesState.initial());
    await getIt.get<QueuesRepository>().createQueue(
          name: event.name,
          color: event.color,
          trackExpenses: event.trackExpenses,
        );
    var queuesInfo = await getIt.get<QueuesRepository>().getQueues();
    var activeQueuesInfo = queuesInfo.queues;
    emit(QueuesState.dataLoaded(activeQueuesInfo.toList()));
  }
}
