import 'package:booklyapp/core/failure.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/feature/home/data/Repo/Home_repo.dart';
import 'package:booklyapp/feature/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiservice;

  HomeRepoImpl(this.apiservice);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiservice.get(
        endPoint:
            'volumes?q=subject:Computer Science&filtering=free_ebooks&Sorting=newest',
      );
      List<BookModel> Books = [];
      for (var book in data['items']) {
        Books.add(BookModel.fromJson(book));
      }
      return right(Books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiservice.get(
        endPoint: 'volumes?q=subject:Programming&filtering=free_ebooks',
      );
      List<BookModel> Books = [];
      for (var book in data['items']) {
        Books.add(BookModel.fromJson(book));
      }
      return right(Books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> FetchReleventBook({
    required String categorie,
  }) async {
    try {
      var data = await apiservice.get(
        endPoint:
            'volumes?q=subject:Programming&filtering=free_ebooks&Sorting=relevance',
      );
      List<BookModel> Books = [];
      for (var book in data['items']) {
        Books.add(BookModel.fromJson(book));
      }
      return right(Books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
