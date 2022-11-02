import 'package:apicrud/application/bloc/my_bloc.dart';
import 'package:apicrud/domain/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  TextEditingController productController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController stockController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {  BlocProvider.of<MyBloc>(context).add(MyEvent.read());});
    final size = MediaQuery.of(context).size;
    return BlocBuilder<MyBloc, MyState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .8,
                  child: ListView.builder(
                      itemCount: state.lModels.length,
                      shrinkWrap: true,
                      itemBuilder: ((context, index) => ListTile(
                        leading: Text(state.lModels[index].stocks.toString()),
                            trailing:IconButton(onPressed: (){
                          
                            }, icon: Icon(Icons.edit))
                                ,
                            title: Text(state.lModels[index].name ?? ""),
                            subtitle:
                                Text(state.lModels[index].price.toString()),
                          ))),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        child: Text("create"),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("create user"),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        TextField(
                                          controller: productController,
                                          decoration: InputDecoration(
                                              helperText: "Enter product name"),
                                        ),
                                        TextField(
                                          controller: priceController,
                                          decoration: InputDecoration(
                                              helperText:
                                                  "Enter product price"),
                                        ),
                                        TextField(
                                          controller: stockController,
                                          decoration: InputDecoration(
                                              helperText:
                                                  "Enter product stocks"),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ElevatedButton(
                                                onPressed: () {
                                                       Navigator.of(context).pop();
                                                },
                                                child: Text("cancel")),
                                            ElevatedButton(
                                                onPressed: () {
                                              
                                                  Models model=Models();
                                                  model.name = productController.text;
                                                model.photo='https//';
                                                  model.price =double.parse(priceController.text.toString()) ;
                                                  model.stocks =int.parse( stockController.text.toString() );
                                                  BlocProvider.of<MyBloc>(context).add(MyEvent.create(model: model));
                                                 Navigator.of(context).pop();
                                                },
                                                child: Text("submit")),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                      ),
                   
                  
                    ])
              ]),
            ),
          ),
        );
      },
    );
  }
}
