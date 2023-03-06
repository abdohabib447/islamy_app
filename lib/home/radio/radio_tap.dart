import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app2/api_model/RadioResponse.dart';
import 'package:islami_app2/home/radio/radio_controler.dart';
import 'package:http/http.dart' as http;

class radio extends StatefulWidget {
  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {
  late Future<RadioResponse> fetchRadio;

  Future<RadioResponse> fetchRadioApiData() async {
    Uri uri = Uri.parse('https://www.mp3quran.net/api/radio/radio_ar.json');
    var response = await http.get(uri);
    Map<String, dynamic> json = jsonDecode(utf8.decode(response.bodyBytes));
    return RadioResponse.fromJson(json);
  }

  @override
  void initState() {
    super.initState();
    fetchRadio = fetchRadioApiData();
    audioPlayer = AudioPlayer();

  }
  late AudioPlayer audioPlayer;
  play(String url) async {
    await audioPlayer.play(UrlSource(url));
  }

  pauase() async {
    await audioPlayer.pause();
  }
  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<RadioResponse>(
        future: fetchRadio,
        builder: ((BuildContext context,AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('HAS ERROR + ${snapshot.error}');
          } else {
            return Container(
              child: Column(
                children: [
                  Expanded(
                      flex: 3,
                      child: Image.asset(
                          "assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png")),
                  Expanded(
                      flex: 2,
                      child: ListView.builder(
                        physics: PageScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.radios!.length,
                        itemBuilder: (context, index) {
                          return RadioControler(radio : snapshot.data.radios[index] ,
                          play:  play(snapshot.data.radios[index].url ?? ' '),
                            pause:pauase,
                          );
                        },
                      )
                  ),

                ],
              ),
            );
          }
        }
        )
    );
  }
}
