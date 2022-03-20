import 'package:de_appointment/Model/TopRateModel.dart';
import 'package:flutter/material.dart';

class RateWidget extends StatefulWidget {
  const RateWidget({Key? key, this.topRate}) : super(key: key);
  final TopRateModel? topRate;
  @override
  _RateWidgetState createState() => _RateWidgetState();
}

class _RateWidgetState extends State<RateWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      margin: const EdgeInsets.only(left: 25, right: 25, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 75,
            height: 80,
            margin: const EdgeInsets.only(left: 12, top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade200,
            ),
            child: Image.asset(widget.topRate!.topRateImageUrl!),
          ),
          Container(
            margin:const EdgeInsetsDirectional.only(start: 5, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 10, start: 15),
                  child: Text(
                    widget.topRate!.drName!,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 20,start: 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.59,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.topRate!.spec!,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_purple500_outlined,
                              size: 20,
                              color: Colors.amber,
                            ),
                            Text(widget.topRate!.rate!.toString(),style:const TextStyle(fontSize: 12),),
                            const Padding(
                              padding:  EdgeInsets.only(left: 5),
                              child:  Icon(
                                Icons.location_on,
                                size: 20,
                                color: Colors.amber,
                              ),
                            ),
                            Text(widget.topRate!.distance!,style:const TextStyle(fontSize: 12),),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}