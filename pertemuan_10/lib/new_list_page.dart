import 'package:flutter/material.dart';
import 'package:pertemuan_10/article_detail_page.dart';

import 'package:pertemuan_10/model/article_model.dart';

class NewListPage extends StatelessWidget {
  const NewListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Application'),
        backgroundColor: Colors.lightBlue.shade300,
      ),
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/artikel.json'),
        builder: (context, snapshot) {
          final List<Artikelmodel> artikel = parseArticles(snapshot.data);
          ;
          return ListView.builder(
            itemCount: artikel.length,
            itemBuilder: (context, index) {
              return _buildArticleItem(context, artikel[index]);
            },
          );
        },
      ),
    );
  }

  Widget _buildArticleItem(BuildContext context, Artikelmodel artikel) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      leading: Image.network(artikel.urlToImage,
          width: 100,
          errorBuilder: (ctx, error, _) =>
              const Center(child: Icon(Icons.error))),
      title: Text(artikel.title),
      subtitle: Text(artikel.author),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleDetailPage(artikel)));
      },
    );
  }
}
