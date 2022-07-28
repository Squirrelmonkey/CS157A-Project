package com.company;
import javax.swing.*;

public class Application {

    private static void start(Application application) {
        JButton b1, b2;
        JFrame startFrame = new JFrame ("Hospital Database");
        startFrame.setDefaultCloseOperation (JFrame.EXIT_ON_CLOSE);

        b1 = new JButton ("Start");
        b1.setBounds (90, 25, 100, 50);
        b2 = new JButton ("Close");
        b2.setBounds (100, 85, 80, 40);
        b1.addActionListener (e -> {
            startFrame.dispose ();
            menu (application);
        });
        b2.addActionListener (e -> {
            startFrame.dispose ();
        });
        startFrame.setSize (300, 200);
        startFrame.setLayout (null);
        startFrame.add (b1);
        startFrame.add (b2);
        startFrame.setVisible (true);
    }

    private static void menu(Application application) {
        JRadioButton r1, r2, r3, r4;
        JButton b1, b2;

        JFrame mFrame = new JFrame ("Menu");
        mFrame.setDefaultCloseOperation (JFrame.EXIT_ON_CLOSE);

        r1 = new JRadioButton ("TEST1");
        r1.setBounds (100, 25, 100, 30);
        r2 = new JRadioButton ("TEST2");
        r2.setBounds (100, 75, 100, 30);
        r3 = new JRadioButton ("TEST3");
        r3.setBounds (100, 125, 100, 30);
        r4 = new JRadioButton ("TEST4");
        r4.setBounds (100, 175, 100, 30);
        ButtonGroup bg = new ButtonGroup ();
        bg.add (r1);
        bg.add (r2);
        bg.add (r3);
        bg.add (r4);

        b1 = new JButton ("Check Table");
        b1.setBounds (85, 225, 110, 50);
        b1.addActionListener (e -> {
            if (r1.isSelected ()) {
                System.out.println ("1");
                mFrame.dispose ();
                SimpleTableDemo.createAndShowGUI();
            } else if (r2.isSelected ()) {
                System.out.println ("2");
                mFrame.dispose ();
                SimpleTableDemo.createAndShowGUI();
            } else if (r3.isSelected ()) {
                System.out.println ("3");
                mFrame.dispose ();
                SimpleTableDemo.createAndShowGUI();
            } else if (r4.isSelected ()) {
                System.out.println ("4");
                mFrame.dispose ();
                SimpleTableDemo.createAndShowGUI();
            }

        });

        b2 = new JButton ("Close");
        b2.setBounds (99, 300, 80, 40);
        b2.addActionListener (e -> mFrame.dispose ());

        mFrame.add (r1);
        mFrame.add (r2);
        mFrame.add (r3);
        mFrame.add (r4);
        mFrame.add (b1);
        mFrame.add (b2);
        mFrame.setSize (300, 400);
        mFrame.setLayout (null);
        mFrame.setVisible (true);
    }

    public static void main(String[] args) {
        Application application = new Application ();
        start (application);
    }
}