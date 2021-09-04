import 'package:injectable/injectable.dart';

@singleton
class ListService {
  Future<List<String>> getList() async {
    await Future.delayed(Duration(seconds: 2));

    return ["Ichicka", "Nino", "Miku", "Yotsuba", "Itsuki"];
  }
}
