import 'package:flutter/material.dart';

import '../../common/model/model.dart';
import '../controller/note_view_model.dart';
import '../model/note_data.dart';

class NoteDetailView extends StatelessWidget {
  const NoteDetailView({Key? key}) : super(key: key);

  NoteViewModel get viewModel {
    return NoteViewModel();
  }

  bool get loading {
    return viewModel.loading;
  }

  NoteData get data {
    return viewModel.selected ?? NoteData();
  }

  set data(NoteData value) {
    viewModel.selected = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('Sobo'),
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
          StreamBuilder<Model<NoteData>>(
            stream: viewModel.stream,
            initialData: viewModel..browsing().execute(),
            builder: (context, _) {
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
                Material(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(8.0),
                  color: Theme.of(context).focusColor,
                  elevation: 2.0,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ListTile(
                      title: Text(
                        'Title',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      subtitle: TextField(
                        controller: TextEditingController(text: data.title),
                        decoration: const InputDecoration(
                          hintText: '...',
                          border: InputBorder.none,
                        ),
                        onChanged: (text) {
                          data = data.copyWith(title: text);
                          viewModel.editing(data.id, data).execute();
                        },
                        maxLines: null,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Material(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(8.0),
                  color: Theme.of(context).focusColor,
                  elevation: 2.0,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ListTile(
                      title: Text(
                        'Content',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      subtitle: TextField(
                        controller: TextEditingController(text: data.content),
                        decoration: const InputDecoration(
                          hintText: '...',
                          border: InputBorder.none,
                        ),
                        onChanged: (text) {
                          data = data.copyWith(content: text);
                          viewModel.editing(data.id, data).execute();
                        },
                        maxLines: null,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
