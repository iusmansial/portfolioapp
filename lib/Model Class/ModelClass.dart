class DataApp {
  final String title;
  final String category;
  final String mainImage;
  final String description;
  final List<String> extraImages;
  final String link;
  DataApp({
    required this.mainImage,
    required this.title,
    required this.category,
    required this.description,
    required this.extraImages,
    required this.link,
  });
}

List<DataApp> appslist = [
  DataApp(
      mainImage:
          'https://res.cloudinary.com/dkzn9hiks/image/upload/c_pad,w_304,h_304,ar_1:1/v1744425965/file_00000000dc106230bd7be596bd3ed8a6_conversation_id_67f9d2b6-fbb0-8011-939d-92c0566205b0_message_id_2645774e-d2ae-4351-865d-7507e3853bdc_ovuawe.png',
      title: 'Jokes App',
      category: 'Fun',
      description:
          'Laugh anytime with our one-click jokes app! Instantly get a random joke from categories like dad jokes, dark humor, puns, and more. Fresh laughs in every tap.',
      extraImages: [
        'https://res.cloudinary.com/dkzn9hiks/image/upload/v1744498892/1744498642479_jlqwef.jpg',
        'https://res.cloudinary.com/dkzn9hiks/image/upload/v1744498875/1744498799945_cxqfgh.jpg',
      ],
      link:
          'https://drive.google.com/file/d/1nAfR2bdDoPeU8v8xZx7mZSbWquI-UKWL/view?usp=sharing'),
  DataApp(
      mainImage:
          'https://res.cloudinary.com/dkzn9hiks/image/upload/v1744511687/Flux_Dev_Create_a_visually_striking_display_picture_for_the_Tr_3_ujxixk.jpg',
      title: 'Truth and Dare',
      category: 'Fun',
      description:
          'Unleash the fun with our Truth or Dare app — perfect for parties or chilling with friends. Play online with friends anytime, anywhere — no need to be in the same room! Spice things up with bold dares and unexpected truths tailored for every vibe.',
      extraImages: [
        'https://res.cloudinary.com/dkzn9hiks/image/upload/v1744510897/1744510674400_e9i9mh.jpg',
        'https://res.cloudinary.com/dkzn9hiks/image/upload/v1744510898/1744510716114_szbb5w.jpg',
        'https://res.cloudinary.com/dkzn9hiks/image/upload/v1744510898/1744510754691_tu06oz.jpg'
      ],
      link: 'https://truthndare.web.app/')
];
