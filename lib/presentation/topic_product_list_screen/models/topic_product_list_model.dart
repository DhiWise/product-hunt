import 'package:get/get.dart';
import 'topic_product_list_item_model.dart';

class TopicProductListModel {
  RxList<TopicProductListItemModel> topicProductListItemList =
      RxList.filled(0, TopicProductListItemModel());
}
