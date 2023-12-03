import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isPicked, required this.color});
  final bool isPicked;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isPicked
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              radius: 32,
              backgroundColor: Colors.deepOrangeAccent,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: color,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              radius: 32,
              backgroundColor: color,
            ),
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xFF9ac4f8),
    Color(0xFF9ad9e2),
    Color(0xFF99edcc),
    Color(0xFFb2c1ad),
    Color(0xFFcb958e),
    Color(0xFFd77d8b),
    Color(0xFFe36588),
    Color(0xFFbf4671),
    Color(0xFF9a275a),
    Color(0xFFa33b69),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        height: 64,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNotesCubit>(context).color = colors[index];
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isPicked: currentIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
