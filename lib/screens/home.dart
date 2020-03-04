import 'package:flutter/material.dart';
import 'package:zy/screens/calls_screen.dart';
import 'package:zy/screens/status_screen.dart';

import 'camera_screen.dart';
import 'chat_screen.dart';


class homeone extends StatefulWidget {
  @override
  _homeoneState createState() => _homeoneState();
}

class _homeoneState extends State<homeone> with SingleTickerProviderStateMixin{

  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =TabController(vsync: this,initialIndex: 1,length: 4);

  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.8,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[

            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text:"Chat",),
            Tab(text: "Status",),
            Tab(text: "Call",),
            

          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.more_vert),
          )
        ],
        
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[

          camera(),
          status(),
          calls(),

        ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff56ab2f),
          
          child: Icon(Icons.message,color: Colors.white,),
          onPressed: (){}
          ,
        ),
                
           
    );
  }
}