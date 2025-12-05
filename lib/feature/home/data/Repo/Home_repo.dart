import 'package:booklyapp/core/failure.dart';
import 'package:booklyapp/feature/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}
