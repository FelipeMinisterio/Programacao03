package br.com.prog3.trabalho08.util;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import br.com.prog3.trabalho08.model.Multa;
import br.com.prog3.trabalho08.model.Veiculo;

public class HibernateUtil {
	private static SessionFactory sessionFactory;

	public static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
			// loads configuration and mappings
			Configuration configuration = new Configuration().configure();
			configuration.addPackage("br.com.prog3.model");
			configuration.addAnnotatedClass(Veiculo.class);
			configuration.addAnnotatedClass(Multa.class);
			ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
					.applySettings(configuration.getProperties()).build();
			// builds a session factory from the service registry
			sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		}
		return sessionFactory;
	}
}