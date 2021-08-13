import 'dart:convert';

/// dates : {"maximum":"2021-09-08","minimum":"2021-08-18"}
/// page : 1
/// results : [{"adult":false,"backdrop_path":"/rAgsOIhqRS6tUthmHoqnqh9PIAE.jpg","genre_ids":[28,12,14],"id":436969,"original_language":"en","original_title":"The Suicide Squad","overview":"Supervillains Harley Quinn, Bloodsport, Peacemaker and a collection of nutty cons at Belle Reve prison join the super-secret, super-shady Task Force X as they are dropped off at the remote, enemy-infused island of Corto Maltese.","popularity":11135.763,"poster_path":"/kb4s0ML0iVZlG6wAKbbs9NAm6X.jpg","release_date":"2021-07-28","title":"The Suicide Squad","video":false,"vote_average":8.2,"vote_count":1711},{"adult":false,"backdrop_path":"/xXHZeb1yhJvnSHPzZDqee0zfMb6.jpg","genre_ids":[28,80,53],"id":385128,"original_language":"en","original_title":"F9","overview":"Dominic Toretto and his crew battle the most skilled assassin and high-performance driver they've ever encountered: his forsaken brother.","popularity":2850.409,"poster_path":"/bOFaAXmWWXC3Rbv4u4uM9ZSzRXP.jpg","release_date":"2021-05-19","title":"F9","video":false,"vote_average":7.7,"vote_count":2489},{"adult":false,"backdrop_path":"/gX5UrH1TLVVBwI7WxplW43BD6Z1.jpg","genre_ids":[16,35,12,10751],"id":459151,"original_language":"en","original_title":"The Boss Baby: Family Business","overview":"The Templeton brothers — Tim and his Boss Baby little bro Ted — have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again … and inspire a new family business.","popularity":2017.927,"poster_path":"/5dExO5G2iaaTxYnLIFKLWofDzyI.jpg","release_date":"2021-07-01","title":"The Boss Baby: Family Business","video":false,"vote_average":7.8,"vote_count":1115},{"adult":false,"backdrop_path":"/620hnMVLu6RSZW6a5rwO8gqpt0t.jpg","genre_ids":[16,35,10751,14],"id":508943,"original_language":"en","original_title":"Luca","overview":"Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-held secret: they are sea monsters from another world just below the water’s surface.","popularity":1999.17,"poster_path":"/jTswp6KyDYKtvC52GbHagrZbGvD.jpg","release_date":"2021-06-17","title":"Luca","video":false,"vote_average":8.1,"vote_count":3736},{"adult":false,"backdrop_path":"/tehpKMsls621GT9WUQie2Ft6LmP.jpg","genre_ids":[12,53,28,27,37],"id":602223,"original_language":"en","original_title":"The Forever Purge","overview":"All the rules are broken as a sect of lawless marauders decides that the annual Purge does not stop at daybreak and instead should never end as they chase a group of immigrants who they want to punish because of their harsh historical past.","popularity":1624.847,"poster_path":"/uHA5COgDzcxjpYSHHulrKVl6ByL.jpg","release_date":"2021-06-30","title":"The Forever Purge","video":false,"vote_average":7.7,"vote_count":890},{"adult":false,"backdrop_path":"/77tui163estZrQ78NBggqDB4n2C.jpg","genre_ids":[80,28,53],"id":637649,"original_language":"en","original_title":"Wrath of Man","overview":"A cold and mysterious new security guard for a Los Angeles cash truck company surprises his co-workers when he unleashes precision skills during a heist. The crew is left wondering who he is and where he came from. Soon, the marksman's ultimate motive becomes clear as he takes dramatic and irrevocable steps to settle a score.","popularity":1037.792,"poster_path":"/M7SUK85sKjaStg4TKhlAVyGlz3.jpg","release_date":"2021-04-22","title":"Wrath of Man","video":false,"vote_average":7.9,"vote_count":1812},{"adult":false,"backdrop_path":"/6FzuNrApEc71aJ3CwwkpadbNled.jpg","genre_ids":[28,35,80],"id":581644,"original_language":"en","original_title":"The Misfits","overview":"After being recruited by a group of unconventional thieves, renowned criminal Richard Pace finds himself caught up in an elaborate gold heist that promises to have far-reaching implications on his life and the lives of countless others.","popularity":809.123,"poster_path":"/dPOyYnCkRbWAEem85N3VFpQODf5.jpg","release_date":"2021-06-10","title":"The Misfits","video":false,"vote_average":5.4,"vote_count":98},{"adult":false,"backdrop_path":"/j28p5VwI5ieZnNwfeuZ5Ve3mPsn.jpg","genre_ids":[35,28,12,878],"id":550988,"original_language":"en","original_title":"Free Guy","overview":"A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.","popularity":803.241,"poster_path":"/yc2IfL701hGkNHRgzmF4C6VKO14.jpg","release_date":"2021-08-11","title":"Free Guy","video":false,"vote_average":8.2,"vote_count":31},{"adult":false,"backdrop_path":"/ok7RdHhVngnwkvKj09tvtOvypG.jpg","genre_ids":[80,18,53,9648],"id":649409,"original_language":"en","original_title":"No Sudden Move","overview":"A group of criminals are brought together under mysterious circumstances and have to work together to uncover what's really going on when their simple job goes completely sideways.","popularity":739.661,"poster_path":"/34BmdJkdvRweC3xJJFlOFQ2IbYc.jpg","release_date":"2021-06-24","title":"No Sudden Move","video":false,"vote_average":6.5,"vote_count":167},{"adult":false,"backdrop_path":"/hB8ypGAAq1YiyyTdCSQeFoXHPXW.jpg","genre_ids":[53,27],"id":482373,"original_language":"en","original_title":"Don't Breathe 2","overview":"The Blind Man has been hiding out for several years in an isolated cabin and has taken in and raised a young girl orphaned from a devastating house fire. Their quiet life together is shattered when a group of criminals kidnap the girl, forcing the Blind Man to leave his safe haven to save her.","popularity":554.834,"poster_path":"/aOu6PJVO9RyGAzdUwG6fupu0gpz.jpg","release_date":"2021-08-12","title":"Don't Breathe 2","video":false,"vote_average":6,"vote_count":3},{"adult":false,"backdrop_path":"/iTgM25ftE7YtFgZwUZupVp8A61S.jpg","genre_ids":[9648,53,27],"id":631843,"original_language":"en","original_title":"Old","overview":"A group of families on a tropical holiday discover that the secluded beach where they are staying is somehow causing them to age rapidly – reducing their entire lives into a single day.","popularity":535.245,"poster_path":"/cGLL4SY6jFjjUZkz2eFxgtCtGgK.jpg","release_date":"2021-07-21","title":"Old","video":false,"vote_average":6.3,"vote_count":354},{"adult":false,"backdrop_path":"/uWeffFhprUohUL5GO3YfQqdsVrI.jpg","genre_ids":[28,80,53,18],"id":615457,"original_language":"en","original_title":"Nobody","overview":"Hutch Mansell, a suburban dad, overlooked husband, nothing neighbor — a \"nobody.\" When two thieves break into his home one night, Hutch's unknown long-simmering rage is ignited and propels him on a brutal path that will uncover dark secrets he fought to leave behind.","popularity":453.933,"poster_path":"/oBgWY00bEFeZ9N25wWVyuQddbAo.jpg","release_date":"2021-03-18","title":"Nobody","video":false,"vote_average":8.4,"vote_count":2994},{"adult":false,"backdrop_path":"/ouOojiypBE6CD1aqcHPVq7cJf2R.jpg","genre_ids":[18,53,28],"id":578701,"original_language":"en","original_title":"Those Who Wish Me Dead","overview":"A young boy finds himself pursued by two assassins in the Montana wilderness, with a survival expert determined to protect him, and a forest fire threatening to consume them all.","popularity":422.935,"poster_path":"/xCEg6KowNISWvMh8GvPSxtdf9TO.jpg","release_date":"2021-05-05","title":"Those Who Wish Me Dead","video":false,"vote_average":7,"vote_count":730},{"adult":false,"backdrop_path":"/gJckSA3Evn5gouT62rytjLbTzoj.jpg","genre_ids":[28,35,53],"id":522931,"original_language":"en","original_title":"Hitman's Wife's Bodyguard","overview":"The world’s most lethal odd couple – bodyguard Michael Bryce and hitman Darius Kincaid – are back on another life-threatening mission. Still unlicensed and under scrutiny, Bryce is forced into action by Darius's even more volatile wife, the infamous international con artist Sonia Kincaid. As Bryce is driven over the edge by his two most dangerous protectees, the trio get in over their heads in a global plot and soon find that they are all that stand between Europe and a vengeful and powerful madman.","popularity":375.906,"poster_path":"/6zwGWDpY8Zu0L6W4SYWERBR8Msw.jpg","release_date":"2021-06-14","title":"Hitman's Wife's Bodyguard","video":false,"vote_average":6.9,"vote_count":454},{"adult":false,"backdrop_path":"/AmzVV7kqds8BJBXwnQtx5YpqFdU.jpg","genre_ids":[18,10749],"id":638449,"original_language":"en","original_title":"The Last Letter From Your Lover","overview":"A young journalist in London becomes obsessed with a series of letters she discovers that recounts an intense star-crossed love affair from the 1960s.","popularity":268.964,"poster_path":"/fDKK51YdOfu9pTmSRw7sHUhGFxm.jpg","release_date":"2021-07-23","title":"The Last Letter From Your Lover","video":false,"vote_average":7.5,"vote_count":151},{"adult":false,"backdrop_path":"/dyxBVVoSAITq7wQ0i9myPWObJ8J.jpg","genre_ids":[16,10751,12,35],"id":675445,"original_language":"en","original_title":"PAW Patrol: The Movie","overview":"Ryder and the pups are called to Adventure City to stop Mayor Humdinger from turning the bustling metropolis into a state of chaos, to insure “law and order”.","popularity":238.549,"poster_path":"/ic0intvXZSfBlYPIvWXpU1ivUCO.jpg","release_date":"2021-08-09","title":"PAW Patrol: The Movie","video":false,"vote_average":8,"vote_count":3},{"adult":false,"backdrop_path":null,"genre_ids":[10749,18],"id":744275,"original_language":"en","original_title":"After We Fell","overview":"Just as Tessa's life begins to become unglued, nothing is what she thought it would be. Not her friends nor her family. The only person that she should be able to rely on is Hardin, who is furious when he discovers the massive secret that she's been keeping. Before Tessa makes the biggest decision of her life, everything changes because of revelations about her family.","popularity":234.479,"poster_path":"/oOZITZodAja6optBgLh8ZZrgzbb.jpg","release_date":"2021-09-01","title":"After We Fell","video":false,"vote_average":0,"vote_count":0},{"adult":false,"backdrop_path":"/lQ1r7trIWYUeCCq6GbHzaUl0fNM.jpg","genre_ids":[28,12],"id":568620,"original_language":"en","original_title":"Snake Eyes: G.I. Joe Origins","overview":"After saving the life of their heir apparent, tenacious loner Snake Eyes is welcomed into an ancient Japanese clan called the Arashikage where he is taught the ways of the ninja warrior. But, when secrets from his past are revealed, Snake Eyes' honor and allegiance will be tested – even if that means losing the trust of those closest to him.","popularity":231.328,"poster_path":"/uIXF0sQGXOxQhbaEaKOi2VYlIL0.jpg","release_date":"2021-07-22","title":"Snake Eyes: G.I. Joe Origins","video":false,"vote_average":7.1,"vote_count":61},{"adult":false,"backdrop_path":"/4GlSMUpzSd3cliYGFJVziSDX53S.jpg","genre_ids":[12,14],"id":671,"original_language":"en","original_title":"Harry Potter and the Philosopher's Stone","overview":"Harry Potter has lived under the stairs at his aunt and uncle's house his whole life. But on his 11th birthday, he learns he's a powerful wizard -- with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry. As he learns to harness his newfound powers with the help of the school's kindly headmaster, Harry uncovers the truth about his parents' deaths -- and about the villain who's to blame.","popularity":213.871,"poster_path":"/wuMc08IPKEatf9rnMNXvIDxqP4W.jpg","release_date":"2001-11-16","title":"Harry Potter and the Philosopher's Stone","video":false,"vote_average":7.9,"vote_count":20772},{"adult":false,"backdrop_path":"/8Hs3LJ83GZFmJgfMUo0uoOopeGp.jpg","genre_ids":[80,53,28,9648],"id":693113,"original_language":"en","original_title":"Midnight in the Switchgrass","overview":"FBI Agent Karl Helter and his partner Rebecca Lombardo are very close to busting a sex-trafficking ring. When they realize their investigation has crossed the path of a brutal serial killer, they team up with a Texas Ranger to put an end to the infamous 'Truck Stop Killer'.","popularity":152.11,"poster_path":"/1OTSuh2HNcTRfme8caU8DjgJ39K.jpg","release_date":"2021-07-23","title":"Midnight in the Switchgrass","video":false,"vote_average":6.4,"vote_count":70}]
/// total_pages : 18
/// total_results : 350

