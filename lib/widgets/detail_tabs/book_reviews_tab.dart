import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';
import 'package:skeleton_app/themes/books_app_icons_icons.dart';
import 'package:skeleton_app/widgets/book_detail/book_detail_rating.dart';

class BookReviewsTab extends StatelessWidget {
  const BookReviewsTab({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: book.reviews.map(
                (r) => Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        r.title,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      ModifiedBookDetailRating(r.rating),
                      Container(
                        child: Text(
                          r.text,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        margin: const EdgeInsets.only(bottom: 8),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: CircleAvatar(
                                radius: 16,
                                backgroundImage:
                                    NetworkImage(r.authorProfileImage),
                              ),
                              margin: const EdgeInsets.only(right: 8),
                            ),
                            Text(
                              r.author,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(
                          top: 5.0,
                        ),
                      ),
                      Container(
                        child: Divider(
                          height: 1,
                        ),
                        margin: const EdgeInsets.only(
                          top: 24.0,
                          bottom: 24.0,
                        ),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 28.0, right: 28.0),
                ),
              )
              .toList(),
        ),
      ),
      margin: const EdgeInsets.only(
        top: 40.0,
      ),
    );
  }
}

class ModifiedBookDetailRating extends StatelessWidget {
  final int rating;

  ModifiedBookDetailRating(this.rating);

  List<Widget> _starsForRatings(BuildContext context) {
    List<Widget> stars = [];
    for (int i = 0; i < rating; i++) {
      stars.add(Padding(
        padding: const EdgeInsets.all(2.0),
        child: Icon(
          BooksAppIcons.star,
          size: 11,
          color: Theme.of(context).accentColor,
        ),
      ));
    }
    for (int i = rating; i < 5; i++) {
      stars.add(Icon(
        BooksAppIcons.star,
        size: 11,
        color: Theme.of(context).disabledColor,
      ));
    }
    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ..._starsForRatings(context),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "${rating.toStringAsFixed(1)}",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Theme.of(context).accentColor),
            ),
          ),
          Text(
            " / 5.0",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: Theme.of(context).disabledColor),
          )
        ],
      ),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
    );
  }
}
