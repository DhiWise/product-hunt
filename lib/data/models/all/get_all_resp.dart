class GetAllResp {
  List<Posts>? posts;

  GetAllResp({this.posts});

  GetAllResp.fromJson(Map<String, dynamic> json) {
    if (json['posts'] != null) {
      posts = <Posts>[];
      json['posts'].forEach((v) {
        posts?.add(Posts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.posts != null) {
      data['posts'] = this.posts?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Posts {
  int? commentsCount;
  int? id;
  String? name;
  String? productState;
  String? tagline;
  String? slug;
  int? votesCount;
  String? day;
  Null? categoryId;
  String? createdAt;
  CurrentUser? currentUser;
  String? discussionUrl;
  Null? exclusive;
  bool? featured;
  bool? iosFeaturedAt;
  bool? makerInside;
  List<Makers>? makers;
  List? platforms;
  String? redirectUrl;
  ScreenshotUrl? screenshotUrl;
  Thumbnail? thumbnail;
  List<Topics>? topics;
  User? user;

  Posts(
      {this.commentsCount,
      this.id,
      this.name,
      this.productState,
      this.tagline,
      this.slug,
      this.votesCount,
      this.day,
      this.categoryId,
      this.createdAt,
      this.currentUser,
      this.discussionUrl,
      this.exclusive,
      this.featured,
      this.iosFeaturedAt,
      this.makerInside,
      this.makers,
      this.platforms,
      this.redirectUrl,
      this.screenshotUrl,
      this.thumbnail,
      this.topics,
      this.user});

  Posts.fromJson(Map<String, dynamic> json) {
    commentsCount = json['comments_count'];
    id = json['id'];
    name = json['name'];
    productState = json['product_state'];
    tagline = json['tagline'];
    slug = json['slug'];
    votesCount = json['votes_count'];
    day = json['day'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    currentUser = json['current_user'] != null
        ? CurrentUser.fromJson(json['current_user'])
        : null;
    discussionUrl = json['discussion_url'];
    exclusive = json['exclusive'];
    featured = json['featured'];
    iosFeaturedAt = json['ios_featured_at'];
    makerInside = json['maker_inside'];
    if (json['makers'] != null) {
      makers = <Makers>[];
      json['makers'].forEach((v) {
        makers?.add(Makers.fromJson(v));
      });
    }
    if (json['platforms'] != null) {
      platforms = [];
      json['platforms'].forEach((v) {
        platforms?.add(v);
      });
    }
    redirectUrl = json['redirect_url'];
    screenshotUrl = json['screenshot_url'] != null
        ? ScreenshotUrl.fromJson(json['screenshot_url'])
        : null;
    thumbnail = json['thumbnail'] != null
        ? Thumbnail.fromJson(json['thumbnail'])
        : null;
    if (json['topics'] != null) {
      topics = <Topics>[];
      json['topics'].forEach((v) {
        topics?.add(Topics.fromJson(v));
      });
    }
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.commentsCount != null) {
      data['comments_count'] = this.commentsCount;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.productState != null) {
      data['product_state'] = this.productState;
    }
    if (this.tagline != null) {
      data['tagline'] = this.tagline;
    }
    if (this.slug != null) {
      data['slug'] = this.slug;
    }
    if (this.votesCount != null) {
      data['votes_count'] = this.votesCount;
    }
    if (this.day != null) {
      data['day'] = this.day;
    }
    if (this.categoryId != null) {
      data['category_id'] = this.categoryId;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.currentUser != null) {
      data['current_user'] = this.currentUser?.toJson();
    }
    if (this.discussionUrl != null) {
      data['discussion_url'] = this.discussionUrl;
    }
    if (this.exclusive != null) {
      data['exclusive'] = this.exclusive;
    }
    if (this.featured != null) {
      data['featured'] = this.featured;
    }
    if (this.iosFeaturedAt != null) {
      data['ios_featured_at'] = this.iosFeaturedAt;
    }
    if (this.makerInside != null) {
      data['maker_inside'] = this.makerInside;
    }
    if (this.makers != null) {
      data['makers'] = this.makers?.map((v) => v.toJson()).toList();
    }
    if (this.platforms != null) {
      data['platforms'] = this.platforms?.map((v) => v).toList();
    }
    if (this.redirectUrl != null) {
      data['redirect_url'] = this.redirectUrl;
    }
    if (this.screenshotUrl != null) {
      data['screenshot_url'] = this.screenshotUrl?.toJson();
    }
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail?.toJson();
    }
    if (this.topics != null) {
      data['topics'] = this.topics?.map((v) => v.toJson()).toList();
    }
    if (this.user != null) {
      data['user'] = this.user?.toJson();
    }
    return data;
  }
}

class CurrentUser {
  bool? votedForPost;
  bool? commentedOnPost;

  CurrentUser({this.votedForPost, this.commentedOnPost});

  CurrentUser.fromJson(Map<String, dynamic> json) {
    votedForPost = json['voted_for_post'];
    commentedOnPost = json['commented_on_post'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.votedForPost != null) {
      data['voted_for_post'] = this.votedForPost;
    }
    if (this.commentedOnPost != null) {
      data['commented_on_post'] = this.commentedOnPost;
    }
    return data;
  }
}

class Makers {
  int? id;
  String? createdAt;
  String? name;
  String? username;
  String? headline;
  String? twitterUsername;
  String? websiteUrl;
  String? profileUrl;
  ImageUrl? imageUrl;

  Makers(
      {this.id,
      this.createdAt,
      this.name,
      this.username,
      this.headline,
      this.twitterUsername,
      this.websiteUrl,
      this.profileUrl,
      this.imageUrl});

  Makers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    name = json['name'];
    username = json['username'];
    headline = json['headline'];
    twitterUsername = json['twitter_username'];
    websiteUrl = json['website_url'];
    profileUrl = json['profile_url'];
    imageUrl =
        json['image_url'] != null ? ImageUrl.fromJson(json['image_url']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.username != null) {
      data['username'] = this.username;
    }
    if (this.headline != null) {
      data['headline'] = this.headline;
    }
    if (this.twitterUsername != null) {
      data['twitter_username'] = this.twitterUsername;
    }
    if (this.websiteUrl != null) {
      data['website_url'] = this.websiteUrl;
    }
    if (this.profileUrl != null) {
      data['profile_url'] = this.profileUrl;
    }
    if (this.imageUrl != null) {
      data['image_url'] = this.imageUrl?.toJson();
    }
    return data;
  }
}

class ImageUrl {
  String? s30px;
  String? s32px;
  String? s40px;
  String? s44px;
  String? s48px;
  String? s50px;
  String? s60px;
  String? s64px;
  String? s73px;
  String? s80px;
  String? s88px;
  String? s96px;
  String? s100px;
  String? s110px;
  String? s120px;
  String? s132px;
  String? s146px;
  String? s160px;
  String? s176px;
  String? s220px;
  String? s264px;
  String? s32px2X;
  String? s40px2X;
  String? s44px2X;
  String? s88px2X;
  String? s32px3X;
  String? s40px3X;
  String? s44px3X;
  String? s88px3X;
  String? original;

  ImageUrl(
      {this.s30px,
      this.s32px,
      this.s40px,
      this.s44px,
      this.s48px,
      this.s50px,
      this.s60px,
      this.s64px,
      this.s73px,
      this.s80px,
      this.s88px,
      this.s96px,
      this.s100px,
      this.s110px,
      this.s120px,
      this.s132px,
      this.s146px,
      this.s160px,
      this.s176px,
      this.s220px,
      this.s264px,
      this.s32px2X,
      this.s40px2X,
      this.s44px2X,
      this.s88px2X,
      this.s32px3X,
      this.s40px3X,
      this.s44px3X,
      this.s88px3X,
      this.original});

  ImageUrl.fromJson(Map<String, dynamic> json) {
    s30px = json['30px'];
    s32px = json['32px'];
    s40px = json['40px'];
    s44px = json['44px'];
    s48px = json['48px'];
    s50px = json['50px'];
    s60px = json['60px'];
    s64px = json['64px'];
    s73px = json['73px'];
    s80px = json['80px'];
    s88px = json['88px'];
    s96px = json['96px'];
    s100px = json['100px'];
    s110px = json['110px'];
    s120px = json['120px'];
    s132px = json['132px'];
    s146px = json['146px'];
    s160px = json['160px'];
    s176px = json['176px'];
    s220px = json['220px'];
    s264px = json['264px'];
    s32px2X = json['32px@2X'];
    s40px2X = json['40px@2X'];
    s44px2X = json['44px@2X'];
    s88px2X = json['88px@2X'];
    s32px3X = json['32px@3X'];
    s40px3X = json['40px@3X'];
    s44px3X = json['44px@3X'];
    s88px3X = json['88px@3X'];
    original = json['original'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.s30px != null) {
      data['30px'] = this.s30px;
    }
    if (this.s32px != null) {
      data['32px'] = this.s32px;
    }
    if (this.s40px != null) {
      data['40px'] = this.s40px;
    }
    if (this.s44px != null) {
      data['44px'] = this.s44px;
    }
    if (this.s48px != null) {
      data['48px'] = this.s48px;
    }
    if (this.s50px != null) {
      data['50px'] = this.s50px;
    }
    if (this.s60px != null) {
      data['60px'] = this.s60px;
    }
    if (this.s64px != null) {
      data['64px'] = this.s64px;
    }
    if (this.s73px != null) {
      data['73px'] = this.s73px;
    }
    if (this.s80px != null) {
      data['80px'] = this.s80px;
    }
    if (this.s88px != null) {
      data['88px'] = this.s88px;
    }
    if (this.s96px != null) {
      data['96px'] = this.s96px;
    }
    if (this.s100px != null) {
      data['100px'] = this.s100px;
    }
    if (this.s110px != null) {
      data['110px'] = this.s110px;
    }
    if (this.s120px != null) {
      data['120px'] = this.s120px;
    }
    if (this.s132px != null) {
      data['132px'] = this.s132px;
    }
    if (this.s146px != null) {
      data['146px'] = this.s146px;
    }
    if (this.s160px != null) {
      data['160px'] = this.s160px;
    }
    if (this.s176px != null) {
      data['176px'] = this.s176px;
    }
    if (this.s220px != null) {
      data['220px'] = this.s220px;
    }
    if (this.s264px != null) {
      data['264px'] = this.s264px;
    }
    if (this.s32px2X != null) {
      data['32px@2X'] = this.s32px2X;
    }
    if (this.s40px2X != null) {
      data['40px@2X'] = this.s40px2X;
    }
    if (this.s44px2X != null) {
      data['44px@2X'] = this.s44px2X;
    }
    if (this.s88px2X != null) {
      data['88px@2X'] = this.s88px2X;
    }
    if (this.s32px3X != null) {
      data['32px@3X'] = this.s32px3X;
    }
    if (this.s40px3X != null) {
      data['40px@3X'] = this.s40px3X;
    }
    if (this.s44px3X != null) {
      data['44px@3X'] = this.s44px3X;
    }
    if (this.s88px3X != null) {
      data['88px@3X'] = this.s88px3X;
    }
    if (this.original != null) {
      data['original'] = this.original;
    }
    return data;
  }
}

class ScreenshotUrl {
  String? s300px;
  String? s850px;

  ScreenshotUrl({this.s300px, this.s850px});

  ScreenshotUrl.fromJson(Map<String, dynamic> json) {
    s300px = json['300px'];
    s850px = json['850px'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.s300px != null) {
      data['300px'] = this.s300px;
    }
    if (this.s850px != null) {
      data['850px'] = this.s850px;
    }
    return data;
  }
}

class Thumbnail {
  String? id;
  String? mediaType;
  String? imageUrl;
  Metadata? metadata;

  Thumbnail({this.id, this.mediaType, this.imageUrl, this.metadata});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mediaType = json['media_type'];
    imageUrl = json['image_url'];
    metadata =
        json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.mediaType != null) {
      data['media_type'] = this.mediaType;
    }
    if (this.imageUrl != null) {
      data['image_url'] = this.imageUrl;
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata?.toJson();
    }
    return data;
  }
}

class Metadata {
  Table? table;

  Metadata({this.table});

  Metadata.fromJson(Map<String, dynamic> json) {
    table = json['table'] != null ? Table.fromJson(json['table']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.table != null) {
      data['table'] = this.table?.toJson();
    }
    return data;
  }
}

class Table {
  Null? url;
  Null? kindleAsin;
  Null? videoId;
  Null? platform;

  Table({this.url, this.kindleAsin, this.videoId, this.platform});

  Table.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    kindleAsin = json['kindle_asin'];
    videoId = json['video_id'];
    platform = json['platform'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.kindleAsin != null) {
      data['kindle_asin'] = this.kindleAsin;
    }
    if (this.videoId != null) {
      data['video_id'] = this.videoId;
    }
    if (this.platform != null) {
      data['platform'] = this.platform;
    }
    return data;
  }
}

class Topics {
  int? id;
  String? name;
  String? slug;

  Topics({this.id, this.name, this.slug});

  Topics.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
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
    return data;
  }
}

class User {
  int? id;
  String? createdAt;
  String? name;
  String? username;
  String? headline;
  String? twitterUsername;
  String? websiteUrl;
  String? profileUrl;
  ImageUrl? imageUrl;

  User(
      {this.id,
      this.createdAt,
      this.name,
      this.username,
      this.headline,
      this.twitterUsername,
      this.websiteUrl,
      this.profileUrl,
      this.imageUrl});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    name = json['name'];
    username = json['username'];
    headline = json['headline'];
    twitterUsername = json['twitter_username'];
    websiteUrl = json['website_url'];
    profileUrl = json['profile_url'];
    imageUrl =
        json['image_url'] != null ? ImageUrl.fromJson(json['image_url']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.username != null) {
      data['username'] = this.username;
    }
    if (this.headline != null) {
      data['headline'] = this.headline;
    }
    if (this.twitterUsername != null) {
      data['twitter_username'] = this.twitterUsername;
    }
    if (this.websiteUrl != null) {
      data['website_url'] = this.websiteUrl;
    }
    if (this.profileUrl != null) {
      data['profile_url'] = this.profileUrl;
    }
    if (this.imageUrl != null) {
      data['image_url'] = this.imageUrl?.toJson();
    }
    return data;
  }
}
