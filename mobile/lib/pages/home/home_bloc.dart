import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:mobile/models/food_model.dart';
import 'package:mobile/pages/home/home_repository.dart';

class HomeBloc extends BlocBase {
  final HomeRepository repo;

  HomeBloc(this.repo);

  var listFood = BehaviorSubject<ResponseFood>();
  
  Sink<ResponseFood> get responseIn => listFood.sink;

  ValueStream<ResponseFood> get responseOut => listFood.stream;

  void getFoods(String keyword, int page, int rows) async {
    try {
      var res = await repo.getFoods(keyword, page, rows);
      responseIn.add(res);
    } catch (e) {
      listFood.addError(e);
    }
  }

  void clearFoods() {
    responseIn.add(new ResponseFood(page: 0, total: 0, data: []));
  }

  @override
  void dispose() {
    listFood.close();
    super.dispose();
  }
}
