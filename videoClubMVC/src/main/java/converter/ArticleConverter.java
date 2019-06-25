package converter;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import videoClub.model.Article;
import videoClub.repository.ArticleRepository;

public class ArticleConverter implements Converter<String, Article> {

	@Autowired
	private ArticleRepository articleRepository;

	@Override
	public Article convert(String source) {
		if (!source.isEmpty()) {

			Optional<Article> opt = articleRepository.findById(Integer.parseInt(source));
			if (opt.isPresent()) {
				return opt.get();
			}
		}
		return null;
	}

}
