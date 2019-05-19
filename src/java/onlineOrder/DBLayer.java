package onlineOrder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
/**
 *
 * @author oniketya
 */
public class DBLayer {
    private Connection conn;
    String dbURL = "jdbc:derby://localhost:1527/v1deneme2";
    String user = "admin";
    String password = "123456";
    public Connection baglan(){
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
           // System.out.println("Baglanti basarili!");
            conn = DriverManager.getConnection(dbURL, user, password);
        } catch(Exception e){
          //  System.out.println("Baglantida sorun var!");
        }
        return conn;
    }
    
    protected boolean searchUser(String email, String phone){
        if(conn == null){
            //System.out.println("Veritabani bagli degil\nBağlanmaya Çalışılıyor...");
            baglan();
        }
        try{            
            Statement stmt = conn.createStatement();
            ResultSet rs1 = stmt.executeQuery("select EMAIL from kullanici where EMAIL = '"+email+"'");
            if(!rs1.next()){
                return false;
            }
            ResultSet rs2 = stmt.executeQuery("select * from kullanici where PHONE='"+phone+"'");
            if(rs2.next()){
                return true;
            }
            
        } catch(Exception e){}
        return false;
    }
    public boolean userControl(String email, String sifre){
        if(conn == null){
           // System.out.println("Veritabani bagli degil");
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select password from KULLANICI where email = '"+email+"'");
            rs.next();
            return rs.getString(1).equals(sifre);
        } catch(Exception e){}
        return false;
    }
    public boolean insertUser(User user){
        if(conn == null){
           // System.out.println("Veritabani bagli degil");
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            stmt.executeUpdate("INSERT INTO \"ADMIN\".KULLANICI ("
                    + "PASSWORD,"
                    + "NAME,"
                    + "PHONE,"
                    + "EMAIL,"
                    + "ADDRESS,"
                    + "CREDITCARD) VALUES ('"
                    + user.password +"', '"
                    + user.getName() +"', '"
                    + user.getPhone() +"', '"
                    + user.getEmail() +"', '"
                    + user.getAddress() +"', '"
                    + user.getCredit() +"')");
           // System.out.println("onlineOrder.DBLayer.kisiKaydet()");
        } catch(Exception e){
            return false;
        }
        return true;
    }
    
    public boolean userInfoUpdate(User user){
        if(conn==null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            stmt.execute("update kullanici set name='"+user.getName()+"', "
                    + "phone='"+user.getPhone()+"',  "
                            + "address='"+user.getAddress()+"', "
                                    + "creditcard='"+user.getCredit()+"' "
                                            + "where email='"+user.getEmail()+"'");
        } catch(Exception e){return false;}
        return true;
    }
    
    public ArrayList<User> getUsers(int offset, int numData){
        if(conn == null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            ArrayList<User> users = new ArrayList<User>();
            User temp;
            int i = 0;
            ResultSet rs = stmt.executeQuery("SELECT * FROM KULLANICI OFFSET "+offset+" ROWS FETCH NEXT "+numData+" ROWS ONLY");
            while(rs.next()){
                    temp = new User(rs.getString(2), rs.getString(5), rs.getString(3), rs.getString(4), rs.getString(6), rs.getString(1), null, false);
                    users.add(temp);
            }
            return users;
        } catch(Exception e){}
        return null;
    }
    public User getUser(String email){
        if(conn == null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            User user;
            ResultSet rs = stmt.executeQuery("Select * From Kullanici Where email='"+email+"'");
            if(rs.next()){
                user = new User(rs.getString(2), rs.getString(5), rs.getString(3), rs.getString(4), null, rs.getString(1), null, true);
                return user;
            }
        } catch(Exception e) {}
        return null;
    }
    public boolean deleteUser(String email){
        if(conn==null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            stmt.execute("Delete from kullanici where email='"+email+"'");
        } catch(Exception e){return false;}
        return true;
    }
        
    public boolean addMenu(Menu menu){
        if(conn == null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("Select MAX(ID) From MENU");
            DB_Menu x= new DB_Menu();
            x.encapsulate(menu);
            rs.next();
            int id = rs.getInt(1);
            id++;
            stmt = conn.createStatement();
            stmt.executeUpdate("INSERT INTO \"ADMIN\".MENU ("
                    + "ID,"
                    + "MENU) VALUES ('"
                    + id+"', '"
                    + x.getList()+"')");
        } catch(Exception e){
            return false;
        }
        return true;
    }
    
    
    public ArrayList<Menu> getMenus(){
        if(conn == null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            ArrayList<Menu> menu= new ArrayList<Menu>();
            DB_Menu temp= new DB_Menu();
            Menu x;
            ResultSet rs = stmt.executeQuery("Select * From MENU");
            while(rs.next()){
                temp = new DB_Menu();
                temp.setID(rs.getInt(2));
                temp.setList(rs.getString(1));
                temp.setUser("");
                x= temp.decapsulate();
                menu.add(x);
            }
            return menu;
        } catch(Exception e){}
        return null;
    }
    
    
    public Menu getMenu(int id){
        if(conn == null){
           // System.out.println("Veritabani bagli degil");
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            DB_Menu x= new DB_Menu();
            ResultSet rs = stmt.executeQuery("Select * From MENU where id='"+ id +"'");
            if(rs.next()){
                x = new DB_Menu();
                x.setID(rs.getInt(2));
                x.setList(rs.getString(1));
                x.setUser("");
            }
            Menu menu= x.decapsulate();
            return menu;
        } catch(Exception e){}
        return null;
    }
    
    
    public boolean changeMenu(Menu menu){
        if(conn==null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            DB_Menu x= new DB_Menu();
            x.encapsulate(menu);
            stmt.execute("update MENU set index='"+x.getList()+"' where id='"+x.getID()+"'");
            return true;
        } catch(Exception e){return false;}
    }
    
    
    public boolean deleteMenu(int id){
        if(conn==null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            stmt.execute("Delete from MENU where id='"+id+"'");
        } catch(Exception e){return false;}
        return true;
    }
    
    
    public ArrayList<Menu> getOrders(String email){
        if(conn == null){
           // System.out.println("Veritabani bagli degil");
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            ArrayList<Menu> menu= new ArrayList<Menu>();
            DB_Menu x;
            ResultSet rs = stmt.executeQuery("Select * From POSTORDERS Where email='"+email+"'");
            while(rs .next()){
            	x= new DB_Menu();
            	x.setID(rs.getInt(1));
                x.setList(rs.getString(2));
                x.setUser(rs.getString(3));
                menu.add(x.decapsulate());
            }
            return menu;
        } catch(Exception e){}
        return null;
    }
    
    
    public boolean addOrder(DB_Menu menu){
        if(conn == null){
           // System.out.println("Veritabani bagli degil");
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("Select MAX(ID) From ORDER");
            rs.next();
            int id = rs.getInt(1);
            id++;
            stmt = conn.createStatement();
            stmt.executeUpdate("INSERT INTO \"ADMIN\".ORDER ("
                    + "ID,"
                    + "MENU,"
                    + "EMAIL) VALUES ('"
                    + id+"', '"
                    + menu.decapsulate()+"', '"
                    + menu.getUser()+"')");
        } catch(Exception e){
            return false;
        }
        return true;
    }
    
    public ArrayList<Product> getProducts(){
        if(conn == null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            ArrayList<Product> prod= new ArrayList<Product>();
            Product temp;
            ResultSet rs = stmt.executeQuery("Select * From PRODUCT");
            while(rs.next()){
                temp = new Product(rs.getInt(1), rs.getDouble(3), rs.getString(2), rs.getInt(4));
                prod.add(temp);
            }
            return prod;
        } catch(Exception e){}
        return null;
    }
    
    
    public Product getProduct(int x){
        if(conn == null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            Product temp= new Product(0, 0.0, "", 0);
            ResultSet rs = stmt.executeQuery("Select * From PRODUCT where ID='"+ x+ "'");
            if (rs.next())
            	temp = new Product(rs.getInt(1), rs.getDouble(3), rs.getString(2), rs.getInt(4));
            return temp;
        } catch(Exception e){}
        return null;
    }
    
       
    public boolean addProduct(Product prod){
        if(conn == null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("Select MAX(ID) From PRODUCT");
            rs.next();
            int id = rs.getInt(1);
            id++;
            stmt = conn.createStatement();
            stmt.executeUpdate("INSERT INTO \"ADMIN\".PRODUCT ("
                    + "ID,"
                    + "NAME,"
                    + "PRICE,"
                    + "TYPE) VALUES ('"
                    + id +"', '"
                    + prod.getName() +"', '"
                    + prod.getCost() +"', '"
                    + prod.getType() +"')");
        } catch(Exception e){
            return false;
        }
        return true;
    }
    
    public boolean changeProduct(Product prod){
        if(conn==null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            stmt.execute("update PRODUCT set name='"+prod.getName()+"', "
                            + "price='"+prod.getCost()+"',  "
                                + "category='"+prod.getType()+"', "
                                       + "where id='"+prod.getID()+"'");
        } catch(Exception e){return false;}
        return true;
    }
    
    
    public boolean deleteProduct(int id){
        if(conn==null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            stmt.execute("Delete from PRODUCT where id='"+id+"'");
        } catch(Exception e){return false;}
        return true;
    }
    
    
    public ArrayList<Menu> listOrders(){
        if(conn==null){
            baglan();
        }
        try{
            Statement stmt = conn.createStatement();
            DB_Menu temp;
            ArrayList<Menu> menu = new ArrayList<Menu>();
            ResultSet rs = stmt.executeQuery("Select * from POSTORDERS where DELIVERED=false");
            if (rs.next()){
                temp = new DB_Menu();
                temp.setID(rs.getInt(1));
                temp.setList(rs.getString(2));
                temp.setUser(rs.getString(3));
                menu.add(temp.decapsulate());
            }
            return menu;
        } catch(Exception e){return null;}
    }
}