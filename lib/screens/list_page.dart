import 'package:bloc_example/screens/components/list_page_initial.dart';
import 'package:bloc_example/screens/components/list_page_loaded.dart';
import 'package:bloc_example/screens/cubit/list_page_cubit.dart';
import 'package:bloc_example/screens/cubit/list_page_state.dart';
import 'package:bloc_example/services/dependency_injectcion/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPage extends StatefulWidget {
  ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final listPageCubit = getIt.get<ListPageCubit>();

  @override
  void dispose() {
    listPageCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: BlocProvider(
        create: (context) => listPageCubit,
        child: BlocBuilder(
          bloc: listPageCubit,
          builder: (context, state) {
            if (state is ListPageLoadingState)
              return Center(
                child: CircularProgressIndicator(),
              );

            if (state is ListPageErroState)
              return Center(
                child: Text(state.message),
              );

            if (state is ListPageLoadedState)
              return ListPageLoaded(
                waifus: state.waifus,
              );

            return ListPageInitial();
          },
        ),
      ),
    );
  }
}
