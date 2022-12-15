package com.mycompany.myapp;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataSourceTest {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://walab.handong.edu:3306/p3_22100766","p3_22100766","ahG7paiph9");
        }catch(Exception e){
            System.out.println(e);
        }
        return con;
    }

    public static void main(String ars[]) {
        Connection conn = getConnection();
        if(conn != null)
            System.out.println("DB 연결됨!");
        else
            System.out.println("DB 연결중 오류 !");
    }
}