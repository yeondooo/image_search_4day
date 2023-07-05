import 'package:image_search_4day/data/dto/pixabay_result_dto.dart';
import 'package:image_search_4day/domain/model/photo.dart';

extension ToPhoto on Hits {
  Photo toPhoto() {
    return Photo(
      id: id ?? 0,
      webformatURL: webformatURL ?? '',
      views: views ?? 0,
    );
  }
}
