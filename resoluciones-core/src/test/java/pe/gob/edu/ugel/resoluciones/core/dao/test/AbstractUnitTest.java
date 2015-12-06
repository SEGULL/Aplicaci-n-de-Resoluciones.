package pe.gob.edu.ugel.resoluciones.core.dao.test;

import org.springframework.test.AbstractTransactionalDataSourceSpringContextTests;

public class AbstractUnitTest extends AbstractTransactionalDataSourceSpringContextTests {

	@Override
	protected String[] getConfigLocations() {
		setPopulateProtectedVariables(true);
		setAutowireMode(AUTOWIRE_BY_TYPE);
		return new String[] { "pe/gob/edu/ugel/resoluciones/core/config/application-config.xml",
				"pe/gob/edu/ugel/resoluciones/core/config/applicationContext-dao.xml",
				"pe/gob/edu/ugel/resoluciones/service/config/applicationContext-service.xml"
				 

		};
	}

	public void testApp() {
		try {
			
		assertTrue(true);

		} catch (Exception e) {
			// TODO: handle exception
		System.out.println(e.getLocalizedMessage());
		}
	}

}
