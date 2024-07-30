import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

//Return Type is Failures or List<BookModel>
abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
