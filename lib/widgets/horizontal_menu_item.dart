import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newest/colors.dart';
import 'package:newest/controllers/control_lers.dart';
import 'package:newest/widgets/custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function()? onTap;

  const HorizontalMenuItem({Key? key, required this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName)
                  ? kGreyColor.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                      visible: menuController.isHovering(itemName) ||
                          menuController.isActive(itemName),
                      child: Container(
                        width: 6,
                        height: 40,
                        color: kVlack,
                      ),
                      maintainSize: true,
                      maintainState: true,
                      maintainAnimation: true),
                  SizedBox(width: _width / 80),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: menuController.returnIconFor(itemName),
                  ),
                  if (!menuController.isActive(itemName))
                    Flexible(
                        child: CustomText(
                      text: itemName,
                      color: menuController.isHovering(itemName)
                          ? kBlueColor
                          : kGreyColor,
                      weight: FontWeight.normal,
                      size: 0,
                    ))
                  else
                    Flexible(
                        child: CustomText(
                            text: itemName,
                            size: 18,
                            color: kBlueColor,
                            weight: FontWeight.bold))
                ],
              ),
            )));
  }
}
