import '/flutter_flow/flutter_flow_util.dart';
import 'topics_widget.dart' show TopicsWidget;
import 'package:flutter/material.dart';

class TopicsModel extends FlutterFlowModel<TopicsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
