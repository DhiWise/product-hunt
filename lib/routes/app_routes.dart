import 'package:product_hunt/presentation/product_list_screen/product_list_screen.dart';
import 'package:product_hunt/presentation/product_list_screen/binding/product_list_binding.dart';
import 'package:product_hunt/presentation/product_detail_page_screen/product_detail_page_screen.dart';
import 'package:product_hunt/presentation/product_detail_page_screen/binding/product_detail_page_binding.dart';
import 'package:product_hunt/presentation/topics_screen/topics_screen.dart';
import 'package:product_hunt/presentation/topics_screen/binding/topics_binding.dart';
import 'package:product_hunt/presentation/topics_list_with_searching_screen/topics_list_with_searching_screen.dart';
import 'package:product_hunt/presentation/topics_list_with_searching_screen/binding/topics_list_with_searching_binding.dart';
import 'package:product_hunt/presentation/leaderboard_screen/leaderboard_screen.dart';
import 'package:product_hunt/presentation/leaderboard_screen/binding/leaderboard_binding.dart';
import 'package:product_hunt/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:product_hunt/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:product_hunt/presentation/topic_product_list_screen/topic_product_list_screen.dart';
import 'package:product_hunt/presentation/topic_product_list_screen/binding/topic_product_list_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String productListScreen = '/product_list_screen';

  static String productDetailPageScreen = '/product_detail_page_screen';

  static String topicsScreen = '/topics_screen';

  static String topicsListWithSearchingScreen =
      '/topics_list_with_searching_screen';

  static String leaderboardScreen = '/leaderboard_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static String topicProductListScreen = '/topic_product_list_screen';

  static List<GetPage> pages = [
    GetPage(
      name: productListScreen,
      page: () => ProductListScreen(),
      bindings: [
        ProductListBinding(),
      ],
    ),
    GetPage(
      name: productDetailPageScreen,
      page: () => ProductDetailPageScreen(),
      bindings: [
        ProductDetailPageBinding(),
      ],
    ),
    GetPage(
      name: topicsScreen,
      page: () => TopicsScreen(),
      bindings: [
        TopicsBinding(),
      ],
    ),
    GetPage(
      name: topicsListWithSearchingScreen,
      page: () => TopicsListWithSearchingScreen(),
      bindings: [
        TopicsListWithSearchingBinding(),
      ],
    ),
    GetPage(
      name: leaderboardScreen,
      page: () => LeaderboardScreen(),
      bindings: [
        LeaderboardBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => ProductListScreen(),
      bindings: [
        ProductListBinding(),
      ],
    ),
    GetPage(
      name: topicProductListScreen,
      page: () => TopicProductListScreen(),
      bindings: [
        TopicProductListBinding(),
      ],
    ),
  ];
}
