import 'dart:convert';

import 'package:flutter_final/app/data/todo.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final todoList = <Todo>[].obs;
  var isLoading = true.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(
        Uri.parse(
          // api ที่ต้องการ
          'https://67ea33e034bcedd95f629044.mockapi.io/api/v1/projects',
        ),
      );
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body) as List;
        todoList.value = jsonData.map((e) => Todo.fromJson(e)).toList();
        print(todoList);
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }

  void increment() => count.value++;
}
