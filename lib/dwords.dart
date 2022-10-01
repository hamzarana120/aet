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

class dwords extends StatefulWidget {
  @override
  _dwordsState createState() => _dwordsState();
}

class _dwordsState extends State<dwords> {
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
                                      image: AssetImage('assets/dpic/dad.jpg'),
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
                                    "D A D",
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
                                player.play('dword/dad.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/dpic/deer.jpg'),
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
                                    "D E E R",
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
                                player.play('dword/deer.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/dpic/dice.jpg'),
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
                                    "D I C E",
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
                                player.play('dword/dice.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/dpic/dinosaur.jpg'),
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
                                    "D I N O S A U R",
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
                                player.play('dword/dinosaur.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/dpic/diver.jpg'),
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
                                    "D I V E R",
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
                                player.play('dword/diver.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/dpic/dolphin.jpg'),
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
                                    "D O L P H I N",
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
                                player.play('dword/dolphin.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/dpic/donkey.jpg'),
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
                                    "D O N K E Y",
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
                                player.play('dword/donkey.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/dpic/door.jpg'),
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
                                    "D O O R",
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
                                player.play('dword/door.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/dpic/dragon.jpg'),
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
                                    "D R A G O N",
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
                                player.play('dword/dragon.mp3');
                              },
                            ),
                            InkWell(
                              child: Container(
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/dpic/duck.jpg'),
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
                                    "D U C K",
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
                                player.play('dword/duck.mp3');
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
