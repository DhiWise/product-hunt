import 'package:get/get.dart';
import 'recent_topics_item_model.dart';
import 'most_followed_topics_item_model.dart';

class TopicsModel {
  RxList<RecentTopicsItemModel> recentTopicsItemList =
  RxList.filled(0, RecentTopicsItemModel());

  RxList<MostFollowedTopicsItemModel> mostFollowedTopicsItemList =
  RxList.filled(0, MostFollowedTopicsItemModel());
}
