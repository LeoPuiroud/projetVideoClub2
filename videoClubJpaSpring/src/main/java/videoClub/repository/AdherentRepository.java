package videoClub.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import videoClub.model.Adherent;

public interface AdherentRepository extends JpaRepository<Adherent, Integer> {

}
