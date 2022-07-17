import 'package:buy_them_all/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AppSearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Macbook Air M2',
    'Mackbook Pro M1 Max',
    'Mac Studio M1 Ultra'
  ];

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
        appBarTheme: const AppBarTheme(
      color: Color.fromARGB(255, 15, 175, 172),
      toolbarTextStyle: TextStyle(
        color: Colors.white,
      ),
    ));
  }

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear),
        )
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
        child: TextWidget(
          text: query,
          color: Colors.black,
          textSize: 20,
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResults) {
      final result = searchResults.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
          },
        );
      },
    );
  }
}
