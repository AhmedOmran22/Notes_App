import 'package:flutter/material.dart';
import 'package:notes_app/helpers.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_coloe_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subtitle ?? widget.note.subTitle;
                widget.note.save();
                Navigator.pop(context);
                snackBarMessage(context, 'Your note is edited successfuly');
              },
              icon: Icons.check,
              title: 'Edit Note',
            ),
            const SizedBox(height: 32),
            CustomTextFormField(
              hint: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hint: widget.note.subTitle,
              maxLines: 8,
              onChanged: (value) {
                subtitle = value;
              },
            ),
            const SizedBox(height: 16),
            EditNoteColorList(
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}
