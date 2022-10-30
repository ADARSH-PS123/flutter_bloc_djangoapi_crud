import 'package:apicrud/application/bloc/my_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<MyBloc, MyState>(
      builder: (context, state) {
        
        return Scaffold(
          body: SafeArea(
            child: Column(children: [
              SizedBox(
                  width: double.infinity,
                  height: size.height * .85,
                  child:ListView.builder(itemCount: state.lModels.length,
                    itemBuilder: ((context, index) => ListTile(trailing: Text(state.lModels[index].stocks.toString()),
                      title: Text(state.lModels[index].name??""),subtitle: Text(state.lModels[index].price.toString()),
                    )))),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green)),
                          child: Text("create"),
                          onPressed: () {},
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.yellow)),
                          child: Text("read"),
                          onPressed: () {
                            BlocProvider.of<MyBloc>(context).add(MyEvent.read());
                          },
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                          child: Text("update"),
                          onPressed: () {},
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red)),
                          child: Text("delete"),
                          onPressed: () {},
                        )
                      ]),
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
