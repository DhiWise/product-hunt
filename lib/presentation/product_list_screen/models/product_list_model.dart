import 'package:get/get.dart';
import 'product_list_item_model.dart';

class ProductListModel {
  RxList<ProductListItemModel> productListItemList =
      RxList.filled(0, ProductListItemModel());
}
