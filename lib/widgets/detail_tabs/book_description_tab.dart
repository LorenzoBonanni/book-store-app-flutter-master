import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';

class BookDescriptionTab extends StatelessWidget {
  const BookDescriptionTab({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        book.description,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      margin: const EdgeInsets.only(left: 28.0, right: 28.0, top: 24),
    );
  }
}