class UpcomingMovieModel {
  Dates? _dates;
  int? _page;
  List<Results>? _results;
  int? _totalPages;
  int? _totalResults;

  Dates? get dates => _dates;
  int? get page => _page;
  List<Results>? get results => _results;
  int? get totalPages => _totalPages;
  int? get totalResults => _totalResults;

  UpcomingMovieModel({
      Dates? dates, 
      int? page, 
      List<Results>? results, 
      int? totalPages, 
      int? totalResults}){
    _dates = dates;
    _page = page;
    _results = results;
    _totalPages = totalPages;
    _totalResults = totalResults;
}

  UpcomingMovieModel.fromJson(dynamic json) {
    json = jsonDecode(json);
    _dates = json['dates'] != null ? Dates.fromJson(json['dates']) : null;
    _page = json['page'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
    _totalPages = json['total_pages'];
    _totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_dates != null) {
      map['dates'] = _dates?.toJson();
    }
    map['page'] = _page;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    map['total_pages'] = _totalPages;
    map['total_results'] = _totalResults;
    return map;
  }

}

/// adult : false
/// backdrop_path : "/rAgsOIhqRS6tUthmHoqnqh9PIAE.jpg"
/// genre_ids : [28,12,14]
/// id : 436969
/// original_language : "en"
/// original_title : "The Suicide Squad"
/// overview : "Supervillains Harley Quinn, Bloodsport, Peacemaker and a collection of nutty cons at Belle Reve prison join the super-secret, super-shady Task Force X as they are dropped off at the remote, enemy-infused island of Corto Maltese."
/// popularity : 11135.763
/// poster_path : "/kb4s0ML0iVZlG6wAKbbs9NAm6X.jpg"
/// release_date : "2021-07-28"
/// title : "The Suicide Squad"
/// video : false
/// vote_average : 8.2
/// vote_count : 1711

