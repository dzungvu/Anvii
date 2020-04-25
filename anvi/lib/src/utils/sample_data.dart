import 'package:anvi/src/models/base_info.dart';
import 'package:anvi/src/models/film_info.dart';

class SampleData {
  static List<FilmInfo> getFilmList() {
    List<FilmInfo> data = [];
    for (int i = 0; i < 10; i++) {
      data.add(
        FilmInfo(
            productionName: getProductionList()[i],
            totalEpisode: getTotalEpsList()[i],
            currentEpisode: getCurrentEpsList()[i],
            baseInfo: BaseInfo(
                animeName: getAnimeNameList()[i],
                authorName: getAuthorList()[i],
                thumbnailUrl: getThumbnailList()[i],
                status: 0)),
      );
    }
    return data;
  }

  static List<BaseInfo> getBaseInfoList() {
    List<BaseInfo> data = [];
    for (int i = 0; i < 10; i++) {
      data.add(
        BaseInfo(
          animeName: getAnimeNameList()[i],
          authorName: getAuthorList()[i],
          thumbnailUrl: getThumbnailList()[i],
          status: 0,
        ),
      );
    }
    return data;
  }

  static List<String> getThumbnailList() {
    return [
      'https://animeuprising.com/wp-content/uploads/2018/06/p1157-youtube-thumbnail-720x405.jpg',
      'https://wallpaperhd.wiki/wp-content/uploads/4k-anime-wallpaper-anime-gas-mask-fantasy-uhdpaper.com-4k-266-wp.thumbnail.jpg',
      'https://img.wallpapersafari.com/desktop/1920/1080/33/10/UcE6no.jpg',
      'https://i1.wp.com/animecrackerz.com/wp-content/uploads/Carole-Tuesday-Reviews-Thumbnail.jpg',
      'https://i7.pngguru.com/preview/435/644/979/lala-satalin-deviluke-momo-belia-deviluke-to-love-ru-anime-anime-thumbnail.jpg',
      'https://i.pinimg.com/originals/e0/fc/9c/e0fc9c53b9a0bd3de5b6cea86934bd7f.jpg',
      'https://1.bp.blogspot.com/-eRAadxJ_KcQ/XdkncSrx2FI/AAAAAAAALIg/Y2SNuXPDrJA4e_YK-0321_Yj46MQxnlZwCLcBGAsYHQ/s1600/Shonen%2BJump.jpg',
      'https://t3.rbxcdn.com/2b795f079cf1c0bef4d48eaa500a8639',
      'https://static.bandainamcoent.eu/medium/my-hero-academia/my-hero-academia-one-justice-2/00-page-setup/mhoj2_game-thumbnail.jpg',
      'https://i.ytimg.com/vi/PdmBzj_CxVQ/maxresdefault.jpg',
    ];
  }

  static List<String> getAuthorList() {
    return [
      'Tsugumi Ohba',
      'Matsuri Hino',
      'Eiichiro Oda',
      'Yoshiki Nakamura',
      'Gosho Aoyama',
      'Rumiko Takahashi',
      'Masashi Kishimoto',
      'Jun Mochizuki',
      'Tite Kubo',
      'Julietta Suzuki',
    ];
  }

  static List<String> getAnimeNameList() {
    return [
      'Death Note, Vol. 1: Boredom (Death Note, #1)',
      'Vampire Knight, Vol. 1 (Vampire Knight, #1)',
      'One Piece, Volume 1: Romance Dawn ',
      'Skip Beat!, Vol. 01 ',
      'Case Closed, Vol. 1 (Meitantei Conan #1) ',
      'InuYasha: Turning Back Time (InuYasha, #1) ',
      'Naruto, Vol. 01: Uzumaki Naruto (Naruto, #1) ',
      'Pandora Hearts 1巻 ',
      'Bleach, Volume 01 ',
      'Kamisama Kiss, Vol. 1 (Kamisama Kiss, #1) ',
    ];
  }

  static List<String> getProductionList() {
    return [
      'Bandai Namco Pictures',
      'mw-redirect',
      'Bones (studio)',
      'C2C (studio)',
      'CloverWorks',
      'CoMix Wave Films',
      'C-Station',
      'Daume',
      'David Production',
      'Diomedéa',
    ];
  }

  static List<int> getTotalEpsList() {
    return [
      100,
      200,
      150,
      300,
      100,
      400,
      130,
      11,
      220,
      1000,
    ];
  }

  static List<int> getCurrentEpsList() {
    return [
      10,
      200,
      120,
      200,
      90,
      330,
      130,
      10,
      220,
      10,
    ];
  }
}
