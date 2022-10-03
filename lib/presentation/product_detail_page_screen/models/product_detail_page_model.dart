import 'package:get/get.dart';
import 'package:product_hunt/data/models/postId/get_post_id_resp.dart';

class ProductDetailPageModel {
  Rx<String> rectangleFourImg = Rx('...');
  Rx<String> nimbusTxt = Rx('Lorem ipsum dolor sit amet');
  Rx<String> cloudbasedecoTxt = Rx('Lorem ipsum dolor sit amet');
  Rx<String> upvoteCounterTxt = Rx('00');
  Rx<String> imageOneImg = Rx('...');
  Rx<String> description = Rx('Lorem ipsum dolor sit amet');
  RxList<Topics> topics = RxList();
  RxList<Makers> makers = RxList();
  RxList<Comments> comments = RxList();
  RxList<Media> media = RxList();
}
