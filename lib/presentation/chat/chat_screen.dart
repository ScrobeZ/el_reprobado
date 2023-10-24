import 'package:el_reprobado/presentation/widgets/her_message_bubble.dart';
import 'package:el_reprobado/presentation/widgets/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('http://placekitten.com/400/400'),
          ),
        ),
        title: const Text('Orange'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return index % 2 ==0 
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
                },
              ),
            ),
          ],
        ),
        ),
    );
  }

}