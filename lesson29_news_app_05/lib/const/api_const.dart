class ApiConst {
  static const apiKey = 'a781b9d687684df59469c164b5f36bec';
  static const newsImage =
      'https://imgix.bustle.com/uploads/image/2022/6/2/47bd6bd0-5bdb-4e64-b597-19783c8ba0d7-untitled-design-39.png?w=757&fit=crop&crop=faces&auto=format%2Ccompress';
  static String topNews([String? domain]) =>
      'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';
}
