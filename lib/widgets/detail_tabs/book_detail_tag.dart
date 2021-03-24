import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';
import 'package:skeleton_app/themes/books_app_icons_icons.dart';

class BookDetailTabWidget extends StatelessWidget {
  const BookDetailTabWidget({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: ListTile.divideTiles(
            context: context,
            tiles: [
              ListTile(
                title: Text(
                  "Editore:",
                  style: Theme.of(context).textTheme.caption,
                ),
                subtitle: Text(
                  book.publisher,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              ListTile(
                title: Text(
                  "Lingua:",
                  style: Theme.of(context).textTheme.caption,
                ),
                subtitle: Text(
                  book.language,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              ListTile(
                title: Text(
                  "ISBN-10:",
                  style: Theme.of(context).textTheme.caption,
                ),
                subtitle: Text(
                  book.isbn10,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              ListTile(
                title: Text(
                  "ISBN-13:",
                  style: Theme.of(context).textTheme.caption,
                ),
                subtitle: Text(
                  book.isbn13,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              ListTile(
                title: Text(
                  "Peso articolo:",
                  style: Theme.of(context).textTheme.caption,
                ),
                subtitle: Text(
                  book.weight.toString() + " g",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              ListTile(
                title: Text(
                  "Posizione nella classifica:",
                  style: Theme.of(context).textTheme.caption,
                ),
                subtitle: Text(
                  "n. " + book.position.toString() + " in Libri più popolari",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ).toList(),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Color.fromRGBO(237, 237, 239, 100)),
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.only(left: 31.0, right: 30.0, top: 24),
    );
  }
}
