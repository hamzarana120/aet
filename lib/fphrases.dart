import 'dart:async';

import 'package:aet/soundrecorder.dart';
import 'package:audio_session/audio_session.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound_platform_interface/flutter_sound_recorder_platform_interface.dart';
import 'package:permission_handler/permission_handler.dart';

typedef _Fn = void Function();

const theSource = AudioSource.microphone;

class fphrases extends StatefulWidget {
  @override
  _fphrasesState createState() => _fphrasesState();
}

class _fphrasesState extends State<fphrases> {
  Codec _codec = Codec.aacMP4;
  String _mPath = 'tau_file.mp4';
  FlutterSoundPlayer? _mPlayer = FlutterSoundPlayer();
  FlutterSoundRecorder? _mRecorder = FlutterSoundRecorder();
  bool _mPlayerIsInited = false;
  bool _mRecorderIsInited = false;
  bool _mplaybackReady = false;
  final recorder = SoundRecorder();

  @override
  void initState() {
    _mPlayer!.openPlayer().then((value) {
      setState(() {
        _mPlayerIsInited = true;
      });
    });

    openTheRecorder().then((value) {
      setState(() {
        _mRecorderIsInited = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _mPlayer!.closePlayer();
    _mPlayer = null;

    _mRecorder!.closeRecorder();
    _mRecorder = null;
    super.dispose();
  }

  Future<void> openTheRecorder() async {
    if (!kIsWeb) {
      var status = await Permission.microphone.request();
      if (status != PermissionStatus.granted) {
        throw RecordingPermissionException('Microphone permission not granted');
      }
    }
    await _mRecorder!.openRecorder();
    if (!await _mRecorder!.isEncoderSupported(_codec) && kIsWeb) {
      _codec = Codec.opusWebM;
      _mPath = 'tau_file.webm';
      if (!await _mRecorder!.isEncoderSupported(_codec) && kIsWeb) {
        _mRecorderIsInited = true;
        return;
      }
    }
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration(
      avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
      avAudioSessionCategoryOptions:
          AVAudioSessionCategoryOptions.allowBluetooth |
              AVAudioSessionCategoryOptions.defaultToSpeaker,
      avAudioSessionMode: AVAudioSessionMode.spokenAudio,
      avAudioSessionRouteSharingPolicy:
          AVAudioSessionRouteSharingPolicy.defaultPolicy,
      avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
      androidAudioAttributes: const AndroidAudioAttributes(
        contentType: AndroidAudioContentType.speech,
        flags: AndroidAudioFlags.none,
        usage: AndroidAudioUsage.voiceCommunication,
      ),
      androidAudioFocusGainType: AndroidAudioFocusGainType.gain,
      androidWillPauseWhenDucked: true,
    ));

    _mRecorderIsInited = true;
  }

  // ----------------------  Here is the code for recording and playback -------
  void record() {
    _mRecorder!
        .startRecorder(
      toFile: _mPath,
      codec: _codec,
      audioSource: theSource,
    )
        .then((value) {
      setState(() {});
    });
  }

  void stopRecorder() async {
    await _mRecorder!.stopRecorder().then((value) {
      setState(() {
        //var url = value;
        _mplaybackReady = true;
      });
    });
  }

  void play() {
    assert(_mPlayerIsInited &&
        _mplaybackReady &&
        _mRecorder!.isStopped &&
        _mPlayer!.isStopped);
    _mPlayer!
        .startPlayer(
            fromURI: _mPath,
            //codec: kIsWeb ? Codec.opusWebM : Codec.aacADTS,
            whenFinished: () {
              setState(() {});
            })
        .then((value) {
      setState(() {});
    });
  }

  void stopPlayer() {
    _mPlayer!.stopPlayer().then((value) {
      setState(() {});
    });
  }

// ----------------------------- UI --------------------------------------------
  _Fn? getRecorderFn() {
    if (!_mRecorderIsInited || !_mPlayer!.isStopped) {
      return null;
    }
    return _mRecorder!.isStopped ? record : stopRecorder;
  }

  _Fn? getPlaybackFn() {
    if (!_mPlayerIsInited || !_mplaybackReady || !_mRecorder!.isStopped) {
      return null;
    }
    return _mPlayer!.isStopped ? play : stopPlayer;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/tip.jpeg"),
            fit: BoxFit.fill,
          )),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 100.0),
                          child: ElevatedButton.icon(
                            onPressed: getRecorderFn(),
                            style: ElevatedButton.styleFrom(
                              primary: _mRecorder!.isRecording
                                  ? Colors.red
                                  : Colors.green,
                            ),
                            icon: Icon(
                              _mRecorder!.isRecording ? Icons.stop : Icons.mic,
                              size: 25,
                            ),
                            label: Text(
                              '',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: ElevatedButton.icon(
                            onPressed: getPlaybackFn(),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                            icon: _mPlayer!.isPlaying
                                ? Icon(
                                    Icons.stop,
                                    size: 25,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.play_arrow_sharp,
                                    size: 25,
                                    color: Colors.green,
                                  ),
                            label: Text(
                              '',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 60.0, top: 40),
                    child: Container(
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                            border: Border.all(
                              width: 3,
                              color: Colors.indigoAccent,
                            )),
                        child: PageView(
                          padEnds: true,
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/f/family.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 260),
                                  child: const Text(
                                    "JOINT FAMILY",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: Colors.black,
                                        letterSpacing: 3,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final player = AudioCache();
                                player.play('fp/family.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/f/fan.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 260),
                                  child: const Text(
                                    "HITS THE FAN",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: Colors.black,
                                        letterSpacing: 3,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final player = AudioCache();
                                player.play('fp/fan.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/f/farmer.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 260),
                                  child: const Text(
                                    "HARWORKING FARMER",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: Colors.black,
                                        letterSpacing: 3,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final player = AudioCache();
                                player.play('fp/farmer.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/f/fish.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 260),
                                  child: const Text(
                                    "FISH OUT OF WATER",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: Colors.black,
                                        letterSpacing: 3,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final player = AudioCache();
                                player.play('fp/fish.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/f/flag.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 260),
                                  child: const Text(
                                    "PAKISTANI FLAG",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: Colors.black,
                                        letterSpacing: 3,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final player = AudioCache();
                                player.play('fp/flag.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/f/flower.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 260),
                                  child: const Text(
                                    "ALWAYS PICK FLOWER",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: Colors.black,
                                        letterSpacing: 3,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final player = AudioCache();
                                player.play('fp/flower.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/f/fox.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 260),
                                  child: const Text(
                                    "CLEVER FOX",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: Colors.black,
                                        letterSpacing: 3,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final player = AudioCache();
                                player.play('fp/fox.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/f/fridge.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 260),
                                  child: const Text(
                                    "MINI FRIDGE",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: Colors.black,
                                        letterSpacing: 3,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final player = AudioCache();
                                player.play('fp/fridge.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/f/fruit.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 260),
                                  child: const Text(
                                    "HEALTHY FRUITS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: Colors.black,
                                        letterSpacing: 3,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final player = AudioCache();
                                player.play('fp/fruit.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/f/football.jpg'),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    )),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 260),
                                  child: const Text(
                                    "FOOTBALL TEAM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        backgroundColor: Colors.white,
                                        color: Colors.black,
                                        letterSpacing: 3,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              onTap: () {
                                final player = AudioCache();
                                player.play('fp/football.mp3');
                              },
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
