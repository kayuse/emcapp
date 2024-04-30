import '/flutter_flow/flutter_flow_util.dart';
import 'sundayschool_widget.dart' show SundayschoolWidget;
import 'package:flutter/material.dart';

class SundayschoolModel extends FlutterFlowModel<SundayschoolWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchField widget.
  FocusNode? searchFieldFocusNode;
  TextEditingController? searchFieldTextController;
  String? Function(BuildContext, String?)? searchFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchFieldFocusNode?.dispose();
    searchFieldTextController?.dispose();
  }
}
