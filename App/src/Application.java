import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;

import java.awt.*;
import java.io.*;
import java.util.ArrayList;
import java.util.List;


public class Application {

    private static void start() {
        JButton b1, bClose;
        JFrame startFrame = new JFrame ("Hospital Database");
        startFrame.setDefaultCloseOperation (JFrame.EXIT_ON_CLOSE);

        b1 = new JButton ("Start");
        b1.setBounds (90, 25, 100, 50);
        bClose = new JButton ("Close");
        bClose.setBounds (100, 85, 80, 40);
        b1.addActionListener (e -> {
            startFrame.dispose ();
            try {
                menu ();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        });
        bClose.addActionListener (e -> {startFrame.dispose ();});

        startFrame.setSize (300, 200);
        startFrame.setLayout (null);
        startFrame.add (b1);
        startFrame.add (bClose);
        startFrame.setLocationRelativeTo(null);
        startFrame.setVisible (true);

    }

    static void menu() throws IOException {
        JTextField t1;
        JButton b1, bClose, bText;

        String[] hospitalTables = {"Accountant", "Appointment", "AppointmentNotes", "AptGivenPrescription",
                "AptHasNotes", "Department", "Doctor", "DoctorGivesPrescription", "DoctorWritesAptNotes",
                "Employee", "EmployeeWorksForHospital", "Hospital", "HospitalContainDepartment",
                "HospitalHasService", "HospitalMakesAppointments", "Insurance", "HasInsurance", "IsAdmitted",
                "Medicine", "Nurse", "Patient", "PatientHasAppointment", "Pharmacist",
                "PharmacistWorkForPharmacy", "Pharmacy", "PharmacyContainsMedicine", "Prescription",
                "PrescriptionHaveMedicine", "Procedure", "ProcedureConductedInRoom", "ProcedureRequestedDuringApt",
                "Room", "RoomIsPresentInDep", "Service"};

        String[] AcceptedInputs = read("Queries/UserInputList.txt").toArray(new String[0]);
        String[] Queries = read("Queries/QueryList.txt").toArray(new String[0]);

        JFrame mFrame = new JFrame ("Menu");
        mFrame.setDefaultCloseOperation (JFrame.EXIT_ON_CLOSE);

        JComboBox<String> dropDown = new JComboBox<>(hospitalTables);
        dropDown.setBounds(60, 20, 160, 30);

        b1 = new JButton ("Check Table");
        b1.setBounds (80, 60, 120, 40);
        b1.addActionListener (e -> {
            String tableTitle = dropDown.getItemAt(dropDown.getSelectedIndex());
            System.out.println(tableTitle);
            queryTable(tableTitle);
            MedicalConnection.connect(new File("query.txt"), new File("results.txt"));
            mFrame.dispose ();
            Table(tableTitle);
        });

        t1 = new JTextField();
        t1.setLocation(60, 120);
        t1.setSize(160, 30);

        bText = new JButton("Query");
        bText.setBounds(99, 160, 80, 40);

        bText.addActionListener (e -> {
            boolean errored = true;

            for (String request : AcceptedInputs) {
                if (request.equals(t1.getText())) {
                    mFrame.setVisible(false);
                    Table(t1.getText());
                    mFrame.dispose ();
                    errored = false;

                }
        }

            if(errored){
                error("Invalid Request");
            }
        });

        bClose = new JButton ("Close");
        bClose.setBounds (99, 220, 80, 40);
        bClose.addActionListener (e -> mFrame.dispose ());

        mFrame.add (dropDown);
        mFrame.add (b1);
        mFrame.add (bClose);
        mFrame.add (t1);
        mFrame.add (bText);
        mFrame.setSize (300, 320);
        mFrame.setLayout (null);
        mFrame.setLocationRelativeTo(null);
        mFrame.setVisible (true);
    }

    public static ArrayList<String> read(String filePath) throws IOException {
        ArrayList<String> AcceptedInputs = new ArrayList<>();

        FileReader reader = new FileReader(filePath);
        BufferedReader bReader = new BufferedReader(reader);
        while(bReader.ready()){
            AcceptedInputs.add(bReader.readLine());
        }

        return(AcceptedInputs);
    }

    static void error(String errorText){
        JFrame errorFrame = new JFrame();

        JLabel errorLabel = new JLabel();
        errorLabel.setText(errorText);
        errorLabel.setBounds(20, 20, 100, 20 );

        JButton e1 = new JButton("Ok");
        e1.setBounds (35, 50, 50, 30);
        e1.addActionListener (e -> errorFrame.dispose ());

        errorFrame.add(errorLabel);
        errorFrame.add(e1);
        errorFrame.setSize (100, 130);
        errorFrame.setLayout (null);
        errorFrame.setLocationRelativeTo(null);
        errorFrame.setVisible (true);
    }
    
    static void queryTable(String tableTitle){
        String data = "SELECT* FROM " + tableTitle;
        try {
            PrintWriter output = new PrintWriter("query.txt");
            output.print(data);
            output.close();
        }
        catch(Exception e) {
            e.getStackTrace();
        }       
    }

    public static void Table(String title) {
        EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                try {
                    UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
                } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | UnsupportedLookAndFeelException ex) {
                    ex.printStackTrace();
                }

                String[] columnNames = getColumnNames();
                Object[][] data = getData();


                DefaultTableModel model = new DefaultTableModel(data, columnNames);
                JTable table = new JTable(model);
                TableRowSorter<TableModel> sorter = new TableRowSorter<TableModel>(table.getModel());
                table.setRowSorter(sorter);

                List<RowSorter.SortKey> sortKeys = new ArrayList<>(25);
                sortKeys.add(new RowSorter.SortKey(0, SortOrder.ASCENDING));
                sortKeys.add(new RowSorter.SortKey(1, SortOrder.ASCENDING));

                JFrame frame = new JFrame(title);

                JButton bBack = new JButton("Back");
                bBack.addActionListener (e -> {
                    frame.dispose();
                    try {
                        Application.menu();
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                });

                JPanel tPanel = new JPanel(new GridLayout(1, 0, 3, 3));
                tPanel.add(bBack);

                JPanel mPanel = new JPanel();

                frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                mPanel.add(tPanel, BorderLayout.LINE_START);
                mPanel.add(new JScrollPane(table), BorderLayout.CENTER);
                frame.add(mPanel);
                frame.pack();
                frame.setLocationRelativeTo(null);
                frame.setVisible(true);
            }
        });
    }

    public static String[] getColumnNames(){

        try{
            FileInputStream fstream = new FileInputStream("results.txt");
            DataInputStream in = new DataInputStream(fstream);
            BufferedReader br = new BufferedReader(new InputStreamReader(in));
            String strLine = br.readLine();
            return strLine.split("\\t");
        } catch (Exception e){
            System.err.println("Error: " + e.getMessage());
            return new String[0];
        }
    }

    public static Object[][] getData(){
        int lines = 0;
        try{
            BufferedReader reader = new BufferedReader(new FileReader("results.txt"));
            while (reader.readLine() != null) lines++;
            lines--;
            reader.close();
        } catch (Exception e){
            System.err.println("Error: " + e.getMessage());

        }

        try{
            FileInputStream fstream = new FileInputStream("results.txt");
            DataInputStream in = new DataInputStream(fstream);
            BufferedReader br = new BufferedReader(new InputStreamReader(in));
            String strLine = br.readLine();
            String[] rowData = strLine.split("\\t");
            Object[][] data = new Object[lines][rowData.length];
            int i = -1;
            while ((strLine = br.readLine()) != null)   {
                i++;
                rowData = strLine.split("\\t");
                System.arraycopy(rowData, 0, data[i], 0, rowData.length);
            }
            return data;
        } catch (Exception e){
            System.err.println("Error: " + e.getMessage());
            return new Object[0][0];
        }
    }

    public static void main(String[] args) {
        //Application application = new Application ();
        start ();
        //MedicalConnection med = new MedicalConnection();
        //med.connect(new File("Queries/QueryList.txt"));
    }
}
