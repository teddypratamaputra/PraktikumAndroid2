import 'package:dartz/dartz.dart';
import 'package:beritaa/common/failure.dart';
import 'package:beritaa/domain/entities/article.dart';
import 'package:beritaa/domain/repositories/article_repository.dart';

class GetTopHeadlineArticles {
  final ArticleRepository repository;
  
  GetTopHeadlineArticles(this.repository);
  
  Future<Either<Failure, List<Article>>> execute() {
    return repository.getTopHeadlineArticles();
  }
}
