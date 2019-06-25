package videoClub.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import videoClub.model.FilmRealisateur;
import videoClub.model.FilmRealisateurPK;

public interface FilmRealisateurRepository extends JpaRepository<FilmRealisateur, FilmRealisateurPK> {

}
