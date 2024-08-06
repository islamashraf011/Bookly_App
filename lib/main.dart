import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/service_locator.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  serviceLocatorSetup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchFeaturedBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ),
        ),
        BlocProvider(
          create: (context) => FetchFeaturedBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: ThemeData(
            fontFamily: kPrimaryFont,
          ).primaryTextTheme,
        ),
      ),
    );
  }
}
