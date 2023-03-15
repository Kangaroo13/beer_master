import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCervezaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for NombreCerveza widget.
  TextEditingController? nombreCervezaController;
  String? Function(BuildContext, String?)? nombreCervezaControllerValidator;
  // State field(s) for TitulodeValoracion widget.
  TextEditingController? titulodeValoracionController;
  String? Function(BuildContext, String?)?
      titulodeValoracionControllerValidator;
  // State field(s) for Opinion widget.
  TextEditingController? opinionController;
  String? Function(BuildContext, String?)? opinionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nombreCervezaController?.dispose();
    titulodeValoracionController?.dispose();
    opinionController?.dispose();
  }

  /// Additional helper methods are added here.

}
