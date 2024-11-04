import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/home_repo.dart';

part 'fetch_similar_books_state.dart';

class FetchSimilarBooksCubit extends Cubit<FetchSimilarBooksState> {
  FetchSimilarBooksCubit(this.homeRepo) : super(FetchSimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(FetchSimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);

// Used Fold from Dartz Package to Handel (left / right) return
    result.fold(
      (failure) {
        emit(
          FetchSimilarBooksFailure(errMessage: failure.errMessage),
        );
      },
      (books) {
        emit(
          FetchSimilarBooksSuccess(books: books),
        );
      },
    );
  }
}