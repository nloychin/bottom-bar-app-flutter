import 'package:buy_them_all/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cats_provider.dart';

class CatGridWidget extends StatelessWidget {
  const CatGridWidget({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    final catsProvider = Provider.of<CatsProvider>(context);
    List<Map<String, dynamic>> allCats = catsProvider.getCatIcons;
    return GridView.builder(
      physics: const ScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: allCats.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              IconButton(onPressed: () {}, icon: allCats[index]['icon']),
              TextWidget(
                text: allCats[index]['title'],
                color: Colors.black,
                textSize: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
