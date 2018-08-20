package dal;

import dataobj.Question;
import db.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Thaycacac
 */
public class QuestionDAO {

    public int countQuesion(String username) {
        Connection con;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            String sql = "select count(*) from Question where username = '" + username + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                int count = rs.getInt(1);
                return count;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    public ArrayList<Question> listQuestion(String username) {
        ArrayList<Question> listQuestion = new ArrayList<>();
        Connection con = null;
        DBContext db = new DBContext();
        try {
            con = db.getConnection();
            String sql = "select questionid, question, created from Question where username = '" + username + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                Date created = rs.getDate(3);
                Question question = new Question(id, name, created);
                listQuestion.add(question);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listQuestion;
    }
}
