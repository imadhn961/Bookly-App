import 'package:booklyapp/core/failure.dart';
import 'package:booklyapp/feature/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
Future<Either<Failure , List<BookModel>>> search(String search);
}