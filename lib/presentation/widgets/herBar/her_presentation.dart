import 'package:flutter/material.dart';

class HerPresentation extends StatelessWidget implements PreferredSizeWidget {
  final String nombre;
  final String urlAvatar;

  const HerPresentation({
    super.key,
    this.nombre = 'mi vida, mi amor',
    this.urlAvatar =
        'https://pbs.twimg.com/profile_images/597967561909805056/kTlNI7RH_400x400.jpg',
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(urlAvatar),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(nombre, style: const TextStyle(color: Colors.white)),
      centerTitle: false,
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
