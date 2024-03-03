import 'package:youtube_api/youtube_api.dart';
import 'package:youtube_data_api/models/channel_data.dart';
import 'package:youtube_data_api/youtube_data_api.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  static String key = "AIzaSyDFnNp1CvcIGCmHLzdVvdh3dJT3kkJergE";

  YoutubeAPI youtube = YoutubeAPI(key);
  ChannelData? videoResult ;

  Future<void> callAPI() async {
    // String query = "gurudevdattamorale111";
    // videoResult = await youtube.search(
    //   query,
    //   order: 'relevance',
    //   videoDuration: 'any',
    // );
    // videoResult = await youtube.nextPage();
    // setState(() {});
    YoutubeDataApi youtubeDataApi = YoutubeDataApi();
     videoResult = await youtubeDataApi.fetchChannelData("gurudevdattamorale111");
  }

  @override
  void initState() {
    super.initState();
    callAPI();
    // print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget listItem(YouTubeVideo video) {
    return Card(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 7.0),
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Image.network(
                video.thumbnail.small.url ?? '',
                width: 120.0,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    video.title,
                    softWrap: true,
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Text(
                      video.channelTitle,
                      softWrap: true,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    video.url,
                    softWrap: true,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}