class PostGraphqlResp {
  Data? data;

  PostGraphqlResp({this.data});

  PostGraphqlResp.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  Topics? topics;

  Data({this.topics});

  Data.fromJson(Map<String, dynamic> json) {
    topics = json['topics'] != null ? Topics.fromJson(json['topics']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.topics != null) {
      data['topics'] = this.topics?.toJson();
    }
    return data;
  }
}

class Topics {
  List<Nodes>? nodes;

  Topics({this.nodes});

  Topics.fromJson(Map<String, dynamic> json) {
    if (json['nodes'] != null) {
      nodes = <Nodes>[];
      json['nodes'].forEach((v) {
        nodes?.add(Nodes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.nodes != null) {
      data['nodes'] = this.nodes?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Nodes {
  String? id;
  String? name;
  String? followersCount;
  String? image;
  bool? isFollowing;
  int? postsCount;

  Nodes(
      {this.id,
      this.name,
      this.followersCount,
      this.image,
      this.isFollowing,
      this.postsCount});

  Nodes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    followersCount = displayFollowerCount(json['followersCount']);
    image = json['image'];
    isFollowing = json['isFollowing'];
    postsCount = json['postsCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.followersCount != null) {
      data['followersCount'] = this.followersCount;
    }
    if (this.image != null) {
      data['image'] = this.image;
    }
    if (this.isFollowing != null) {
      data['isFollowing'] = this.isFollowing;
    }
    if (this.postsCount != null) {
      data['postsCount'] = this.postsCount;
    }
    return data;
  }

displayFollowerCount(followers){
    String followerAsString = "";
    if(followers >= 1000){
      followerAsString = (followers /1000 ).toStringAsFixed(1) + "K Followers";
    }else{
      followerAsString = followers.toStringAsFixed(1) + " Followers";
    }
    return followerAsString;
  }
}
