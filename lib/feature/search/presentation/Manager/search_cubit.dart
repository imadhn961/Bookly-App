import 'package:bloc/bloc.dart';
import 'package:booklyapp/feature/search/data/repo/search_repo_implement.dart';
import '../../../home/data/models/Book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchImpl}) : super(SearchInitial());

  final searchRepoImpl searchImpl;

  Future<void> fetchsearchbooks(String search) async {
    emit(SearchLoading());
    var result  = await searchImpl.search(search);
    result.fold((l) => emit(SearchFailure(l.errMessage)), (r) => emit(SearchSuccess(r)),);
  }
}
