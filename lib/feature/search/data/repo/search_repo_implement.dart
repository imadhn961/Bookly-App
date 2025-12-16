import 'package:booklyapp/core/failure.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/feature/home/data/models/Book_model.dart';
import 'package:booklyapp/feature/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class searchRepoImpl implements SearchRepo{
  final ApiService apiservice;

  searchRepoImpl(this.apiservice);


  @override
  Future<Either<Failure,List<BookModel>>> search(String search) async {
    try{
      var response = await apiservice.get(endPoint: 'volumes?q=subject:$search' );
      List<BookModel> books = [];
      for(var data in response['items']){
        books.add(BookModel.fromJson(data));
      }
      return right(books);
    }catch(e){
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }

  }
  
}