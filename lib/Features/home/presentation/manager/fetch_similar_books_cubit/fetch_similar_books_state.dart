part of 'fetch_similar_books_cubit.dart';

sealed class FetchSimilarBooksState extends Equatable {
  const FetchSimilarBooksState();

  @override
  List<Object> get props => [];
}

final class FetchSimilarBooksInitial extends FetchSimilarBooksState {}

final class FetchSimilarBooksFailure extends FetchSimilarBooksState {
  final String errMessage;

  const FetchSimilarBooksFailure({required this.errMessage});
}

final class FetchSimilarBooksLoading extends FetchSimilarBooksState {}

final class FetchSimilarBooksSuccess extends FetchSimilarBooksState {
  final List<BookModel> books;

  const FetchSimilarBooksSuccess({required this.books});
}
