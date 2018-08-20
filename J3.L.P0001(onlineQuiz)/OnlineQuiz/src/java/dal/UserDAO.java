package dal;

import db.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Thaycacac
 */
public class UserDAO {

    public void addUser(String username, String password, int type, String email) {
        Connection con = null;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            String sql = "INSERT INTO dbo.[User] (username, password, email, type) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            stmt.setString(3, email);
            stmt.setInt(4, type);

            stmt.executeUpdate();
            stmt.close();
            con.close();
        } catch (SQLException ex) {

        }
    }

    public String getPassword(String username) {
        Connection con = null;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            String sql = "SELECT password FROM dbo.[User] WHERE username = '" + username + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                String password = rs.getString(1);
                return password;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public String getName(String username) {
        Connection con = null;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            String sql = "SELECT email FROM dbo.[User] WHERE username = '" + username + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                String email = rs.getString(1);
                int index = email.indexOf("@");
                return email.substring(0, index);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
