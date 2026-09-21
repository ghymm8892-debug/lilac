import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'row_componant_model.dart';
export 'row_componant_model.dart';

class RowComponantWidget extends StatefulWidget {
  const RowComponantWidget({
    super.key,
    required this.title,
    required this.viewAllAction,
  });

  final String? title;
  final Future Function()? viewAllAction;

  @override
  State<RowComponantWidget> createState() => _RowComponantWidgetState();
}

class _RowComponantWidgetState extends State<RowComponantWidget>
    with TickerProviderStateMixin {
  late RowComponantModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RowComponantModel());

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              valueOrDefault<String>(
                widget.title,
                'Title',
              ),
              textAlign: TextAlign.start,
              maxLines: 1,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'SF Pro Display',
                    color: FlutterFlowTheme.of(context).accent1,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.5,
                  ),
            ),
          ),
        ].divide(SizedBox(width: 8.0)),
      ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
    );
  }
}
