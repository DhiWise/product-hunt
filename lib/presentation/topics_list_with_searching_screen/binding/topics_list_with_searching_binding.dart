import '../controller/topics_list_with_searching_controller.dart';
import 'package:get/get.dart';

class TopicsListWithSearchingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopicsListWithSearchingController());
  }
}
