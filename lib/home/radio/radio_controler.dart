import 'package:flutter/material.dart';
import '../../api_model/RadioResponse.dart';

class RadioControler extends StatefulWidget {
  late Radios radio;
  Function play;
  Function pause;
  RadioControler(
      {required this.radio, required this.play, required this.pause});
  @override
  State<RadioControler> createState() => _RadioControlerState();
}

class _RadioControlerState extends State<RadioControler> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.radio.name ?? ' ',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    widget.play();
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {
                    widget.pause();
                  },
                  icon: const Icon(
                    Icons.pause,
                    size: 40,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
