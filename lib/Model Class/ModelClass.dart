class DataApp {
  final String title;
  final String category;
  final String mainImage;
  final List<String> extraImages;
  final String link;
  DataApp({
    required this.mainImage,
    required this.title,
    required this.category,
    required this.extraImages,
    required this.link,
  });
}

List<DataApp> appslist = [
  DataApp(
      mainImage:
          'https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg',
      title: 'Call of Duty Mobile',
      category: 'Shooting Game',
      extraImages: [
        "https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg",
        "https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg",
        "https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg",
        "https://upload.wikimedia.org/wikipedia/en/8/87/Call_of_Duty_Infinite_Warfare_cover.jpg",
      ],
      link: 'h'),
  DataApp(
      mainImage:
          'https://is1-ssl.mzstatic.com/image/thumb/PurpleSource211/v4/7a/c5/3b/7ac53b88-9170-d63a-7a5c-761c10cff1b3/_U002fdata_U002fapp-store-connect-assets_U002fscreenshots_U002fen-US_U002f1_IPAD_PRO_3GEN_129.jpg/643x0w.jpg',
      title: 'Subway Surfers',
      category: 'Casual',
      extraImages: ['hgvg', 'fg', 'gdg', 'dgdg'],
      link: 'dgd'),
  DataApp(
      mainImage:
          "https://d13ms5efar3wc5.cloudfront.net/eyJidWNrZXQiOiJpbWFnZXMtY2Fycnkxc3QtcHJvZHVjdHMiLCJrZXkiOiIzNjkzNmJjOC1lODE0LTQxYWEtOTQyOC1kYzhhZTQ0MjEwNmMucG5nLndlYnAiLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjEyMDB9fSwid2VicCI6eyJxdWFsaXR5Ijo3NX19",
      title: 'Clash Royale',
      category: 'Strategy',
      extraImages: ["f", "f", "F", 'f'],
      link: "f")
];
