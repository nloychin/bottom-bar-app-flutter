import 'package:flutter/material.dart';

import '../widgets/addbar_widget.dart';
import '../widgets/text_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AddBarWidget(title: '   Cart'),
    );
  }
}
