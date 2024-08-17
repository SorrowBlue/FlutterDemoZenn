class ZennTrend {
  final ZennProps props;

  const ZennTrend({
    required this.props,
  });

  factory ZennTrend.fromJson(Map<String, dynamic> json) {
    print("ZennTrend");
    return ZennTrend(
      props: ZennProps.fromJson(json['props'] as Map<String, dynamic>),
    );
  }
}

class ZennProps {
  final ZennPageProps pageProps;

  const ZennProps({
    required this.pageProps,
  });

  factory ZennProps.fromJson(Map<String, dynamic> json) {
    print("ZennProps");
    return ZennProps(
      pageProps: ZennPageProps.fromJson(json['pageProps'] as Map<String, dynamic>),
    );
  }
}


class ZennPageProps {
  final List<ZennArticle> dailyTechArticles;

  const ZennPageProps({
    required this.dailyTechArticles,
  });

  factory ZennPageProps.fromJson(Map<String, dynamic> json) {
    print("ZennPageProps");
    return ZennPageProps(
      dailyTechArticles: (json['dailyTechArticles'] as List<dynamic>).map((e) => ZennArticle.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }
}


class ZennArticle {
  final int id;
  final String postType;
  final String title;
  final String slug;
  final int commentsCount;
  final int likedCount;
  final int bodyLettersCount;
  final String articleType;
  final String emoji;
  final bool isSuspendingPrivate;
  final String publishedAt;
  final String bodyUpdatedAt;
  final String? sourceRepoUpdatedAt;
  final bool pinned;
  final String path;
  final ZennUser user;

  const ZennArticle({
    required this.id,
    required this.postType,
    required this.title,
    required this.slug,
    required this.commentsCount,
    required this.likedCount,
    required this.bodyLettersCount,
    required this.articleType,
    required this.emoji,
    required this.isSuspendingPrivate,
    required this.publishedAt,
    required this.bodyUpdatedAt,
    required this.sourceRepoUpdatedAt,
    required this.pinned,
    required this.path,
    required this.user,
  });

  factory ZennArticle.fromJson(Map<String, dynamic> json) {
    print(json);
    print("ZennArticle");
    return ZennArticle(
      id: json['id'] as int,
      postType: json['postType'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      commentsCount: json['commentsCount'] as int,
      likedCount: json['likedCount'] as int,
      bodyLettersCount: json['bodyLettersCount'] as int,
      articleType: json['articleType'] as String,
      emoji: json['emoji'] as String,
      isSuspendingPrivate: json['isSuspendingPrivate'] as bool,
      publishedAt: json['publishedAt'] as String,
      bodyUpdatedAt: json['bodyUpdatedAt'] as String,
      sourceRepoUpdatedAt: json['sourceRepoUpdatedAt'] as String?,
      pinned: json['pinned'] as bool,
      path: json['path'] as String,
      user: ZennUser.fromJson(json['user'] as Map<String, dynamic>)
    );
  }
}

class ZennUser {
  final int id;
  final String username;
  final String name;
  final String avatarSmallUrl;

  const ZennUser({
    required this.id,
    required this.username,
    required this.name,
    required this.avatarSmallUrl,
  });

  factory ZennUser.fromJson(Map<String, dynamic> json) {
    print("ZennUser");
    return ZennUser(
      id: json['id'] as int,
      username: json['username'] as String,
      name: json['name'] as String,
      avatarSmallUrl: json['avatarSmallUrl'] as String,
    );
  }

}
