import 'package:dartz/dartz.dart';
import 'package:beritaa/common/failure.dart';
import 'package:beritaa/domain/entities/article.dart';
import 'package:beritaa/domain/repositories/article_repository.dart';

class SaveBookmarkArticle {
  final ArticleRepository repository;
  
  SaveBookmarkArticle(this.repository);
  
  Future<Either<Failure, String>> execute(Article article) {
    return repository.saveBookmarkArticle(article);
  }
}
