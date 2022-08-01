package backend;

import java.lang.*;
import java.util.*;
import java.sql.*;
import java.io.*;

public class MedicalConnection {
    public static void connect(File DataFromUI)
    {
        System.out.println("I am in!");
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        }
        catch(ClassNotFoundException Exe)
        {
            System.out.println("There is an error loading the driver: ");
            Exe.printStackTrace();
        }

        String Host = "localhost";
        String DataBaseName = "XE";
        int Port = 1521;
        String oracleURL = "jdbc:oracle:thin:@" + Host + ":" + Port + ":" + DataBaseName;
        String UserName = "system";
        String Password = "oracle";


        try {
            Connection con = DriverManager.getConnection(oracleURL,UserName, Password);
            Statement s = con.createStatement();
            try {
                File myObj = new File("filename.txt");
                Scanner myReader = new Scanner(DataFromUI);
                while (myReader.hasNextLine()) {
                    String data = myReader.nextLine();
                    System.out.println(data);
                    String sql=data;
                    s.executeQuery(sql);
                    ResultSet res = s.getResultSet();
                    if (res!=null) {
                        while(res.next()) {
                            System.out.println("\n"+res.getString(1)
                                    + "\t"+res.getString(2));
                        }
                    }
                    System.out.println("Everything Seems good!");
                    con.close();
                }
                myReader.close();
            }
            catch (FileNotFoundException e) {
                System.out.println("An error occurred.");
                e.printStackTrace();
            }
        }
        catch (SQLException E) {
            System.out.println("SQLException:" + E.getMessage());
            System.out.println("SQLState:" + E.getSQLState());
            System.out.println("VendorError:" + E.getErrorCode());
        }
    }

    public static void main(String[] args)
    {
        //File DataFile = new File(args[0]+".txt");
        File DataFile = new File("Queries/QueryList.txt");
        MedicalConnection.connect(DataFile);

    }
}