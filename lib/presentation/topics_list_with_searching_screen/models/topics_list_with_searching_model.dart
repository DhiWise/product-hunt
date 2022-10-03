import 'package:get/get.dart';
import 'topics_list_with_searching_item_model.dart';


class TopicsListWithSearchingModel {
  RxList<TopicsListWithSearchingItemModel> topicsListWithSearchingItemList =
      RxList.filled(0, TopicsListWithSearchingItemModel());
}
