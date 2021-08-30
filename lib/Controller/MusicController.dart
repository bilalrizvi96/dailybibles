import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';

class MusicController extends GetxController {
  AssetsAudioPlayer audioplayer = AssetsAudioPlayer();
  var select = false.obs;
  var musiclist = [
    'assets/462822996.mp3',
    'assets/880105774.mp3',
    'assets/1287094783.mp3',
    'assets/1529542868.mp3',
    'assets/2124844982.mp3',
    'assets/2312648006.mp3',
    'assets/2655748785.mp3',
    'assets/2935606353.mp3',
    'assets/3480755333.mp3',
    'assets/4043552595.mp3',
  ].obs;
  check({var index, var chec, var lenght}) async {
    // select.value = true;
    if (chec == true) {
      await audioplayer.play();
      audioplayer.open(Audio(index), autoStart: true, showNotification: true);
    } else if (chec == false) {
      await audioplayer.stop();
    }
    update();
  }
}
