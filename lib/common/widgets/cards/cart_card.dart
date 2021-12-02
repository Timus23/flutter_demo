import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simpleapplication/app/custom_theme.dart';
import 'package:simpleapplication/common/widgets/custom_chip_tile.dart';
import 'package:simpleapplication/common/widgets/custom_icon_button.dart';

class CartCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String markedPrice;
  final String sellingPrice;
  final int offPercentage;
  final int quantity;
  const CartCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.markedPrice,
    required this.offPercentage,
    required this.quantity,
    required this.sellingPrice,
  }) : super(key: key);

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int _quantityCount = 0;

  @override
  void initState() {
    super.initState();
    _updateQuantity(widget.quantity);
  }

  _updateQuantity(int quantity) {
    setState(() {
      _quantityCount = quantity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 12,
            offset: Offset(
              0,
              6,
            ),
          )
        ],
      ),
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            widget.imageUrl,
            width: 100,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "RS. ${widget.sellingPrice}",
                            style: TextStyle(
                              color: CustomTheme.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "RS. ${widget.markedPrice}",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              SizedBox(width: 8),
                              CustomChipTile(
                                title: "${widget.offPercentage} OFF",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        CustomIconButton(
                          icon: Icons.remove,
                          iconSize: 20,
                          padding: 8,
                          onPressed: () {
                            if (_quantityCount > 0) {
                              _updateQuantity(_quantityCount - 1);
                            }
                          },
                          backgroundColor:
                              CustomTheme.lightGrey.withOpacity(0.2),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text("${_quantityCount}"),
                        ),
                        CustomIconButton(
                          icon: Icons.add,
                          iconSize: 20,
                          padding: 8,
                          onPressed: () {
                            _updateQuantity(_quantityCount + 1);
                          },
                          backgroundColor:
                              CustomTheme.lightGrey.withOpacity(0.2),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
