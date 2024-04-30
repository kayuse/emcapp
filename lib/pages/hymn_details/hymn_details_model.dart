import '/flutter_flow/flutter_flow_util.dart';
import 'hymn_details_widget.dart' show HymnDetailsWidget;
import 'package:flutter/material.dart';

class HymnDetailsModel extends FlutterFlowModel<HymnDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
