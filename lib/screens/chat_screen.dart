import 'package:flutter/material.dart';
import 'package:zy/models/chat_model.dart';

class chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: dummydata.length,
      itemBuilder: (context,i)=>Column(
        children: <Widget>[
          Divider(
            height:10.0
          ),
          ListTile(
          leading: CircleAvatar(

            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(dummydata[i].avatarurl),

            
          


          ), 
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(dummydata[i].name,style: TextStyle(fontWeight: FontWeight.bold),)
              ,
              Text(dummydata[i].time,style:TextStyle(color:Colors.grey,),),
              
            ],
            
          ), 
          subtitle: Container(
            child:Text(dummydata[i].message,
            style:TextStyle(fontWeight: FontWeight.bold))
          ),
          )
        ],
      ),

      
    );
      
    
  }
}