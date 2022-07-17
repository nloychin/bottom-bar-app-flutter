import 'package:buy_them_all/widgets/search_widget.dart';
import 'package:buy_them_all/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AddBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AddBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: TextWidget(
        text: title,
        color: Colors.white,
        textSize: 23,
        isTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 15, 175, 172),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
        ),
      ),
      actions: [
        Visibility(
          visible: title == '   Home' ? true : false,
          child: IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: AppSearchDelegate(),
              );
            },
            icon: const Icon(
              Icons.search,
            ),
          ),
        ),
      ],
    );
  }
}
