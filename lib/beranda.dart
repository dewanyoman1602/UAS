import  'package:flutter/material.dart'; 


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title:
Row(mainAxisAlignment:  MainAxisAlignment.center,  children:  <Widget>[ Text('Beranda'),
]),
actions:  <Widget>[ IconButton(
icon:  Icon(Icons.search), onPressed:  ()  {
print('Click  search');
},
),
IconButton(
icon:  Icon(Icons.notifications_active), onPressed:  ()  {
print('Click  start');
},
),
],
),
//widget  Drawer 
drawer:  new  Drawer(
//menggunakan  listView  agar  drawer  dapat  melebihi  width  devices 
child:  new  ListView(
children:  <Widget>[
//Drawer  Header  diisi  dengan  informasi  akun 
          RaisedButton(
            child: Text("Logout"),
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/MyHomePage');
            },
          ),
//Menu  Drawer 

],
),
),

      //seluruh body dibungkus column
      body: new Column(
        children:<Widget>[
    Image.asset("assets/appimages/beranda.jpg"),
    //setiap bagian body dipisahkan container
    Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(10),
      //untuk membuat tampilan secara horizontal maka digunakan row
      child: Row(
        children: [
          Expanded(
            child: Column(mainAxisAlignment:  MainAxisAlignment.center,
              crossAxisAlignment : CrossAxisAlignment.start,
              children: [
                Text(
                  'PENJUALAN HANDPHONE TERBAIK DI SINI',
                  style :TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'Discount sampai 15%!!!',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                
              ],
            ),
            ),
        //Icon(
          //Icons.inbox,
          //color: Colors.red[500],
        //),
        //Text('41'),
        ],
      ),
    ),
       //setiap bagian pada body dipisahkan container
       Container(
         padding: EdgeInsets.only(top:10, bottom:10),
         decoration: BoxDecoration(
           border: Border(
             bottom: BorderSide(color: Theme.of(context).dividerColor)),
             ),
        //untuk membuat tampilan secara horizontal maka gunkan row
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //untuk membuat tampilan secara vertikal maka digunakan column
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.info, color: Colors.blue),
                Container(
                  margin: const EdgeInsets.only(top:8),
                  child: Text(
                    "TENTANG",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight:FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
       
      
        ],
      ),
    ),
    ],),
    );
  }
}

