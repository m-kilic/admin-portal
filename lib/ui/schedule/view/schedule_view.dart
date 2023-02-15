import 'package:flutter/material.dart';
import 'package:invoiceninja_flutter/ui/app/scrollable_listview.dart';
import 'package:invoiceninja_flutter/ui/schedule/view/schedule_view_vm.dart';
import 'package:invoiceninja_flutter/ui/app/view_scaffold.dart';

class ScheduleView extends StatefulWidget {
  const ScheduleView({
    Key key,
    @required this.viewModel,
    @required this.isFilter,
  }) : super(key: key);

  final ScheduleViewVM viewModel;
  final bool isFilter;

  @override
  _ScheduleViewState createState() => new _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView> {
  @override
  Widget build(BuildContext context) {
    final viewModel = widget.viewModel;
    final schedule = viewModel.schedule;

    return ViewScaffold(
      isFilter: widget.isFilter,
      entity: schedule,
      onBackPressed: () => viewModel.onBackPressed(),
      body: ScrollableListView(
        children: <Widget>[],
      ),
    );
  }
}