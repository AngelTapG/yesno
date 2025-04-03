import 'package:flutter/material.dart';
import 'package:yesno/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yesno/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://pm1.aminoapps.com/6628/cda110169c0d34fb2bf462c5aa8c424736ba323a_128.jpg'),
          ),
        ),
        title: const Text('Mi amor'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10 ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {          
                    return ( index % 2 == 0 )
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                  })),
            Text('Mundo')     
          ],
        ),
      ),
    );
  }
}