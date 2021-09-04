import 'package:bloc/bloc.dart';
import 'package:bloc_example/screens/cubit/list_page_state.dart';
import 'package:bloc_example/services/list_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class ListPageCubit extends Cubit<ListPageState> {
  final ListService _listService;

  ListPageCubit(this._listService) : super(ListPageInitialState());

  Future<void> getList() async {
    try {
      emit(ListPageLoadingState());

      final waifus = await _listService.getList();

      emit(ListPageLoadedState(waifus));
    } catch (e) {
      emit(ListPageErroState("Hubo un error"));
    }
  }
}
