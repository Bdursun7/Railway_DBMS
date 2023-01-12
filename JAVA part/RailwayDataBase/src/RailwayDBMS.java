import java.sql.*;
import java.util.Scanner;


public class RailwayDBMS {

    private static Connection connect = null;
    private static Statement statement = null;
    private static ResultSet resultSet = null;


    private final static String host = "jdbc:postgresql://10.98.98.61:5432/group57";
    private final static String user = "group57";
    private final static String password = "*********";
    private static boolean isRunning = true;

    public static void main(String[] args) {

        try{
            Connection connection = DriverManager.getConnection(host,user,password);
            statement = connection.createStatement();
            while(isRunning)
            {
                Menu();
            }



        }catch(SQLException e){
            System.out.println("Connection has been failed");
            e.printStackTrace();
        }
        finally {
            close();

        }
    }
    private static void Menu() throws SQLException {
        Scanner v1 = new Scanner(System.in);
        System.out.println("**************RAILWAY DBMS MENU**************");
        System.out.println("1-)Show the passengers list");
        System.out.println("2-)A new passenger who bought a ticket");
        System.out.println("3-)Show the tickets list where status is Res and payment method is Online");
        System.out.println("4-)Show the company list");
        System.out.println("5-)Show the train services list where the train names start with 'A'");
        System.out.println("6-)Update the companies' total income according to the taxes");
        System.out.println("7-) Update the ticket price if the payment method is online");
        System.out.println("8-) Delete ticket with the unknown status");
        System.out.println("9-)Exit the program");
        System.out.println("**************RAILWAY DBMS MENU**************");

        System.out.println("Enter your choice");
        int selection = v1.nextInt();
        v1.nextLine();

        if(selection == 1)
        {
            System.out.println("-----Passengers List-----");
            resultSet = statement.executeQuery("select first_name,last_name from passenger where age>18");
            writeResultSet(resultSet);
        }
        else if(selection == 2)
        {
            System.out.println("Enter the first name of the passenger");
            String fname = v1.next();
            System.out.println("Enter the last name of the passenger");
            String lname = v1.next();
            System.out.println("Enter the age of the passenger");
            int age = v1.nextInt();
            System.out.println("Enter the gender of the passenger");
            char gender = v1.next().charAt(0);
            System.out.println("Enter the ID of the passenger");
            int ID = v1.nextInt();
            System.out.println("Enter the Email of the passenger  (Optinal press 0 if it is not given)");
            String email = v1.next();
            if(email.equals('0'))
            {
                email ="";
            }
            statement.executeUpdate("insert into passenger (first_name,last_name,age,gender,passenger_id,Email)" +
                    "values('"+fname+"','"+lname+"','"+age+"','"+gender+"','"+ID+"','"+email+"')");

            System.out.println("Passenger added successfully");

        }
        else if(selection == 3)
        {
            System.out.println("-----Tickets List-----");
            resultSet = statement.executeQuery("select seat_number,ticket_date,ticket_id,status,payment_method from ticket where status = 'Res' and payment_method = 'Online'");
            writeResultSet(resultSet);

        }
        else if(selection == 4)
        {
            System.out.println("-----Companies List-----");
            resultSet = statement.executeQuery("select company_id,company_name,year, total_income from company ");
            writeResultSet(resultSet);


        }
        else if(selection == 5)
        {
            System.out.println("-----Train Services List-----");
            resultSet = statement.executeQuery("select train_name, beginnig , ending, seat_check from train_service where train_name like 'A%'");
            writeResultSet(resultSet);

        }
        else if(selection == 6)
        {
            System.out.println("Taxes are being executed....");

            statement.executeUpdate("update company set total_income = total_income*95/100 where total_income>1000000");

            System.out.println("Process has been completed");
        }
        else if(selection == 7)
        {
            System.out.println("Sales has been calculated...");

            statement.executeUpdate("update ticket set price = price*90/100 where payment_method = 'Online'");

            System.out.println("Process has been completed");

        }
        else if(selection == 8)
        {
            System.out.println("Deletion request has been sent");
            statement.executeUpdate("delete from ticket where status = 'Unk'");
            System.out.println("Process has been completed");

        }

        else if(selection == 9)
        {
            System.out.println("Program shut downed");
            isRunning = false;

        }
        else{
            System.out.println("Wrong Input");
        }

    }

    private static void writeResultSet(ResultSet resultSet) throws SQLException{
        ResultSetMetaData rsmd = resultSet.getMetaData();
        int cn = rsmd.getColumnCount();
        while(resultSet.next())
        {
            for(int i =1;i<= cn;i++)
            {
                System.out.print(resultSet.getString(i) + " ");
            }
            System.out.println();

        }
    }
    private static void close()
    {
        try{
            if(resultSet != null)
                resultSet.close();
            if(statement != null)
                statement.close();
            if(connect != null)
                connect.close();
        }catch (Exception e){

        }

    }
}
