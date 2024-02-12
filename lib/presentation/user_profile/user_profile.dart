import 'package:flutter/material.dart';

import 'bottom_section.dart';
import 'header_section.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
        centerTitle: true,
        backgroundColor: theme.colorScheme.background,
      ),
      backgroundColor: Colors.grey.shade200,
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderSection(),
            SizedBox(
              height: 24,
            ),
            BottomSection(),
          ],
        ),
      ),
    );
  }
}
