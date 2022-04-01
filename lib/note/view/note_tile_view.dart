import 'package:flutter/material.dart';

import '../../common/model/view_model.dart';
import '../../common/view/reactive/reactive_view.dart';
import '../../common/view/styled_view.dart';
import '../controller/note_view_model.dart';
import '../model/note_data.dart';
import 'note_detail_view.dart';

class NoteTileView extends ReactiveView<NoteData> {
  final NoteData data;

  const NoteTileView({Key? key, required this.data}) : super(key: key);

  @override
  ViewModel<NoteData> get model => NoteViewModel();

  @override
  Widget build(BuildContext context) {
    return StyledView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListTile(
              onTap: intent.opening(context, data.id, (context) {
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
              onPressed: intent.deleting(data.id).execute,
              icon: const Icon(Icons.delete),
            ),
          ),
        ],
      ),
    );
  }
}
