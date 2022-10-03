import '../controller/topic_product_list_controller.dart';
import 'package:get/get.dart';

class TopicProductListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopicProductListController());
  }
}
