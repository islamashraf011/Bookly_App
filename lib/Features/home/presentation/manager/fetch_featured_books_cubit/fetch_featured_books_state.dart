part of 'fetch_featured_books_cubit.dart';

sealed class FetchFeaturedBooksState extends Equatable {
  const FetchFeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FetchFeaturedBooksInitial extends FetchFeaturedBooksState {}

final class FetchFeaturedBooksLoadingState extends FetchFeaturedBooksState {}

final class FetchFeaturedBooksFailureState extends FetchFeaturedBooksState {
  final String errMessage;

  const FetchFeaturedBooksFailureState(this.errMessage);
}

final class FetchFeaturedBooksSuccessState extends FetchFeaturedBooksState {
  final List<BookModel> books;

  const FetchFeaturedBooksSuccessState(this.books);
}
