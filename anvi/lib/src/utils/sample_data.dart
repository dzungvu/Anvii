import 'package:anvi/src/models/base_info.dart';
import 'package:anvi/src/models/character_detail.dart';
import 'package:anvi/src/models/character_info.dart';
import 'package:anvi/src/models/discovery_item.dart';
import 'package:anvi/src/models/film_genres_info.dart';
import 'package:anvi/src/models/film_info.dart';
import 'package:anvi/src/models/point.dart';
import 'package:anvi/src/models/popular_film_info.dart';
import 'package:anvi/src/models/trending_item_info.dart';
import 'package:anvi/src/models/bookmark_info.dart';
import 'package:anvi/src/models/user_info.dart';
import 'package:anvi/src/models/film_detail.dart';
import 'package:anvi/src/models/writer_info.dart';
import 'package:anvi/src/models/production_info.dart';
import 'package:anvi/src/models/search_result_info.dart';

class SampleData {
  static List<FilmInfo> getFilmList() {
    List<FilmInfo> data = [];
    for (int i = 0; i < 10; i++) {
      data.add(
        FilmInfo(
          id: '$i',
          productionName: getProductionList()[i],
          totalEpisode: getTotalEpsList()[i],
          currentEpisode: getCurrentEpsList()[i],
          animeName: getAnimeNameList()[i],
          authorName: getAuthorList()[i],
          thumbnailUrl: getThumbnailList()[i],
          status: 0,
          publishTime: "Mar 15th 2012",
        ),
      );
    }
    return data;
  }

  static FilmDetail getFilmDetail() {
    return FilmDetail(
      bgImageUrl:
          'https://regus1.files.wordpress.com/2016/02/anime-banner-1.jpg',
      filmInfo: SampleData.getFilmList()[0],
      characters: getListCharacter(),
      points: getPoints(),
      filmRelateds: getFilmList(),
      productionInfo: getProductionInfo(),
      writterInfo: getWriter(),
      description:
          "Death Note (Japanese: デスノート, Hepburn: Desu Nōto) is a Japanese manga series written by Tsugumi Ohba and illustrated by Takeshi Obata. The story follows Light Yagami, a teen genius[3] who stumbles across a mysterious otherworldly notebook: the \"Death Note\", which belonged to the Shinigami Ryuk, and grants the user the supernatural ability to kill anyone whose name is written in its pages. The series centers around Light's subsequent attempts to use the Death Note to carry out a worldwide massacre of individuals whom he deems morally unworthy of life to change the world into a utopian society without crime, using the alias of a god-like vigilante named \"Kira\" (\"キラ\", the Japanese transliteration of the English word: killer) and the subsequent efforts of an elite task-force of law enforcement officers, consisting of members of the Japanese police force, led by L, an enigmatic international detective whose past is shrouded in mystery, to apprehend him and end his reign of terror.",
      totalSeason: "2",
    );
  }

  static WriterInfo getWriter() {
    return WriterInfo(
        id: 'wt00001',
        imageUrl:
            'https://cdn.iconscout.com/icon/free/png-256/content-writing-1405748-1185046.png',
        name: getAuthorList()[1],
        writerUrl: '');
  }

  static ProductionInfo getProductionInfo() {
    return ProductionInfo(
        id: 'pd00001',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/BANDAI_NAMCO_logo.svg/300px-BANDAI_NAMCO_logo.svg.png',
        name: 'Bandai Namco',
        productionUrl: 'https://www.bandainamcoent.com');
  }

