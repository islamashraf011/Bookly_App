import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

part 'fetch_newest_books_state.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(this.homeRepo) : super(FetchNewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(
      FetchNewestBooksLoadingState(),
    );

    var result = await homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(
          FetchNewestBooksFailureState(failure.errMessage),
        );
      },
      (books) {
        emit(
          FetchNewestBooksSuccessState(books),
        );
      },
    );
  }
}
