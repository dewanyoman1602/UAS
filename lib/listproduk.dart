import  'package:flutter/material.dart';
//import  terlebih  dahulu  halaman  yang  diperlukan 
import  './detail_produk.dart';
//Top  Level/Root
void  main()  =>  runApp(MyApp());


class  MyApp  extends  StatelessWidget  {
@override

Widget  build(BuildContext  context)  {

return  MaterialApp(
title:  'First  App',

home:  MyHomePage(),
);
}
}

class  MyHomePage  extends  StatelessWidget  { @override
Widget  build(BuildContext  context)  {
return  Scaffold(

appBar:  AppBar(title:  Text("List Produk")),

body:  ListView(
shrinkWrap:  true,

padding:  const  EdgeInsets.fromLTRB(2.0,  10.0,  2.0,  10.0),

children:  <Widget>[

new  GestureDetector(

onTap:  ()  {

Navigator.of(context).push(new  MaterialPageRoute(

builder:  (BuildContext  context)  =>  DetailProduk(
name:  "Xiaomi Black Shark 2",
description:  "Xiaomi Black Shark 2 adalah ponsel gaming lainnya yang ada di daftar ini dan merupakan ponsel terbaik Xiaomi di seri Black Shark yang dikhususkan untuk bermain game. Dirilis pada bulan Maret 2019, Black Shark 2 ini dibangun dengan teknologi yang lebih mumpuni dibanding kedua pendahulunya.",
price:  11900000,
image:  "blakchark.jpg", star:  4,
),
));
},

child:  ProductBox(

name:  "Xiaomi Black Shark 2",
description:  "Xiaomi Black Shark 2 adalah....",
price:  11900000,
image:  "blakchark.jpg",),
),


new  GestureDetector( 
  onTap:  ()  {
Navigator.of(context).push(new  MaterialPageRoute( 
  builder:  (BuildContext  context)  =>  DetailProduk(
name:  "Realme X2 Pro",
description:  "Realme X2 Pro adalah salah satu HP terkuat di daftar ini. Bagaimana tidak, ponsel kelas atas Realme ini datang dengan parameter-parameter unggulan. Bagi sebagian orang, HP ini tergolong sangat layak untuk didapatkan karena menawarkan spesifikasi kelas atas dengan harga jual yang cukup bersaing. ",

price:  7000000,
image:  "realmex2pro.png", star:  4,
),
));
},
child:  ProductBox( 
name:  "Realme X2 Pro",
description:  "Realme X2 Pro...",
price:  7000000,
image:  "realmex2pro.png",)),



new  GestureDetector( 
  onTap:  ()  {
Navigator.of(context).push(
  new  MaterialPageRoute( 
    builder:  (BuildContext  context)  =>  DetailProduk(
name:  "Oppo Reno2",
description:  "HP ini mengusung kamera depan dengan mekanisme sirip hiu yang keren dan unik. Selain mampu menghasilkan bidikan yang berkualitas, pengalaman swafoto dengan kamera miliknya jadi terasa lebih menyenangkan. Secara keseluruhan, kualitas foto dan video yang dihasilkan kamera HP ini tergolong sangat baik dengan pengaturan kamera sangat fleksibel.Bagian dalam Oppo Reno2 ditenagai oleh chipset Snapdragon 730G yang performanya tergolong di atas rata-rata kelas mid-range. Beberapa sorotan lain yang ditawarkan oleh HP ini adalah tersedianya fitur NFC, panel depan dan belakang yang dilapisi Gorilla Glass, serta baterai yang tahan lama yang mendukung pengisian 20W.",

price:  5000000,
image:  "opporeno.jpg", star:  3,
),
));
},

child:  ProductBox( name:  "HP",
description:  "HP adalah...", price:  5000000,
image:  "opporeno.jpg",),
),


new  GestureDetector( onTap:  ()  {
Navigator.of(context).push(new  MaterialPageRoute( builder:  (BuildContext  context)  =>  DetailProduk(
name:  "Xiaomi Mi Note 10",
description:  "Xiaomi Mi Note 10 adalah versi yang sedikit lebih rendah dari Xiaomi Mi Note 10 Pro. Di luar perbedaan waktu rilis harga tentunya, kedua perangkat ini hanya memiliki dua perbedaan saja.Pertama, Xiaomi Mi Note 10 hadir dengan RAM 6 GB dan penyimpanan internal 128 GB, sedangkan versi Pro-nya menawawarkan RAM 8 GB dengan ROM 256 GB. Keduanya tidak dilengkapi dengan slot tambahan untuk microSD. Kedua, kamera utama Mi Note 10 terdiri dari tujuh lensa plastik (7P), sedangkan kamera utama Mi Note 10 Pro memiliki delapan lensa plastik (8P).",

price:  4567000,
image:  "xiominote.jpg", star:  3,
),
));
},
child:  ProductBox( 
name:  "Xiaomi Mi Note 10",
description:"Xiaomi Mi Note 10...",
price:  4567000,
image:  "xiominote.jpg",),
),


new  GestureDetector( onTap:  ()  {
Navigator.of(context).push(new  MaterialPageRoute( builder:  (BuildContext  context)  =>  DetailProduk(
name:  "Samsung Galaxy Note 10 Lite",
description:  "Samsung Galaxy Note 10 punya kelebihan sebagai sebuah ponsel untuk kebutuhan produktivitas. Hal ini karena ponsel ini menawarkan stylus pen yang jadi ciri khas Galaxy Note series. Selain itu, ponsel ini juga punya layar yang oke dan juga sokongan baterai yang bisa diandalkan..",
price:  8000000,
image:  "samsungnote10.jpg", star:  5,
),
));
},

child:  ProductBox( name:  "Samsung Galaxy Note 10 Lite",
description:  "Samsung Galaxy Note 10...",
price:  8000000,
image:  "samsungnote10.jpg",
),	),
],
));
}}

