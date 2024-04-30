import '/flutter_flow/flutter_flow_util.dart';
import 'sponsorsomeone_widget.dart' show SponsorsomeoneWidget;
import 'package:flutter/material.dart';

class SponsorsomeoneModel extends FlutterFlowModel<SponsorsomeoneWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for personsName widget.
  FocusNode? personsNameFocusNode;
  TextEditingController? personsNameTextController;
  String? Function(BuildContext, String?)? personsNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    personsNameFocusNode?.dispose();
    personsNameTextController?.dispose();
  }
}
