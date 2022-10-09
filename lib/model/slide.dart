

class Slide {
  final String imageUrl;
  final String title;

  Slide({
    required this.imageUrl,
    required this.title,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/page1.jpg',
    title: 'Click a picture from camera or upload an existing photo from your gallery.',

  ),
  Slide(
    imageUrl: 'assets/page2.png',
    title: 'The application will check the skin lesions using image detection.',

  ),
  Slide(
    imageUrl: 'assets/page3.jpg',
    title: 'You will get result on the E-Mail ID provided during registration.',
  ),
];