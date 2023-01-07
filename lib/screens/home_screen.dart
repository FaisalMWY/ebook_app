import 'package:ebook_app/providers/books_provider.dart';
import 'package:ebook_app/screens/loading_screen.dart';
import 'package:ebook_app/widgets/app_bar_widget.dart';
import 'package:ebook_app/widgets/categories_widget.dart';
import 'package:ebook_app/widgets/popular_books.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isInit = true;
  bool isLoading = false;

  @override
  void didChangeDependencies() async {
    if (isInit) {
      setState(() {
        isLoading = true;
      });
    }
    final bp = Provider.of<BooksProvider>(context, listen: false);
    await bp.fetchBooks();
    setState(() {
      isLoading = false;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final books = Provider.of<BooksProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10),
        child: Column(
          children: [
            const AppBarWidget(),
            isLoading
                ? const Center(
                    child: Text('loading'),
                  )
                : PopularBooks(books: books),
            CategoriesWidget(),
          ],
        ),
      ),
    );
  }
}
