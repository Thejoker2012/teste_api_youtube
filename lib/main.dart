
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:teste_api_youtube/api.dart';
import 'package:teste_api_youtube/ui/Home.dart';
import 'blocs/favorite_bloc.dart';
import 'blocs/videos_bloc.dart';

void main(){

  Api api = Api();
  api.search("eletro");

  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VideosBloc(),
      child: BlocProvider(
          bloc: FavoriteBloc(),
          child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            home: Home(),
          ),)
    );
  }
}
