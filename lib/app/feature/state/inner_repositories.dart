import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRepositories extends StatelessWidget {
  const MyRepositories({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
      providers: [],
      child: child,
    );
}
