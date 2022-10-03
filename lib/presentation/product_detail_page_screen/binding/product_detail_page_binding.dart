import '../controller/product_detail_page_controller.dart';
import 'package:get/get.dart';

class ProductDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailPageController());
  }
}
