import 'package:equatable/equatable.dart';

class VideosModel extends Equatable {
  final String? url;
  final String? title;
  final String? type;
  final String? thumbnail;
  final String? category;

  const VideosModel({
    this.url,
    this.title,
    this.type,
    this.thumbnail,
    this.category,
  });

  factory VideosModel.fromJson(Map<String, dynamic> json) => VideosModel(
        url: json['url'] as String?,
        title: json['title'] as String?,
        type: json['type'] as String?,
        thumbnail: json['thumbnail'] as String?,
        category: json['caty'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'url': url,
        'title': title,
        'type': type,
        'thumbnail': thumbnail,
        'caty': category,
      };

  @override
  List<Object?> get props => [url, title, type, thumbnail, category];
}
