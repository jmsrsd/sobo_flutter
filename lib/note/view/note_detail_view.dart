import 'package:flutter/material.dart';

import '../../common/model/view_model.dart';
import '../../common/view/reactive/reactive_builder.dart';
import '../../common/view/reactive/reactive_view.dart';
import '../../common/view/styled_view.dart';
import '../controller/note_view_model.dart';
import '../model/note_data.dart';

class NoteDetailView extends ReactiveView<NoteData> {
  const NoteDetailView({Key? key}) : super(key: key);

  @override
  ViewModel<NoteData> get model => NoteViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Sobo'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    intent.deleting(selected.id).execute();
                    intent.dispatch(() async => Navigator.pop(context));
                  },
                  icon: const Icon(Icons.delete),
                ),
              ].map((e) {
                return Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  child: e,
                );
              }).toList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(),
          CircleBorder(),
        ),
        child: SizedBox(
          height: kToolbarHeight,
        ),
      ),
      body: Column(
        children: [
          ReactiveBuilder<NoteData>(
            view: this,
            init: () {},
            builder: (context, intent, loading) {
              return LinearProgressIndicator(
                value: loading ? null : 1,
              );
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0).copyWith(
                bottom: 32.0 + kToolbarHeight,
              ),
              child: Column(
                children: [
                  StyledView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ListTile(
                        title: Text(
                          'Title',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        subtitle: TextField(
                          controller:
                              TextEditingController(text: selected.title),
                          decoration: const InputDecoration(
                            hintText: '...',
                            border: InputBorder.none,
                          ),
                          onChanged: (text) {
                            selected = selected.copyWith(title: text);
                            intent.editing(selected.id, selected).execute();
                          },
                          maxLines: null,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  StyledView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ListTile(
                        title: Text(
                          'Content',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        subtitle: TextField(
                          controller: TextEditingController(
                            text: selected.content,
                          ),
                          decoration: const InputDecoration(
                            hintText: '...',
                            border: InputBorder.none,
                          ),
                          onChanged: (text) {
                            selected = selected.copyWith(content: text);
                            intent.editing(selected.id, selected).execute();
                          },
                          maxLines: null,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
