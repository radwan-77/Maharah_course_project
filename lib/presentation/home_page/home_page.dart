import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      child: Text(
                        "Abdulraheem kshinba",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(120),
                    child: Image.asset(
                      "assets/images/profile_image.webp",
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CourseTitles(
            title: 'Trending',
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) => const SizedBox(
                child: _DevCoursesCard(
                  imageCard: 'assets/images/background.jpg',
                  name: 'Chat any thing',
                  icon: 'assets/images/html-5.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CourseTitles extends StatelessWidget {
  const CourseTitles({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          Text(
            "See all",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}

class _DevCoursesCard extends StatelessWidget {
  const _DevCoursesCard({
    required this.imageCard,
    required this.name,
    required this.icon,
  });

  final String imageCard;
  final String name;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(24),
      child: Card(
        margin: EdgeInsets.zero,
        color: theme.colorScheme.onBackground,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  imageCard,
                  width: MediaQuery.of(context).size.width / 2,
                  height: 100,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey.shade200,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 24) +
                          const EdgeInsets.only(top: 8),
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            PositionedDirectional(
              start: 16,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Center(
                  child: Image.asset(
                    icon,
                    width: 36,
                    height: 36,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
