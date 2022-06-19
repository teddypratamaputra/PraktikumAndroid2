import 'package:dartz/dartz.dart';
import 'package:beritaa/common/failure.dart';
import 'package:beritaa/domain/entities/article.dart';
import 'package:beritaa/domain/repositories/article_repository.dart';

class GetBookmarkArticles {
  final ArticleRepository _repository;
  
  GetBookmarkArticles(this._repository);
  
  Future<Either<Failure, List<Article>>> execute() {
    return _repository.getBookmarkArticles();
  }
}
