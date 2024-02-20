import 'package:flutter/material.dart';
import 'package:maharah_course_project/models/course_details_model.dart';
import 'package:maharah_course_project/models/most_taken_course_model.dart';
import 'package:maharah_course_project/router_app.dart';
import 'package:maharah_course_project/presentation/widgets/section_title.dart';

class VerticalListSectionCard extends StatelessWidget {
  const VerticalListSectionCard({
    super.key,
    required this.mostTakenCourseModels,
  });

  final List<MostTakenCourse> mostTakenCourseModels;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 32),
          child: SectionTitle(title: 'Most Taken'),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: List.generate(
              mostTakenCourseModels.length,
              (index) {
                final courseDetailsData = CourseDetailsModel(
                  description: mostTakenCourseModels[index].description,
                  id: mostTakenCourseModels[index].id,
                  image: mostTakenCourseModels[index].image,
                  name: mostTakenCourseModels[index].name,
                  price: mostTakenCourseModels[index].price,
                );
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        RouteGenerator.courseDetailsScreen,
                        arguments: courseDetailsData,
                      );
                    },
                    child: _DevCoursesCard(
                      imageCard: mostTakenCourseModels[index].image,
                      name: mostTakenCourseModels[index].name,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _DevCoursesCard extends StatelessWidget {
  const _DevCoursesCard({
    required this.imageCard,
    required this.name,
  });

  final String imageCard;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          imageCard,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(name),
    );
  }
}
