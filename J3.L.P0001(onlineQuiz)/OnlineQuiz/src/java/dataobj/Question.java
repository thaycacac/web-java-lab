package dataobj;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author Thaycacac
 */
public class Question {

    private String id;
    private String question;
    private Date created;
    private ArrayList<Answer> listAnswer;

    public Question() {
    }

    public Question(String id, String question, Date created, ArrayList<Answer> listAnswer) {
        this.id = id;
        this.question = question;
        this.created = created;
        this.listAnswer = listAnswer;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public ArrayList<Answer> getListAnswer() {
        return listAnswer;
    }

    public void setListAnswer(ArrayList<Answer> listAnswer) {
        this.listAnswer = listAnswer;
    }

}
