import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:karyawan/API.dart';
import 'package:karyawan/karyawan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var users = new List<Karyawan>();

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => Karyawan.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getUsers();
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Data Karyawan"),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text("Nama : " +users[index].nama_pegawai),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Jenis Kelamin : " +users[index].jenis_kelamin),
                    Text("Pendidikan : " +users[index].pendidikan),
                    Text("Alamat : " +users[index].alamat),
                    Text("Agama : " +users[index].agama),
                    Text("Telepon : " +users[index].telepon),
                    Text("Keahlian : " +users[index].keahlian),
                    Text("Umur : " +users[index].umur + " tahun")
                  ],
                ),
              ),
            );
          },
        ));
  }
}
