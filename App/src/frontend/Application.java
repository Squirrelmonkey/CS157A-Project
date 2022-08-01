package frontend;
import javax.swing.*;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.io.PrintWriter;


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

        String[] AcceptedInputs = read().toArray(new String[0]);

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
            mFrame.dispose ();
            new Table(tableTitle);
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
                    new Table(t1.getText());
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

    public static ArrayList<String> read() throws IOException {
        ArrayList<String> AcceptedInputs = new ArrayList<>();

        FileReader reader = new FileReader("Queries/UserInputList.txt");
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

    public static void main(String[] args) {
        //Application application = new Application ();
        start ();
    }
}
