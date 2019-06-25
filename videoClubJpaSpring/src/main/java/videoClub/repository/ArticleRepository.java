package videoClub.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import videoClub.model.Article;

public interface ArticleRepository extends JpaRepository<Article, Integer> {

}
