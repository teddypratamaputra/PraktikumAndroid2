import 'package:beritaa/common/failure.dart';
import 'package:beritaa/domain/entities/article.dart';
import 'package:beritaa/domain/repositories/article_repository.dart';
import 'package:dartz/dartz.dart';

class GetArticleCategory {
  final ArticleRepository repository;

  GetArticleCategory(this.repository);
  
  Future<Either<Failure, List<Article>>> execute(String category) {
    return repository.getArticleCategory(category);
  }
}
