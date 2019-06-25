package videoClub.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import videoClub.model.Adherent;
import videoClub.model.Film;

public interface AdherentRepository extends JpaRepository<Adherent, Integer> {

	/*
	 * @Query("select distinct a from Adherent a left join fetch a.articlesEmpruntes ae left join fetch ae.film"
	 * ) public List<Film> findAllWithArticles();
	 */
}
