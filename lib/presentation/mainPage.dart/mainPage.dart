import 'package:apicrud/application/bloc/my_bloc.dart';
import 'package:apicrud/domain/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
   MainPage({Key? key}) : super(key: key);
 late TextEditingController productController ;
late  TextEditingController priceController ;
 late TextEditingController stockController;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {  BlocProvider.of<MyBloc>(context).add(MyEvent.read());});
   
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
                            trailing:SizedBox(
                              width: MediaQuery.of(context).size.width*.3,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(onPressed: (){
                                  

                       priceController=TextEditingController(text: state.lModels[index].price.toString());
                        stockController=TextEditingController(text: state.lModels[index].stocks.toString());
                         productController=TextEditingController(text: state.lModels[index].name.toString());
                        showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("update product"),
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
                                                  model.id=state.lModels[index].id;
                                                  model.name = productController.text;
                                                model.photo='https//';
                                                  model.price =double.parse(priceController.text.toString()) ;
                                                  model.stocks =int.parse( stockController.text.toString() );
                                                  BlocProvider.of<MyBloc>(context).add(MyEvent.update(model: model));
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
                                  }, icon: Icon(Icons.edit)),
                                      IconButton(onPressed: (){
                          BlocProvider.of<MyBloc>(context).add(MyEvent.delete(id: state.lModels[index].id!.toInt()));
                          BlocProvider.of<MyBloc>(context).add(MyEvent.read());
                                  }, icon: Icon(Icons.delete)),
                                ],
                              ),
                            )
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
                           priceController=TextEditingController(text: '');
                        stockController=TextEditingController(text:'');
                         productController=TextEditingController(text: '');
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
