import 'package:flutter/material.dart';
import '../controller/note_view_model.dart';
import '../model/note_data.dart';
import 'note_detail_view.dart';

class NoteTileView extends StatelessWidget {
  final NoteData data;

  const NoteTileView({Key? key, required this.data}) : super(key: key);

  NoteViewModel get viewModel {
    return NoteViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(8.0),
      color: Theme.of(context).focusColor,
      elevation: 2.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListTile(
              onTap: viewModel.reading(context, data.id, (context) {
                return const NoteDetailView();
              }).execute,
              minVerticalPadding: 16.0,
              title: Container(
                margin: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  data.title.isNotEmpty ? data.title : 'Untitled',
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              subtitle: Text(
                data.content.isNotEmpty ? data.content : '...',
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12.0),
            child: IconButton(
              onPressed: viewModel.deleting(data.id).execute,
              icon: const Icon(Icons.delete),
            ),
          ),
        ],
      ),
    );
  }
}
