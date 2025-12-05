import 'package:booklyapp/core/failure.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/feature/home/data/Repo/Home_repo.dart';
import 'package:booklyapp/feature/home/data/models/Book_model.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiservice;

  HomeRepoImpl(this.apiservice);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiservice.get(
        endPoint:
            'volumes?q=subject:Programming&filtering=free_ebooks&Sorting=newest',
      );
      List<BookModel> Books = [];
      for (var book in data['items']) {
        Books.add(BookModel.fromJson(book));
      }
      return right(Books);
    } catch (e) {
      return left(ServerFailure(""));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
