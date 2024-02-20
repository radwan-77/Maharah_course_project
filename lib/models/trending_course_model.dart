class TrendingCourse {
  const TrendingCourse(
      {required this.name,
      required this.icon,
      required this.image,
      required this.price,
      required this.description,
      required this.id});

  final String name;
  final String icon;
  final String image;
  final double price;
  final String description;
  final int id;
}

abstract class TrendingCourseInfo {
  static const trendingCourses = [
    TrendingCourse(
      name: 'Chat with the Smarteset Ai now',
      image: 'assets/image/images.jpeg',
      icon: 'assets/image/css-3.png',
      description: 'HTML, which stands for HyperText Markup Language,',
      price: 100.0,
      id: 1,
    ),
    TrendingCourse(
      name: 'HTML welcome from',
      image: 'assets/image/images1.jpeg',
      icon: 'assets/image/html-5.png',
      description: 'JavaScript is a powerful, high-level,',
      price: 200.0,
      id: 2,
    ),
    TrendingCourse(
      name: 'JavaScripts',
      image: 'assets/image/images2.jpeg',
      icon: 'assets/image/java.png',
      description: 'Java is a widely-used, object-oriented programming',
      price: 300.0,
      id: 3,
    ),
    TrendingCourse(
      name: 'Python',
      image: 'assets/image/images.jpeg',
      icon: 'assets/image/python.png',
      description: 'CSS, which stands for Cascading Style Sheets',
      price: 400.0,
      id: 4,
    ),
  ];


}
