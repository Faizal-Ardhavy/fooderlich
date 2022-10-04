import 'package:flutter/material.dart';

class Inherited extends InheritedWidget{
  final InheritedData appData;
  final Widget child;
  const Inherited(
      {Key? key, required this.appData, required this.child})
      : super(key: key, child: child);
  static Inherited? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<Inherited>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }
  

}
  class InheritedData{
    late bool isFavorite;

    InheritedData({required this.isFavorite});

    changeColor(){
      isFavorite = !isFavorite;
    }
    
  }