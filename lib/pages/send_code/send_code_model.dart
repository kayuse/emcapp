import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'send_code_widget.dart' show SendCodeWidget;
import 'package:flutter/material.dart';

class SendCodeModel extends FlutterFlowModel<SendCodeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  // Stores action output result for [Backend Call - API (verify)] action in Button widget.
  ApiCallResponse? apiResultstn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    codeFocusNode?.dispose();
    codeTextController?.dispose();
  }
}
