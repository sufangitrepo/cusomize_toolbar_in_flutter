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
      drawer: Drawer(),
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
      color: Colors.white30,
      child: LayoutBuilder(builder: (BuildContext context , BoxConstraints constraint ){
        return Row(children: [
            SizedBox(width: constraint.maxWidth*.05,
            height: constraint.maxHeight, child: IconButton(onPressed: (){Scaffold.of(context).openDrawer();},
             icon: Icon(Icons.menu,color: Colors.blueAccent,)) ,),
            SizedBox(width: constraint.maxWidth*.8,child: Align(alignment: Alignment.centerLeft,
            child: Text("MyFlutter App",style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w200),),),),
            SizedBox(width: constraint.maxWidth*.05,
            child: IconButton(onPressed: (){Scaffold.of(context).openDrawer();},
            icon: Icon(Icons.menu,color: Colors.blueAccent,)),),
            SizedBox(width: constraint.maxWidth*.05,child: IconButton(onPressed: (){Scaffold.of(context).openDrawer();},
            icon: Icon(Icons.menu,color: Colors.blueAccent,)),),                  
            SizedBox(width: constraint.maxWidth*.05,child: IconButton(onPressed: (){Scaffold.of(context).openDrawer();},
            icon: Icon(Icons.menu,color: Colors.blueAccent,)),), 
      ],);
      })
    );
  }
  @override
  Widget get child {return _child;}

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}