class Results {
  bool? _adult;
  String? _backdropPath;
  List<int>? _genreIds;
  int? _id;
  String? _originalLanguage;
  String? _originalTitle;
  String? _overview;
  double? _popularity;
  String? _posterPath;
  String? _releaseDate;
  String? _title;
  bool? _video;
  double? _voteAverage;
  int? _voteCount;

  bool? get adult => _adult;
  String? get backdropPath => _backdropPath;
  List<int>? get genreIds => _genreIds;
  int? get id => _id;
  String? get originalLanguage => _originalLanguage;
  String? get originalTitle => _originalTitle;
  String? get overview => _overview;
  double? get popularity => _popularity;
  String? get posterPath => _posterPath;
  String? get releaseDate => _releaseDate;
  String? get title => _title;
  bool? get video => _video;
  double? get voteAverage => _voteAverage;
  int? get voteCount => _voteCount;

  Results({
      bool? adult, 
      String? backdropPath, 
      List<int>? genreIds, 
      int? id, 
      String? originalLanguage, 
      String? originalTitle, 
      String? overview, 
      double? popularity, 
      String? posterPath, 
      String? releaseDate, 
      String? title, 
      bool? video, 
      double? voteAverage, 
      int? voteCount}){
    _adult = adult;
    _backdropPath = backdropPath;
    _genreIds = genreIds;
    _id = id;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _releaseDate = releaseDate;
    _title = title;
    _video = video;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
}

  Results.fromJson(dynamic json) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    _genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    _id = json['id'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _releaseDate = json['release_date'];
    _title = json['title'];
    _video = json['video'];
    _voteAverage = json['vote_average'].toDouble();
    _voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['adult'] = _adult;
    map['backdrop_path'] = _backdropPath;
    map['genre_ids'] = _genreIds;
    map['id'] = _id;
    map['original_language'] = _originalLanguage;
    map['original_title'] = _originalTitle;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    map['release_date'] = _releaseDate;
    map['title'] = _title;
    map['video'] = _video;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }

}

/// maximum : "2021-09-08"
/// minimum : "2021-08-18"

class Dates {
  String? _maximum;
  String? _minimum;

  String? get maximum => _maximum;
  String? get minimum => _minimum;

  Dates({
      String? maximum, 
      String? minimum}){
    _maximum = maximum;
    _minimum = minimum;
}

  Dates.fromJson(dynamic json) {
    _maximum = json['maximum'];
    _minimum = json['minimum'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['maximum'] = _maximum;
    map['minimum'] = _minimum;
    return map;
  }

}