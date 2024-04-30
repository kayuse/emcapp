import '/flutter_flow/flutter_flow_util.dart';
import 'manual_details_widget.dart' show ManualDetailsWidget;
import 'package:flutter/material.dart';

class ManualDetailsModel extends FlutterFlowModel<ManualDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