  static List<Point> getPoints() {
    List<Point> points = [];
    points.add(Point(
      id: '1',
      name: 'IMDb',
      point: '4.5',
      image: 'https://img.icons8.com/all/500/imdb.png',
    ));

    return points;
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
          publishTime: "Mar 15 2020",
        ),
      );
    }
    return data;
  }

  static List<DiscoveryItem> getDiscoveryList() {
    List<DiscoveryItem> data = [];
    data.add(
      DiscoveryItem(
        id: '0',
        imageUrl:
            'https://www.pandemic-legion.pl/forums/uploads/monthly_2017_07/super_anime_banner_collage_by_bellebelle410-d505zns.jpg.a2c1a77923e50a39450426be855f8d8d.jpg',
        type: 0,
        title: 'Discovery film 1',
        description: '2010 • 500 Tập • 15.02.2010',
      ),
    );
    data.add(
      DiscoveryItem(
        id: '1',
        imageUrl:
            'https://c4.wallpaperflare.com/wallpaper/651/144/865/anime-crossover-albedo-overlord-ash-ketchum-wallpaper-preview.jpg',
        type: 0,
        title: 'Discovery film 2',
        description:
            'Description discovery film 2 Description discovery film 2 Description discovery film 2',
      ),
    );
    data.add(
      DiscoveryItem(
        id: '2',
        imageUrl:
            'https://i2.wp.com/news.qoo-app.com/wp-content/uploads/2017/12/17122607442160.jpg',
        type: 1,
        title: 'Discovery character 1',
        description:
            'Description discovery character 1 Description discovery character 1 Description discovery character 1 ',
      ),
    );
    data.add(
      DiscoveryItem(
        id: '3',
        imageUrl:
            'https://d2jcw5q7j4vmo4.cloudfront.net/ZVSDLK0DIT3uzOGY5B2-mNaTbK_9SE7nswGy2oDTuF2zNPzi6_dTNoxVDopdabh7tQ=w1440-h620',
        type: 0,
        title: 'Discovery character 2',
        description:
            'Description discovery character 2 Description discovery character 2 Description discovery character 2 ',
      ),
    );

    return data;
  }

  static List<PopularFilmInfo> getPopularFilmList() {
    List<PopularFilmInfo> listData = [];
    for (int i = 0; i < 10; i++) {
      var film = getFilmList()[i];
      listData.add(
        PopularFilmInfo(
          authorName: film.authorName,
          title: film.animeName,
          imageUrl: film.thumbnailUrl,
          id: '1',
        ),
      );
    }
    return listData;
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

  static List<CharacterInfo> getListCharacter() {
    List<CharacterInfo> data = [];
    for (int i = 0; i < 10; i++) {
      data.add(CharacterInfo(
          id: '$i',
          characterName: getListCharaterName()[i],
          characterImage: getListCharaterImage()[i],
          longDes: getListCharacterLongDes()[i],
          shortDes: getListCharacterShortDes()[i]));
    }
    return data;
  }

  static List<CharacterDetail> getListCharacterDetail() {
    List<CharacterDetail> data = [];
    for (int i = 0; i < 10; i++) {
      data.add(
        CharacterDetail(
          basicInfo: getListCharacter()[i],
          images: getListCharaterImage(),
          filmsRelated: getFilmList(),
          charactersRelated: getListCharacter(),
        ),
      );
    }
    return data;
  }

  static List<String> getListCharaterName() {
    return [
      'Kakashi HATAKE',
      'Light YAGAMI',
      'Lelouch LAMPEROUGE',
      'Natsu DRAGNEEL',
      'Ryuk',
      'Naruto UZUMAKI',
      'Kirito',
      'Roy MUSTANG',
      'Itachi UCHIHA',
      'Erza SCARLET',
    ];
  }

  static List<String> getListCharaterImage() {
    return [
      'https://i.pinimg.com/originals/f8/eb/c4/f8ebc44b1617f33c629bb882f0f55c9d.png',
      'https://i.pinimg.com/originals/0b/cd/2c/0bcd2c6d96d670a4105f26f722f4ba16.jpg',
      'https://qph.fs.quoracdn.net/main-qimg-391028616b3ba2d3dfcf8eb37a4c19d8',
      'https://buffy.mlpforums.com/monthly_2018_11/IMG_4603.JPG.cdfbe83c7711b349002c6eb02865e19f.JPG',
      'https://doitbeforeme.com/wp-content/uploads/2019/02/20-best-anime-character-designs-easy-drawing-ideas-for-beginners-2019-1-e1551384051185.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTkHmX9JLyqUJ4F7fXGNI3JSFfeXf74btG3HzfLpRBXIzL38QVF&usqp=CAU',
      'https://p.kindpng.com/picc/s/167-1671914_male-black-hair-anime-characters-png-download-black.png',
      '',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRCnntmCPydlvLHLqdNxq6B55zEAbO0mTQ8gVupw-IRhWRS2dym&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQEDDESC9VTLPAmu8vljCBYRxhz53UAI8x_PPwFrh9bFxcRj1dx&usqp=CAU',
    ];
  }

  static List<String> getListCharacterShortDes() {
    return [
      'Kakashi is a jounin ninja from Konoha who is known as a prodigy of his age after attaining his current rank at a young age.',
      'Armed with the power of Ryuk\'s Death Note, Light Yagami is cold, calculating and self-righteous to the extreme, believing that he alone is able to rid the world of corruption and evil.',
      'Lelouch\'s genius-level intellect is matched only by his single-minded desire for revenge on the Empire of Brittania.',
      'Natsu is a fire-based wizard from the Fairy Tail guild who has the nickname of ‘The Salamander’.',
      'Unknow',
      'Naruto is a young ninja with a single dream: that he will one day become the greatest shinobi in the village.',
      'Kirito is one of 10,000 players trapped in the MMORPG known as Sword Art Online.',
      'Colonel Mustang is one of the army\'s most powerful state alchemists.',
      'Itachi is a former Konoha ninja and elder brother of Sasuke, but now he works for Akatsuki.',
      'Erza is the strongest female wizard in the Fairy Tail guild and she has the magical ability to summon all sorts of weapons and armour as and when she needs it.',
    ];
  }

  static List<String> getListCharacterLongDes() {
    return [
      'Kakashi is a jounin ninja from Konoha who is known as a prodigy of his age after attaining his current rank at a young age. He was formerly part of the elite ANBU unit, but now he leads team Kakashi, teaching Naruto, Sasuke and Sakura. Though he appears to have a carefree attitude, often arriving late or reading ‘Make Out Tactics’, Kakashi is incredibly powerful in battle and his use of the sharingan has earned him the nickname of the ‘Copy Ninja’.',
      'Armed with the power of Ryuk\'s Death Note, Light Yagami is cold, calculating and self-righteous to the extreme, believing that he alone is able to rid the world of corruption and evil. With precisely-calculated moves, Light strategically manipulates friends and foes alike, no matter who he hurts – or kills – along the way. Above all else, Light\'s supreme confidence fuels his ongoing obsession with defeating L, his intellectual equal and rival. Always secretive as to his true identity, Light is known simply as \'Kira\' to the rest of the society – including his father, a detective assigned to investigate the ongoing, high profile murders.',
      'Lelouch\'s genius-level intellect is matched only by his single-minded desire for revenge on the Empire of Brittania. Besides his younger sister Nunnally and his best friend Suzaku, he cares for other people only in so far as they can help him achieve his goals. To aid him in his quest, C.C. planted a Geass in his left eye which allows him to command a target to perform any action, regardless of its consequences.',
      'Natsu is a fire-based wizard from the Fairy Tail guild who has the nickname of ‘The Salamander’. He has a rather large appetite, so he can often be found eating. Though Natsu is freakishly powerful, his biggest weakness is transportation and he tends to get extreme motion sickness that puts him out of commission. Natsu travels around with his companion, Happy, searching for Igneel, the dragon who raised the young magician – that is, when he’s not fighting with Gray.',
      'Unknow',
      'Naruto is a young ninja with a single dream: that he will one day become the greatest shinobi in the village. When he was young the Fourth Hokage sealed the nine-tailed demon fox within Naruto, and as a result he holds within him incredible power. Though he is not naturally talented or particularly intelligent, Naruto has the determination to succeed and works harder than anyone to achieve his goal. He has a particular like for eating ramen and utilising the Sexy technique jutsu on any unwilling male, but despite his laid-back and goofy attitude he cares deeply about his friends and would do anything to protect them.',
      'Kirito is one of 10,000 players trapped in the MMORPG known as Sword Art Online. He\'s recognized as a “Beater” to others for having restricted beta access before the death game started, and is harshly criticized for this unfair advantage. The skilled swordsman has condemned himself to a life of solitude as a result, and is determined to stay alive and reach Floor 100 to clear the game.Though he refuses to join a guild and has made enemies along the way, Kirito also has gained several allies: Asuna, who he briefly partnered with, and Klein, a newbie player he helped train at the start of the game. Unlike the majority of Sword Art Online\'s players who only look out for themselves, Kirito lends a hand to those in need.',
      'Colonel Mustang is one of the army\'s most powerful state alchemists. Going by the nickname of the Flame Alchemist he specialises in fighting with fire through the aid of his custom-made gloves. Mustang is a particularly ambitious man who aims to make it to the top of the military, and his loyal subordinates help him in any way they can. Though he can appear to be quite ruthless, Mustang has a strong sense of justice, cares deeply for his friends and frequently turns on the charm around beautiful ladies.',
      'Itachi is a former Konoha ninja and elder brother of Sasuke, but now he works for Akatsuki. Before leaving Konoha, Itachi was thought of as a genius of his generation and was one of the youngest members of ANBU, but went missing after commiting an atrocious crime. He is proficient in all forms of ninja arts having mastered all of the Uchiha clan techniques. He also possesses the Sharingan and his ability to wield its power far exceeds that of Kakashi.',
      'Erza is the strongest female wizard in the Fairy Tail guild and she has the magical ability to summon all sorts of weapons and armour as and when she needs it. She has a terrifying and harsh personality, and frequently strikes fear into the other guild members. As such she is the only one who can stop Natsu and Gray from fighting, as they don’t dare risk feeling her wrath.',
    ];
  }

  static List<FilmGenresInfo> getListFilmGenres() {
    return [
      FilmGenresInfo(
          id: '',
          name: 'Action',
          iconUrl:
              'https://icons.veryicon.com/png/System/iOS7%20Minimal/Movie%20Genres%20Horror%202.png',
          totalItem: '12,437'),
      FilmGenresInfo(
          id: '',
          name: 'Adventure',
          iconUrl:
              'https://icons.veryicon.com/png/System/iOS7%20Minimal/Movie%20Genres%20Horror%202.png',
          totalItem: '5,353'),
      FilmGenresInfo(
          id: '',
          name: 'Comedy',
          iconUrl:
              'https://icons.veryicon.com/png/System/iOS7%20Minimal/Movie%20Genres%20Horror%202.png',
          totalItem: '1,122'),
      FilmGenresInfo(
          id: '',
          name: 'Crime',
          iconUrl:
              'https://icons.veryicon.com/png/System/iOS7%20Minimal/Movie%20Genres%20Horror%202.png',
          totalItem: '6,312'),
      FilmGenresInfo(
          id: '',
          name: 'Drama',
          iconUrl:
              'https://icons.veryicon.com/png/System/iOS7%20Minimal/Movie%20Genres%20Horror%202.png',
          totalItem: '9,092'),
      FilmGenresInfo(
          id: '',
          name: 'Fantasy',
          iconUrl:
              'https://icons.veryicon.com/png/System/iOS7%20Minimal/Movie%20Genres%20Horror%202.png',
          totalItem: '2,127'),
      FilmGenresInfo(
          id: '',
          name: 'Historical',
          iconUrl:
              'https://icons.veryicon.com/png/System/iOS7%20Minimal/Movie%20Genres%20Horror%202.png',
          totalItem: '13,117'),
      FilmGenresInfo(
          id: '',
          name: 'Historical fiction',
          iconUrl:
              'https://icons.veryicon.com/png/System/iOS7%20Minimal/Movie%20Genres%20Horror%202.png',
          totalItem: '403'),
      FilmGenresInfo(
          id: '',
          name: 'Horror',
          iconUrl:
              'https://icons.veryicon.com/png/System/iOS7%20Minimal/Movie%20Genres%20Horror%202.png',
          totalItem: '1,900'),
      FilmGenresInfo(
          id: '',
          name: 'Magical realism',
          iconUrl:
              'https://icons.veryicon.com/png/System/iOS7%20Minimal/Movie%20Genres%20Horror%202.png',
          totalItem: '10,040'),
    ];
  }

  static List<TrendingItemInfo> getListTrending() {
    return [
      TrendingItemInfo(id: "", title: "Uchiha Madara"),
      TrendingItemInfo(id: "", title: "Shikamaru"),
      TrendingItemInfo(id: "", title: "Kiba"),
      TrendingItemInfo(id: "", title: "Choji"),
      TrendingItemInfo(id: "", title: "Hinata"),
    ];
  }

  static BookmarkInfo getBookmarkInfo() {
    return BookmarkInfo(
      listFilm: getFilmList(),
      listCharacter: getListCharacter(),
    );
  }

  static UserInfo getUserInfo() {
    return UserInfo(
      username: 'juzung_dev',
      email: 'dzungvucs@gmail.com',
      age: '24',
      gender: 'Male',
      avatar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR_Ngy4QOszrDxr3dAFHqsWRONTxmiGSukjzRUvJKWJGcoz-9JO&usqp=CAU',
    );
  }

  static SearchResultInfo getSearchResult() {
    return SearchResultInfo(
      listFilm: getFilmList(),
      listCharacter: getListCharacter(),
    );
  }
}
