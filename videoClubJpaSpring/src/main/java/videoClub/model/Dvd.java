package videoClub.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("dvd")
public class Dvd extends Article {
	private boolean bonus;

	public Dvd() {

	}

	public boolean getBonus() {
		return bonus;
	}

	public void setBonus(boolean bonus) {
		this.bonus = bonus;
	}

}
