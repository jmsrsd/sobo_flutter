import 'package:flutter/material.dart';

import '../../common/model/model.dart';
import '../controller/note_view_model.dart';
import '../model/note_data.dart';
import 'note_tile_view.dart';

class NoteMainView extends StatelessWidget {
  const NoteMainView({Key? key}) : super(key: key);

  NoteViewModel get viewModel {
    return NoteViewModel();
  }

  bool get loading {
    return viewModel.loading;
  }

  List<NoteData> get collection {
    return viewModel.collection.values.toList().reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Model<NoteData>>(
      stream: viewModel.stream,
      initialData: viewModel..browsing().execute(),
      builder: (context, _) {
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
                    onRefresh: () async => viewModel.browsing().execute(),
                    child: ListView.separated(
                      padding: const EdgeInsets.all(16.0).copyWith(
                        bottom: 32.0 + kToolbarHeight + 32.0,
                      ),
                      itemCount: viewModel.collection.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                      itemBuilder: (context, index) {
                        return NoteTileView(
                          data: collection.elementAt(index),
                        );
                      },
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
                : viewModel.adding((id) => NoteData(id: id)).execute,
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
