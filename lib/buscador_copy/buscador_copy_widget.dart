import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'buscador_copy_model.dart';
export 'buscador_copy_model.dart';

class BuscadorCopyWidget extends StatefulWidget {
  const BuscadorCopyWidget({
    Key? key,
    this.tipoCerveza,
  }) : super(key: key);

  final String? tipoCerveza;

  @override
  _BuscadorCopyWidgetState createState() => _BuscadorCopyWidgetState();
}

class _BuscadorCopyWidgetState extends State<BuscadorCopyWidget> {
  late BuscadorCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuscadorCopyModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.menu_rounded,
            color: Color(0xFF66341D),
            size: 30.0,
          ),
          onPressed: () async {
            context.pushNamed('menu');
          },
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
          child: Text(
            'Buscador',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Inter',
                  color: Color(0xFF66341D),
                  fontSize: 22.0,
                ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 75.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Color(0x27000000),
                      offset: Offset(0.0, 3.0),
                    )
                  ],
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Search products...',
                      labelStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                    maxLines: null,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 110.0,
                decoration: BoxDecoration(),
                child: StreamBuilder<List<CervezaRecord>>(
                  stream: queryCervezaRecord(
                    queryBuilder: (cervezaRecord) =>
                        cervezaRecord.where('tipo', isNotEqualTo: 'Null'),
                    limit: 1,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitSquareCircle(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<CervezaRecord> listViewCervezaRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listViewCervezaRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewCervezaRecord =
                            listViewCervezaRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 8.0, 0.0, 8.0),
                          child: Container(
                            width: 120.0,
                            height: 190.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x230E151B),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 4.0, 4.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 4.0),
                                    child: Icon(
                                      Icons.sports_bar_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 44.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      listViewCervezaRecord.tipo!,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                      child: Text(
                        'Categories',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                      ),
                    ),
                    Text(
                      'See All',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 44.0),
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'data:image/jpeg;base64,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',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'LAGER',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xEEFCDD73),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://media.istockphoto.com/id/1165341035/es/foto/vidrio-brusmo-de-cerveza-ligera-sobre-una-mesa-de-madera-y-trigo.jpg?s=612x612&w=0&k=20&c=WqPysBnYfcQ5FtKmTSfO7NcFsiUiMo7gwsjRMsLhns0=',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'PILSEN',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xEEFCDD73),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://media.istockphoto.com/id/598085970/es/foto/refrescante-cerveza-brown-ale.jpg?s=612x612&w=0&k=20&c=T26qeNK695zbOQZCRs-tbICWGl9ET6FVNC5vW7094jc=',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'ALE',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xEEFCDD73),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://cervezaartesana.info/wp-content/uploads/2019/06/que-es-una-pale-ale.png',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'PALE ALE',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xEEFCDD73),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://fotografias.lasexta.com/clipping/cmsimages02/2020/11/04/61886B99-AD77-4FC6-A2C1-D5211819BF25/98.jpg?crop=1000,563,x0,y55&width=1900&height=1069&optimize=high&format=webply',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'STOUT',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xEEFCDD73),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://www.cerveza-artesanal.co/wp-content/uploads/2018/06/ale-belga-brett-roble.jpg',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'ALE BELGA',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xEEFCDD73),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://cdn.shopify.com/s/files/1/0339/9513/articles/cd9e36b9c5a1f1089bcbd5f310fb04d5-823438_1200x.jpg?v=1666620161',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'IPA',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xEEFCDD73),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 190.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'data:image/jpeg;base64,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',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x230E151B),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'ARTEZANAS',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xEEFCDD73),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
