package br.com.caelum.tarefas.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			return DriverManager.getConnection(
					"jdbc:mysql://localhost/fj21", "root", "m19731973f");
		} catch (SQLException e) {
			throw new RuntimeException("Erro na conexão com o Banco de dados.",
					e);
		}
	}
}
