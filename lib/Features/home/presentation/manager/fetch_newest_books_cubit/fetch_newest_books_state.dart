part of 'fetch_newest_books_cubit.dart';

sealed class FetchNewestBooksState extends Equatable {
  const FetchNewestBooksState();

  @override
  List<Object> get props => [];
}

final class FetchNewestBooksInitial extends FetchNewestBooksState {}

final class FetchNewestBooksLoadingState extends FetchNewestBooksState {}

final class FetchNewestBooksFailureState extends FetchNewestBooksState {
  final String errMessage;

  const FetchNewestBooksFailureState(this.errMessage);
}

final class FetchNewestBooksSuccessState extends FetchNewestBooksState {
  final List<BookModel> books;

  const FetchNewestBooksSuccessState(this.books);
}
