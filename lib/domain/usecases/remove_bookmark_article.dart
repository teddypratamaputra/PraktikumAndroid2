import 'package:dartz/dartz.dart';
import 'package:beritaa/common/failure.dart';
import 'package:beritaa/domain/entities/article.dart';
import 'package:beritaa/domain/repositories/article_repository.dart';

class RemoveBookmarkArticle {
  final ArticleRepository repository;
  
  RemoveBookmarkArticle(this.repository);
  
  Future<Either<Failure, String>> execute(Article article) {
    return repository.removeBookmarkArticle(article);
  }
}