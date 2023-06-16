import 'package:book_app/src/utils/constants/routes.dart';
import 'package:book_app/src/view/screen/books/book_details_screen.dart';
import 'package:book_app/src/view/screen/books/books_favorited_screen.dart';
import 'package:book_app/src/view/screen/books/books_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const BooksScreen(),
          initialRoute: booksScreen,
          getPages: [
            GetPage(name: booksScreen, page: () => const BooksScreen()),
            GetPage(
                name: bookDetailsScreen, page: () => const BookDetailsScreen()),
            GetPage(name: booksFavoritedScreen, page: () => const BooksFavoritedScreen()),
          ],
        );
      },
    );
  }
}
