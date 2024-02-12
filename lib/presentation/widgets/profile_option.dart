import 'package:flutter/material.dart';

class ProfileOption extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final void Function() onTap;
  final Color? iconColor;

  const ProfileOption({
    super.key,
    required this.icon,
    this.iconColor,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: iconColor!.withOpacity(0.5)),
              padding: const EdgeInsets.all(8),
              child: Icon(
                icon,
                size: 20,
                color: iconColor,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              title!,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.black.withOpacity(0.6),
            )
          ],
        ),
      ),
    );
  }
}