//menggunakan  widget  StatelessWidget
class  ProductBox  extends  StatelessWidget  {
//deklarasi  variabel  yang  diterima  dari  MyHomePage
ProductBox({Key  key,  this.name,  this.description,  this.price,  this.image})
:  super(key:  key);
//menampung  variabel  yang  diterima  untuk  dapat  digunakan  pada  class  ini
final  String  name;
final  String  description; 
final  int  price;
final  String  image;

Widget  build(BuildContext  context)  {
//menggunakan  widget  container 
return  Container(
//padding
      padding:  EdgeInsets.all(2),
      //  height:  120,
      //menggunakan  widget  card 
      child:  Card(
      //membuat  tampilan  secara  horisontal  antar  image  dan  deskripsi 
      child:  Row(mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
      //children  digunakan  untuk  menampung  banyak  widget 
      children:  <Widget>[
      Image.asset( "assets/appimages/"  +  image, width:  150,
      ),
      Expanded(
      //child  digunakan  untuk  menampung  satu  widget 
      child:  Container(
      padding:  EdgeInsets.all(5),
      //membuat  tampilan  secara  vertikal 
      child:  Column(
      mainAxisAlignment:  MainAxisAlignment.start,
      //ini  isi  tampilan  vertikal  tersebut 
      children:  <Widget>[
      //menampilkan  variabel  menggunakan  widget  text 
      Text(this.name,
      style:  TextStyle(fontWeight:  FontWeight.bold,)), Text(this.description),
      Text(
      "Price:  "  +  this.price.toString(), style:  TextStyle(color:  Colors.red),
      ),
      //menampilkan  widget  icon    dibungkus  dengan  row 
      Row(
      children:  <Widget>[ Row(
      children:  <Widget>[
      Icon(Icons.star,  size:  10,  color:  Colors.deepOrange,),
      Icon(Icons.star,  size:  10,  color:  Colors.deepOrange,), 
      Icon(Icons.star,  size:  10,  color:  Colors.deepOrange,), 
      Icon(Icons.star,  size:  10,  color:  Colors.orange),
      ],
      )

      ],
      )
      ],
      )))
      ])));
      }
      }
