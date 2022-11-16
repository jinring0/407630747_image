import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '瀏覽影像',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );


  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('407630747_image'),
    );

    final widget = Center(
        child: Stack(children: <Widget>[
      Container(
      child: imgBrowser,
    ),
      Container(
      child: Row(
        children: <Widget>[previousBtn, nextBtn],
        mainAxisAlignment: MainAxisAlignment.centor: ,
    ),
    margin:  EdgeInsets.symmetric(vertical: 10),
    ),
    ],alignment: Alignment.topCenter),
    );
}
}

class _ImageBrowserState extends State<_ImageBrowser>{
    override
  widget build(BuildContext context){
      var img = PhotoView(
          imageProvider: AssetImage(widget,_images[widget._imageIndex])
          minScale: PhotoViewComputedScale.contained * 0.6,
          maxScale: PhotoViewComputedScale.covered,
          enableRotation: true,
          backgroundDecoration: BoxDecoration(
            colors: Colors.white,
  ));
      return img;
  }
  }


