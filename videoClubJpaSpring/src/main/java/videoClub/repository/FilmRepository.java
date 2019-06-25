package videoClub.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import videoClub.model.Film;
import videoClub.model.Realisateur;

public interface FilmRepository extends JpaRepository<Film, Integer> {
 List<Realisateur> findAllWithRealisateurs();
	
}
