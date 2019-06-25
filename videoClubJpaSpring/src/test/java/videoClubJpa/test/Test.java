package videoClubJpa.test;

import static org.junit.Assert.assertNotNull;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import videoClub.repository.AdherentRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/application-context.xml" })
public class Test {

	@Autowired
	private AdherentRepository repo;

	@org.junit.Test
	public void test() {
		assertNotNull(repo);
	}

}
