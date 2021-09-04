import 'package:flutter/material.dart';

class ListPageLoaded extends StatelessWidget {
  final List<String> waifus;

  const ListPageLoaded({Key? key, required this.waifus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: waifus.length,
      itemBuilder: (context, index) {
        final waifu = waifus[index];
        return Text(waifu);
      },
    );
  }
}
