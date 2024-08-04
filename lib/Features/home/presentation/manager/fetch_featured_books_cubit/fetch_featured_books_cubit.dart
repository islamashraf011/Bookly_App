import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit(this.homeRepo) : super(FetchFeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FetchFeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();

// Used Fold from Dartz Package to Handel (left / right) return
    result.fold(
      (failure) {
        emit(
          FetchFeaturedBooksFailureState(failure.errMessage),
        );
      },
      (books) {
        emit(
          FetchFeaturedBooksSuccessState(books),
        );
      },
    );
  }
}
