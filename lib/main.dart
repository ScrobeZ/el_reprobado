import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:el_reprobado/config/theme/app_theme.dart';
import 'package:el_reprobado/presentation/providers/chats/chat_provider.dart';
import 'presentation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        title: 'yes no App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 5).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}
