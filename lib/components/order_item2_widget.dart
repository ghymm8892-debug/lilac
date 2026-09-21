import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'order_item2_model.dart';
export 'order_item2_model.dart';

class OrderItem2Widget extends StatefulWidget {
  const OrderItem2Widget({
    super.key,
    String? imgDesc,
    String? title,
    String? qty,
    String? price,
  })  : this.imgDesc = imgDesc ??
            'https://dimg.dreamflow.cloud/v1/image/modern%20black%20headphones',
        this.title = title ?? 'Premium Wireless Headphones',
        this.qty = qty ?? '1',
        this.price = price ?? '\$299.00';

  final String imgDesc;
  final String title;
  final String qty;
  final String price;

  @override
  State<OrderItem2Widget> createState() => _OrderItem2WidgetState();
}

class _OrderItem2WidgetState extends State<OrderItem2Widget> {
  late OrderItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderItem2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              shape: BoxShape.rectangle,
            ),
            child: CachedNetworkImage(
              fadeInDuration: Duration(milliseconds: 0),
              fadeOutDuration: Duration(milliseconds: 0),
              imageUrl:
                  'https://dimg.dreamflow.cloud/v1/image/modern%20black%20headphones',
              fit: BoxFit.cover,
              alignment: Alignment(0.0, 0.0),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Premium Wireless Headphones',
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'SF UI Text',
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      lineHeight: 1.4,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'الكمية:',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'SF UI Text',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          lineHeight: 1.4,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.qty,
                      '1',
                    ),
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'SF UI Text',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          lineHeight: 1.4,
                        ),
                  ),
                ].divide(SizedBox(width: 4.0)),
              ),
              Text(
                valueOrDefault<String>(
                  widget.price,
                  '\$299.00',
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'SF UI Text',
                      color: FlutterFlowTheme.of(context).primary,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
