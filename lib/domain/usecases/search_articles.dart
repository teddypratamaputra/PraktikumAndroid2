import 'package:dartz/dartz.dart';
import 'package:beritaa/common/failure.dart';
import 'package:beritaa/domain/entities/articles.dart';
import 'package:beritaa/domain/repositories/article_repository.dart';

class SearchArticles {
  final ArticleRepository repository;
  
  SearchArticles(this.repository);
  
  Future<Either<Failure, Articles>> execute(String query, {int page: 1}) {
    return repository.searchArticles(query, page: page);
  }
}
