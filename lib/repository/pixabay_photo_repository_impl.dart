import 'package:image_search_4day/api/pixabay_api.dart';
import 'package:image_search_4day/data/model/photo.dart';
import 'package:image_search_4day/mapper/photo_mapper.dart';
import 'package:image_search_4day/repository/photo_repository.dart';

class PixabayPhotoRepositoryImpl implements PhotoRepository {
  final _api = PixabayApi();

  @override
  Future<List<Photo>> getPhotos(String query) async {
    final ResultDto = await _api.getImages(query);

    if (ResultDto.hits == null) {
      return [];
    }

    return ResultDto.hits!.map((e) => e.toPhoto()).toList();
  }
}
