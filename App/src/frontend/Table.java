package frontend;


import javax.swing.*;

import java.awt.*;
import java.io.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;

public class Table extends JPanel {
/*
    public SimpleTableDemo() {
        super(new GridLayout(1,0));
        String[] columnNames = {"First Name",
                "Last Name",
                "Sport",
                "# of Years",
                "Vegetarian"};
        Object[][] data = {
                {"Kathy", "Smith",
                        "Snowboarding", 5, Boolean.FALSE},
                {"John", "Doe",
                        "Rowing", 3, Boolean.TRUE},
        };
        final JTable table = new JTable(data, columnNames);
        table.setPreferredScrollableViewportSize(new Dimension(500, 70));
        table.setFillsViewportHeight(true);
        //Create the scroll pane and add the table to it.
        JScrollPane scrollPane = new JScrollPane(table);
        //Add the scroll pane to this panel.
        add(scrollPane);
    }
    static void createAndShowGUI() {
        //Create and set up the window.
        JFrame frame = new JFrame("SimpleTableDemo");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        //Create and set up the content pane.
        SimpleTableDemo newContentPane = new SimpleTableDemo();
        newContentPane.setOpaque(true); //content panes must be opaque
        frame.setContentPane(newContentPane);
        //Display the window.
        frame.pack();
        frame.setVisible(true);
    }
*/
    public Table(String title) {
        EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                try {
                    UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
                } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | UnsupportedLookAndFeelException ex) {
                    ex.printStackTrace();
                }

                /* 
                String[] columnNames = {"First Name",
                        "Last Name",
                        "Sport",
                        "# of Years",
                        "Vegetarian","Vegetarian","Vegetarian","Vegetarian"};
                
                Object[][] data = {
                        {"Kathy", "Smith"},
                        {"John", "Doe"},
                        {"baa", "aoe"},
                        {"aaa", "Doe"},
                };
                */

                String[] columnNames = getCollumnNames();
                Object[][] data = getData();


                DefaultTableModel model = new DefaultTableModel(data, columnNames);
                /*model.addRow(new Object[]{"Prankster", "USA", "Microsoft Pvt Ltd", "Party'14", 900000});
                model.addRow(new Object[]{"Prankster", "USA", "crosoft Pvt Ltd", "Party'14", 900000});
                model.addRow(new Object[]{"rankster", "UA", "Microoft Pvt Ltd", "Party'14", 900000});
                model.addRow(new Object[]{"Prankster", "USA", "Microsoft Pvt Ltd", "Party'14", 900000});
                */
                JTable table = new JTable(model);
                TableRowSorter<TableModel> sorter = new TableRowSorter<TableModel>(table.getModel());
                table.setRowSorter(sorter);

                List<RowSorter.SortKey> sortKeys = new ArrayList<>(25);
                sortKeys.add(new RowSorter.SortKey(0, SortOrder.ASCENDING));
                sortKeys.add(new RowSorter.SortKey(1, SortOrder.ASCENDING));
                //sorter.setSortKeys(sortKeys);

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

    public String[] getCollumnNames(){
        
        try{
            FileInputStream fstream = new FileInputStream("results.txt");
            DataInputStream in = new DataInputStream(fstream);
            BufferedReader br = new BufferedReader(new InputStreamReader(in));
            String strLine = br.readLine();
            String[] collumns  = strLine.split("\\t");
            return collumns;
        } catch (Exception e){
            System.err.println("Error: " + e.getMessage());
            String[] empty = new String[0];
            return empty;
        }        
    }

    public Object[][] getData(){

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
                for(int j = 0; j < rowData.length; j++){
                    data[i][j] = rowData[j];
                } 
             }
             return data;
        } catch (Exception e){
            System.err.println("Error: " + e.getMessage());
            Object[][] empty = new Object[0][0];
            return empty;
        }

    }
}
