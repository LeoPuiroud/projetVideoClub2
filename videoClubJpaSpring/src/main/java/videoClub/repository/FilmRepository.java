package videoClub.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import videoClub.model.Film;

public interface FilmRepository extends JpaRepository<Film, Integer> {

}
