import 'package:flutter/material.dart';

import '../songs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My music'),
      ),
      body: SongList(),
    );
  }
}

class SongList extends StatelessWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: song_titles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
              title: Text(song_titles[index]),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                print(song_titles[index]);
                // Navigator.push(context,Router)
              }),
        );
      },
    );
  }
}
