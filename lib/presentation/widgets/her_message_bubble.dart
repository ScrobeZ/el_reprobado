import 'package:flutter/material.dart';

class  HerMessageBubble extends StatelessWidget{
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context){
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.tertiary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', 
            style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5,),
        const _ImageBubble(urlGif: 'https://i.pinimg.com/originals/ab/b9/a7/abb9a76d8de11d04f5ab862e8ecc8569.gif'),
        const SizedBox(height: 20,)
      ],
    );
  }

}

class _ImageBubble extends StatelessWidget{
  final String urlGif;

  const _ImageBubble({super.key, required this.urlGif});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        urlGif,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) => 
        (loadingProgress==null)
        ?child
        :Container(
          width: size.width * 0.7,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          child: const Text('Cargando la imagen...'),
        ),
      ),
    );
  }

}