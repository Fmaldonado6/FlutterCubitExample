import 'package:bloc_example/screens/cubit/list_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ListPageInitial extends StatelessWidget {
  const ListPageInitial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Traer lista"),
        onPressed: () {
          context.read<ListPageCubit>().getList();
        },
      ),
    );
  }
}
