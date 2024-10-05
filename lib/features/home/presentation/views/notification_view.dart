import 'package:flutter/material.dart';
import 'package:nasa_farmers/features/home/presentation/widgets/notification_view_body.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: NotificationViewBody()),
    );
  }
}
