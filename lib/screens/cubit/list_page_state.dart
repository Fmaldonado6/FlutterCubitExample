abstract class ListPageState {}

class ListPageInitialState extends ListPageState{}

class ListPageLoadingState extends ListPageState{}

class ListPageLoadedState extends ListPageState{

  final List<String> waifus;

  ListPageLoadedState(this.waifus);

}

class ListPageErroState extends ListPageState{
  final String message;

  ListPageErroState(this.message);
}

