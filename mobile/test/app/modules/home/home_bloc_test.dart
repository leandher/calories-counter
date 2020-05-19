import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:mobile/pages/home/home_bloc.dart';
import 'package:mobile/pages/home/home_module.dart';


void main() {
  initModule(HomeModule());
  HomeBloc bloc;

  // setUp(() {
  //     bloc = HomeModule.to.bloc<HomeBloc>();
  // });

  // group('HomeBloc Test', () {
  //   test("First Test", () {
  //     expect(bloc, isInstanceOf<HomeBloc>());
  //   });
  // });
}
