class Book {
  List<Items>? items;

  Book({this.items});

  Book.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }
}

class Items {
  String? id;
  VolumeInfo? volumeInfo;

  Items({
    this.id,
    this.volumeInfo,
  });

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
  }
}

class VolumeInfo {
  String? title;
  String? subtitle;
  List<String>? authors;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  List<String>? categories;
  int? averageRating;
  int? ratingsCount;
  String? maturityRating;
  ImageLinks? imageLinks;
  String? previewLink;

  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.maturityRating,
    this.imageLinks,
    this.previewLink,
  });

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    authors = json['authors'] as List<String>?;
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = <IndustryIdentifiers>[];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers!.add(IndustryIdentifiers.fromJson(v));
      });
    }

    categories = json['categories'];
    averageRating = json['averageRating'];
    ratingsCount = json['ratingsCount'];
    maturityRating = json['maturityRating'];
    imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    previewLink = json['previewLink'];
  }
}

class IndustryIdentifiers {
  String? type;
  String? identifier;

  IndustryIdentifiers({this.type, this.identifier});

  IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    identifier = json['identifier'];
  }
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  ImageLinks.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
}
