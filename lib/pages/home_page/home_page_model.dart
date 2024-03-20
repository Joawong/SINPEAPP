import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNumDestino widget.
  FocusNode? txtNumDestinoFocusNode;
  TextEditingController? txtNumDestinoController;
  String? Function(BuildContext, String?)? txtNumDestinoControllerValidator;
  String? _txtNumDestinoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El número está incompleto';
    }

    return null;
  }

  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode;
  TextEditingController? txtMontoController;
  String? Function(BuildContext, String?)? txtMontoControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionController;
  String? Function(BuildContext, String?)? txtDescripcionControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtNumDestinoControllerValidator = _txtNumDestinoControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNumDestinoFocusNode?.dispose();
    txtNumDestinoController?.dispose();

    txtMontoFocusNode?.dispose();
    txtMontoController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
