import 'package:get/get.dart';
import 'leaderboard_today_item_model.dart';
import 'leaderboard_month_item_model.dart';
import 'leaderboard_year_item_model.dart';

class LeaderboardModel {
  RxList<LeaderboardTodayItemModel> leaderboardTodayItemList =
      RxList.filled(0, LeaderboardTodayItemModel());

  RxList<LeaderboardMonthItemModel> leaderboardMonthItemList =
      RxList.filled(0, LeaderboardMonthItemModel());

  RxList<LeaderboardYearItemModel> leaderboardYearItemList =
      RxList.filled(0, LeaderboardYearItemModel());
}
