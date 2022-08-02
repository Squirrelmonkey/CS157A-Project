import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import javax.swing.table.TableRowSorter;

public class Table extends JPanel {
    public Table(String title) {
        EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                try {
                    UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
                } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | UnsupportedLookAndFeelException ex) {
                    ex.printStackTrace();
                }

                String[] columnNames = getCollumnNames();
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

    public String[] getCollumnNames(){
        
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
                System.arraycopy(rowData, 0, data[i], 0, rowData.length); 
             }
             return data;
        } catch (Exception e){
            System.err.println("Error: " + e.getMessage());
            return new Object[0][0];
        }
    }
}
