import 'package:flutter_payment_app/services/data_services.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  var list = [].obs;
  final service = new DataServices();
  var _loading = false.obs;

  get loading => _loading.value;

  @override
  void onInit() {
    _loadData();
    super.onInit();
  }

  get newList {
    return list.where((e) => e["status"]).map((e) => e).toList();
  }

  _loadData() async {
    _loading.value = false;
    try {
      var info = service.getUsers();
      list.addAll(await info);
    } catch (e) {
      print("Encountered error !");
      print(e);
    } finally {
      _loading.value = true;
    }
  }
}
