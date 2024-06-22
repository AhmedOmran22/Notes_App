import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    this.titile,
    this.subTitle,
    this.date,
    this.color,
  });

  final String? titile;
  final String? subTitle;
  final String? date;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCD7A),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  'Flutter Tips ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  'build your career with tharwat samy ',
                  style: TextStyle(
                    color: Color(0xff936B31),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 28,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 32),
              child: Text(
                'May 21.2022',
                style: TextStyle(
                  color: Color(0xff936B31),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
