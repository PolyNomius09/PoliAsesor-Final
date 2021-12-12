/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Administrador
 */
public class Conexion {
    public static Connection getConnection(){
        String url = "jdbc:sqlserver://poliserver1.database.windows.net:1433;database=PoliAsesor;user=Administrador@poliserver1;password=P0liA5esor;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;";
                    //driver:gestorbd:puerto//IP/nombrebd
                    
     
        Connection con = null;
        
        
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
            con = DriverManager.getConnection(url);
            
            System.out.println("Conexion Exitosa con la BD");
        
        }catch(Exception e){
            System.out.println("Error al conectar la BD");
            System.out.println(e.getMessage());
        
        }
        return con;
    }
    
}


