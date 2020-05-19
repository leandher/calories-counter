import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:mobile/app/components/food_list/food_list_bloc.dart';
import 'package:mobile/app/app_module.dart';

void main() {
  initModule(AppModule());
  FoodListBloc bloc;

  // setUp(() {
  //     bloc = AppModule.to.bloc<FoodListBloc>();
  // });

  // group('FoodListBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<FoodListBloc>());
  //   });
  // });
}
