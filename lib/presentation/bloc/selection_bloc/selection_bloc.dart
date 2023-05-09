import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_bloc.freezed.dart';

@freezed
class SelectionEvent with _$SelectionEvent {
  const factory SelectionEvent.select(int id) = _Select;

  const factory SelectionEvent.unselect(int id) = _Unselect;

  const factory SelectionEvent.unselectAll() = _UnselectAll;
}

@freezed
class SelectionState with _$SelectionState {
  const factory SelectionState.idsSelected(List<int> ids) = _IdsSelected;
}

class SelectionBloc extends Bloc<SelectionEvent, SelectionState> {
  SelectionBloc() : super(const SelectionState.idsSelected([])) {
    on<_Select>((event, emit) {
      _selectedIds.add(event.id);
      emit(SelectionState.idsSelected(_selectedIds.toList()));
    });

    on<_Unselect>((event, emit) {
      _selectedIds.remove(event.id);
      emit(SelectionState.idsSelected(_selectedIds.toList()));
    });

    on<_UnselectAll>((event, emit) {
      _selectedIds.clear();
      emit(SelectionState.idsSelected(_selectedIds.toList()));
    });
  }

  final List<int> _selectedIds = [];

  List<int> get selectedIds => _selectedIds.toList();
}
