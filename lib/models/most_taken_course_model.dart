class MostTakenCourse {
  const MostTakenCourse({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
    required this.id,
  });

  final String image;
  final String name;
  final double price;
  final String description;
  final int id;
}

abstract class MostTakenCourseInfo {
  static const mostTakenCourses = [
    MostTakenCourse(
      id: 1,
      name: "UI/UX Visual Design",
      price: 300.0,
      description: "HTML, which stands for HyperText Markup Language",
      image: 'assets/image/design-course.jpg',
    ),
    MostTakenCourse(
      id: 2,
      name: "Photography Basics - 101",
      price: 400.0,
      description: 'JavaScript is a powerful, high-level,',
      image: 'assets/image/photography.jpeg',
    ),
    MostTakenCourse(
      id: 3,
      name: "Basics of Logical Thinking",
      price: 500.0,
      description: "Java is a widely-used, object-oriented programming",
      image: 'assets/image/tech-course.jpg',
    ),
    MostTakenCourse(
      id: 4,
      name: "Programming Basics",
      price: 300.0,
      description: "HTML, which stands for HyperText Markup Language",
      image: 'assets/image/man-tech-course.jpg',
    ),
  ];
}
