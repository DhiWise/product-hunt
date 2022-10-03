import '../controller/topics_controller.dart';
import 'package:get/get.dart';

class TopicsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopicsController());
  }
}
