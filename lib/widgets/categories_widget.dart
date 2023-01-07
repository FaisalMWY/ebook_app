import 'package:ebook_app/providers/books_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  final List<String> categories = [
    'Refrence',
    'Business & economics',
    'art, modern',
    'History',
    'Law',
    'Computers',
    'ABI/INFORM',
    'Medical'
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    final bcp = Provider.of<BooksProvider>(context);
    return Container(
      margin: const EdgeInsets.only(right: 8),
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width * .9,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                        print('bcp.categoryBooks(Law)');
                        // print(categories[current]);
                        // print(filteredBooks.length);
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(
                          color: index == current
                              ? Colors.grey[800]
                              : Colors.grey[900],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              itemCount: categories.length,
            ),
          ),
          // Container(
          //   margin: const EdgeInsets.only(top: 30),
          //   height: MediaQuery.of(context).size.height * .57,
          //   width: double.infinity,
          //   child: GridView.builder(
          //     shrinkWrap: true,
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2),
          //     itemBuilder: (context, index) {
          //       return Center(
          //         child: Text(),
          //       );
          //     },
          //     itemCount: filteredBooks.length,
          // ),
          // ),
        ],
      ),
    );
  }
}
