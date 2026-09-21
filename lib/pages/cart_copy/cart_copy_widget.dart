import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/comopoents/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'cart_copy_model.dart';
export 'cart_copy_model.dart';

class CartCopyWidget extends StatefulWidget {
  const CartCopyWidget({
    super.key,
    this.pid,
    required this.aid,
    required this.quantity,
  });

  final int? pid;
  final int? aid;
  final int? quantity;

  static String routeName = 'CartCopy';
  static String routePath = '/cartCopy';

  @override
  State<CartCopyWidget> createState() => _CartCopyWidgetState();
}

class _CartCopyWidgetState extends State<CartCopyWidget> {
  late CartCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.userCartItems = await CartTable().queryRows(
        queryFn: (q) => q.eqOrNull(
          'UID',
          currentUserUid,
        ),
      );
      FFAppState().cartTotal =
          functions.calculateCartTotal(_model.userCartItems!.toList());
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  wrapWithModel(
                    model: _model.mainAppbarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: MainAppbarWidget(
                      title: 'إتمام الشراء',
                      isBack: false,
                      isEdit: false,
                      backAction: () async {},
                      editAction: () async {},
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Text(
                    'ملخص الطلب',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'SF Pro Display',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          lineHeight: 1.5,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 24.0, 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'إجمالي العناصر',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color:
                                      FlutterFlowTheme.of(context).customColor1,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                        FutureBuilder<List<CartTotalsRow>>(
                          future: CartTotalsTable().queryRows(
                            queryFn: (q) => q.eqOrNull(
                              'user_id',
                              currentUserUid,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<CartTotalsRow> textCartTotalsRowList =
                                snapshot.data!;

                            return Text(
                              valueOrDefault<String>(
                                textCartTotalsRowList.firstOrNull?.totalPrice,
                                '0',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.5,
                                  ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'سعر التوصيل',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color:
                                      FlutterFlowTheme.of(context).customColor1,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                        Text(
                          '5,000 د.ع',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.5,
                                  ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 0.1,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'السعر الكلي:',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  lineHeight: 1.5,
                                ),
                          ),
                        ),
                        FutureBuilder<List<CartTotalsRow>>(
                          future: CartTotalsTable().querySingleRow(
                            queryFn: (q) => q.eqOrNull(
                              'user_id',
                              currentUserUid,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<CartTotalsRow> textCartTotalsRowList =
                                snapshot.data!;

                            final textCartTotalsRow =
                                textCartTotalsRowList.isNotEmpty
                                    ? textCartTotalsRowList.first
                                    : null;

                            return Text(
                              valueOrDefault<String>(
                                textCartTotalsRow?.grandTotal,
                                '0',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.5,
                                  ),
                            );
                          },
                        ),
                      ],
                    ),
                  ].divide(SizedBox(height: 10.0)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(77.0, 13.0, 77.0, 14.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.cartItems = await CartTable().queryRows(
                      queryFn: (q) => q.eqOrNull(
                        'UID',
                        currentUserUid,
                      ),
                    );
                    for (int loop1Index = 0;
                        loop1Index < _model.userCartItems!.length;
                        loop1Index++) {
                      final currentLoop1Item =
                          _model.userCartItems![loop1Index];
                      await OrdersTable().insert({
                        'UID': currentUserUid,
                        'PD': currentLoop1Item.pid,
                        'aid': widget.aid,
                        'status': '....',
                        'quantity': currentLoop1Item.quantity,
                        'customer_name': '',
                        'phone': '',
                        'full_address': '',
                        'product_name': '',
                        'total_price': '',
                        'grand_total': '',
                      });
                    }
                    await CartTable().delete(
                      matchingRows: (rows) => rows.eqOrNull(
                        'UID',
                        currentUserUid,
                      ),
                    );

                    safeSetState(() {});
                  },
                  text: 'ارسال الطلب',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 44.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(44.0, 0.0, 44.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'SF UI Text',
                          color: Colors.white,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          lineHeight: 1.5,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
