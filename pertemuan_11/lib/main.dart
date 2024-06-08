import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pertemuan_11/album.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AlbumPage(),
    );
  }
}

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  late Future<Album> _futureAlbum;
  @override
  void initState() {
    super.initState();
    _futureAlbum = fetchAlbum();
  }

  Future<Album> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/3'));
    if (response.statusCode == 200) {
      return Album.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fetch data example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
              future: _futureAlbum,
              builder: (context, snapshot) {
                var state = snapshot.connectionState;
                if (state != ConnectionState.done) {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: Colors.red,
                    strokeWidth: 10,
                  ));
                } else {
                  if (snapshot.hasData) {
                    return (Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(snapshot.data!.userId.toString()),
                        Text(snapshot.data!.id.toString()),
                        Text(snapshot.data!.title)
                      ],
                    ));
                  } else if (snapshot.hasError) {
                    return Center(child: Text("${snapshot.error}"));
                  } else {
                    return const Text('');
                  }
                }
              }),
        ));
  }
}
