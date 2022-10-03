class GetTopicsResp {
  List<Topics>? topics;

  GetTopicsResp({this.topics});

  GetTopicsResp.fromJson(Map<String, dynamic> json) {
    if (json['topics'] != null) {
      topics = <Topics>[];
      json['topics'].forEach((v) {
        topics?.add(Topics.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.topics != null) {
      data['topics'] = this.topics?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Topics {
  int? id;
  String? name;
  String? slug;
  String? createdAt;
  String? description;
  String? followersCount;
  int? postsCount;
  String? updatedAt;
  String? image;
  bool? trending;

  Topics(
      {this.id,
      this.name,
      this.slug,
      this.createdAt,
      this.description,
      this.followersCount,
      this.postsCount,
      this.updatedAt,
      this.image,
      this.trending});

  Topics.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    createdAt = json['created_at'];
    description = json['description'];
    followersCount = displayFollowerCount (json['followers_count']);
    postsCount = json['posts_count'];
    updatedAt = json['updated_at'];
    image = json['image'];
    trending = json['trending'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.slug != null) {
      data['slug'] = this.slug;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.description != null) {
      data['description'] = this.description;
    }
    if (this.followersCount != null) {
      data['followers_count'] = this.followersCount;
    }
    if (this.postsCount != null) {
      data['posts_count'] = this.postsCount;
    }
    if (this.updatedAt != null) {
      data['updated_at'] = this.updatedAt;
    }
    if (this.image != null) {
      data['image'] = this.image;
    }
    if (this.trending != null) {
      data['trending'] = this.trending;
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


