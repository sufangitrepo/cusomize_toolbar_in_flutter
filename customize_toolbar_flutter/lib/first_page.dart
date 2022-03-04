import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(Text('hello world')),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
         (BuildContext context,int index){
               return ListTile(
                    leading: CircleAvatar(child: Container(color: Colors.white24,),),
                    title: Center(child: Text('index')),

               );
         },
         childCount: 500
      )),
    );
  }
}



//All Constants are resides in constant.dart file

class MyAppBar extends StatelessWidget implements PreferredSize{
    final Widget _child;

    MyAppBar(this._child,{Key? key}):super(key:key);
    @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(child: child,),
    );
  }

  @override
  Widget get child {return _child;}

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}