import 'package:ebook_app/providers/books_provider.dart';
import 'package:flutter/material.dart';

class PopularBooks extends StatelessWidget {
  const PopularBooks({
    Key? key,
    required this.books,
  }) : super(key: key);

  final BooksProvider books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .19,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Card(
              color: Colors.grey[900],
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, top: 8, bottom: 8, right: 4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        fit: BoxFit.cover,
                        'http://books.google.com/books/content?id=zYw3sYFtz9kC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
                        width: 110,
                        height: 120,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .4,
                        child: Text(
                          'books.booksList[index].title!',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        itemCount: books.booksList.length,
      ),
    );
  }
}
