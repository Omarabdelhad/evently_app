class OnBoardingModel {
  final String imagePath;
  final String title;
  final String describtion;

  const OnBoardingModel({
    required this.imagePath,
    required this.title,
   required this.describtion,
  });
  static const List<OnBoardingModel> onBoardingModelList = [
    OnBoardingModel(
      imagePath: 'assets/images/on_boarding1.png',
      title: 'Find Events That Inspire You', describtion: 'Dive into a world of events crafted to fit your unique interests. Whether you\'re into live music, art workshops, professional networking, or simply discovering new experiences, we have something for everyone. Our curated recommendations will help you explore, connect, and make the most of every opportunity around you.',
    ),
    OnBoardingModel(
      imagePath: 'assets/images/on_boarding2.png',
      title: 'Effortless Event Planning',
      describtion: 'Take the hassle out of organizing events with our all-in-one planning tools. From setting up invites and managing RSVPs to scheduling reminders and coordinating details, we’ve got you covered. Plan with ease and focus on what matters – creating an unforgettable experience for you and your guests.',
    ),
    OnBoardingModel(
      imagePath: 'assets/images/on_boarding3.png',
      title: 'Connect with Friends & Share Moments',
      describtion: 'Make every event memorable by sharing the experience with others. Our platform lets you invite friends, keep everyone in the loop, and celebrate moments together. Capture and share the excitement with your network, so you can relive the highlights and cherish the memories.',
    ),
    
  ];
}
