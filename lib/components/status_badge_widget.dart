import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'status_badge_model.dart';
export 'status_badge_model.dart';

class StatusBadgeWidget extends StatefulWidget {
  const StatusBadgeWidget({
    super.key,
    String? status,
  }) : this.status = status ?? '';

  final String status;

  @override
  State<StatusBadgeWidget> createState() => _StatusBadgeWidgetState();
}

class _StatusBadgeWidgetState extends State<StatusBadgeWidget> {
  late StatusBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusBadgeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          () {
            if (widget.status == 'Pending') {
              return Color(0x00000000);
            } else if (widget.status == 'Completed') {
              return Color(0x2604B155);
            } else if (widget.status == 'Out for Delivery') {
              return Color(0x00000000);
            } else {
              return FlutterFlowTheme.of(context).secondaryBackground;
            }
          }(),
          Color(0x00000000),
        ),
        borderRadius: BorderRadius.circular(9999.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        child: Container(
          child: Text(
            widget.status,
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  fontFamily: 'SF UI Text',
                  color: valueOrDefault<Color>(
                    () {
                      if (widget.status == 'Pending') {
                        return FlutterFlowTheme.of(context).warning;
                      } else if (widget.status == 'Completed') {
                        return FlutterFlowTheme.of(context).success;
                      } else if (widget.status == 'Out for Delivery') {
                        return FlutterFlowTheme.of(context).info;
                      } else {
                        return FlutterFlowTheme.of(context).secondaryText;
                      }
                    }(),
                    Color(0x00000000),
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  lineHeight: 1.4,
                ),
          ),
        ),
      ),
    );
  }
}
