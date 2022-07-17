import 'package:flutter/material.dart';

import '../widgets/addbar_widget.dart';
import '../widgets/text_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AddBarWidget(title: '   Notification'),
    );
  }
}
