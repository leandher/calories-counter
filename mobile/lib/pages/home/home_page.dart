import 'package:flutter/material.dart';
import 'package:mobile/app/components/food_list/food_list_widget.dart';
import 'package:mobile/models/food_model.dart';
import 'package:mobile/pages/home/circle_button.dart';
import 'package:mobile/pages/home/home_bloc.dart';
import 'package:mobile/pages/home/home_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Calories Counter"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = HomeModule.to.getBloc<HomeBloc>();
  String _searchText = "";
  bool _isTextEmpty = false;
  final int _page = 0;
  static TextEditingController filter = new TextEditingController();

  @override
  void initState() {
    bloc.getFoods(_searchText, _page);
    addListener();
    super.initState();
  }

  void addListener() {
    filter.addListener(() {
      setState(() {
        _searchText = filter.text;
        _isTextEmpty = filter.text.isEmpty;
      });
    });
  }

  void onSearch() {
    if (!_isTextEmpty) {
      bloc.getFoods(_searchText, _page);
    }
  }

  void clear() {
    filter.clear();
    bloc.clearFoods();
  }

  String validateSearchTerm(String searchTerm) {
    if (searchTerm.isEmpty) return 'This field must be filled';

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Theme.of(context).primaryColorDark),),
        backgroundColor: Colors.white,
      ),
      body: Container(
          margin: EdgeInsets.only(
            top: 10,
            left: 5,
            right: 5,
          ),
          child: StreamBuilder<ResponseFood>(
            stream: bloc.responseOut,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }
              if (snapshot.hasData) {
                var total = snapshot.data.total;
                return Column(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: TextFormField(
                            controller: filter,
                            decoration: InputDecoration(
                              errorText: validateSearchTerm(filter.text),
                              prefix: Padding(
                                padding: EdgeInsets.only(left: 10),
                              ),
                              suffix: IconButton(
                                icon: Icon(
                                  Icons.clear,
                                ),
                                onPressed: clear,
                              ),
                              suffixIcon: CicleButton(
                                onTap: onSearch,
                                icon: Icons.search,
                              ),
                              hintText: 'Search...',
                            ))),
                    Expanded(
                        flex: 1,
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Total: $total foods',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))),
                    Expanded(
                        flex: 8,
                        child: FoodListWidget(
                          foods: snapshot.data.data,
                        ))
                  ],
                );
              } else
                return Center(
                  child: CircularProgressIndicator(),
                );
            },
          )),
      resizeToAvoidBottomInset: false,
    );
  }
}
