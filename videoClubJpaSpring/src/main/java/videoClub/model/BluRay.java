package videoClub.model;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("bluray")
public class BluRay extends Article {
	@Column(name = "trois_d")
	private boolean troisD;

	public BluRay() {

	}

	public boolean getTroisD() {
		return troisD;
	}

	public void setTroisD(boolean troisD) {
		this.troisD = troisD;
	}

}
