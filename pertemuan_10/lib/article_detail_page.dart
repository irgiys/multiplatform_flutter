import 'package:flutter/material.dart';
import 'package:pertemuan_10/model/article_model.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';
  final Artikelmodel artikel;

  const ArticleDetailPage(this.artikel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(artikel.title),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Image.network(artikel.urlToImage),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(artikel.description),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Text(
                        artikel.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const Divider(color: Colors.grey),
                      Text('Date : ${artikel.publishedAt}'),
                      const SizedBox(height: 10),
                      Text("Author: ${artikel.author}"),
                      const Divider(color: Colors.grey),
                      Text(artikel.content,
                          style: const TextStyle(fontSize: 16))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
