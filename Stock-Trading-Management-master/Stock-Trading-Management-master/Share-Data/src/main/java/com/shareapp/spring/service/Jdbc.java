package com.shareapp.spring.service;

import java.sql.*;

public class Jdbc {
    public static Connection JdbcConnect() throws SQLException {

        String url = "jdbc:mysql://localhost:3306/stockuser";
        String usn = "user1";
        String pw="password1";
        return  DriverManager.getConnection(url, usn, pw);

    }
}
