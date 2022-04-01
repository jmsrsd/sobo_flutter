import 'package:flutter/material.dart';

import '../../common/model/view_model.dart';
import '../../common/view/reactive/reactive_builder.dart';
import '../../common/view/reactive/reactive_view.dart';
import '../controller/note_view_model.dart';
import '../model/note_data.dart';
import 'note_tile_view.dart';

class NoteMainView extends ReactiveView<NoteData> {
  const NoteMainView({Key? key}) : super(key: key);

  @override
  ViewModel<NoteData> get model => NoteViewModel();

  @override
  Widget build(BuildContext context) {
    return ReactiveBuilder<NoteData>(
      view: this,
      init: intent.browsing().execute,
      builder: (context, intent, loading) {
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
              LinearProgressIndicator(
                value: loading ? null : 1,
              ),
              Expanded(
                child: Center(
                  child: RefreshIndicator(
                    onRefresh: () async => intent.browsing().execute(),
                    child: ListView.separated(
                      padding: const EdgeInsets.all(16.0).copyWith(
                        bottom: 32.0 + kToolbarHeight + 32.0,
                      ),
                      itemCount: collection.length,
                      itemBuilder: (context, index) {
                        return NoteTileView(
                          data: collection.elementAt(index),
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: loading
                ? null
                : intent.adding((id) => NoteData(id: id)).execute,
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
