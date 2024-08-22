import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello BMC flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Hello BMC flutter"),
              backgroundColor: Colors.deepPurple,
            ),
            body: Builder(builder:(context)=> Center(
                child: Column(children: [
                  Text(
                    'Hello Flutter',
                    style: TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800]),
                  ),
                  Text(
                    'Discover the Flutter',
                    style: TextStyle(
                        fontSize: 20, color: Colors.deepPurple),
                  ),
                  Image.network(
                    'https://cdn.photographylife.com/wp-content/uploads/2018/11/Moeraki-Boulders-New-Zealand.jpg',
                    height: 350,
                  ),
                  ElevatedButton(
                    child: Text('Contact us'),
                    onPressed: () => contactUs(context),
                  )
                ]
                )))));
  }
}

void contactUs(BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext)
  {
    return AlertDialog(
      title: Text('Contact Us'),
      content: Text('mail us at grc@gmail.com'),
      actions: <Widget>[
        TextButton(
          child: Text('Close'),
          onPressed: () => Navigator.of(context).pop(),

        )
      ],
    );
  }
  );
}






