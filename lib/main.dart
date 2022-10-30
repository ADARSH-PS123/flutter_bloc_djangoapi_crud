import 'package:apicrud/application/bloc/my_bloc.dart';
import 'package:apicrud/domain/core/di.dart';
import 'package:apicrud/presentation/mainPage.dart/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
     providers: [BlocProvider(create: (BuildContext context)=>getIt<MyBloc>())],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MainPage()),
    );
  }
}
