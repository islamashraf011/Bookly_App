import 'package:bookly_app/Core/utils/service_locator.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetch_similar_books_cubit/fetch_similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeView = '/HomeView';
  static const String bookDetailsView = '/BookDetailsView';
  static const String searchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', // Initial Route Called '/' >> Splash Screen
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => FetchSimilarBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
