import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget{
  const FeedCard ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const url = 'https://cdn.pixabay.com/photo/2019/08/29/19/17/pablo-escobar-4439780_960_720.png';
    return Card(
      child: Column(
        children: [
          //header
          ListTile(
            leading: CircleAvatar(
            backgroundImage: NetworkImage(url),
            ),
            title: Text('Chaos'),
            subtitle: Text('status'),
            trailing: Icon(Icons.arrow_right),
          ),
          //content
          Image.network('https://cdn.pixabay.com/photo/2019/08/29/19/17/pablo-escobar-4439780_960_720.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.cover,
          ),
          //footer

        ],
      ),
    );
  }
}