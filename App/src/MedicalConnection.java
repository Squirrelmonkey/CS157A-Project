import java.lang.*;
import java.util.*;
import java.sql.*;
import java.io.*;

public class MedicalConnection {
    public static void connect(File DataFromUI, File ResultFile) {
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
                        TimeZone timeZone = TimeZone.getTimeZone("Asia/Kolkata");
                TimeZone.setDefault(timeZone);
                        Connection con = DriverManager.getConnection(oracleURL,UserName, Password);
                        Statement s = con.createStatement();
                        try {
                              File myObj = new File(DataFromUI +".txt");
                              Scanner myReader = new Scanner(DataFromUI);
                              while (myReader.hasNextLine()) {
                                String data = myReader.nextLine();
                                System.out.println(data);
                                String sql=data;
                                    s.executeQuery(sql);
                                        ResultSet res = s.getResultSet();
                                        ResultSetMetaData meta = res.getMetaData();
                                        int count = meta.getColumnCount();
                                        try{
                                        FileWriter myWriter = new FileWriter(ResultFile);
                                        if (res!=null) {
                                        while(res.next()) {
                                        for(int i =1 ; i < count; i++)
                                        {
                                                System.out.print(res.getString(i)+"\t");
                                                myWriter.write(res.getString(i)+"\t");
                                        }
                                        myWriter.write("\n");
                                        System.out.println();
                                        }
                                        }
                                        myWriter.close();
                                    }
                                    catch (IOException e) {
                                                                        System.out.println("An error occurred.");
                                                                        e.printStackTrace();
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
                File DataFile = new File(args[0]+".txt");
                File ResultFile = new File(args[1]+".txt");
                MedicalConnection.connect(DataFile,ResultFile);
        }

}
