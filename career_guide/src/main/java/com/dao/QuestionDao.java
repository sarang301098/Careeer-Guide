package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
 
import com.bean.QuestionBean;
import com.util.MySqlConnection;

public class QuestionDao {
	PreparedStatement pstmt;
    Connection conn;
    ResultSet rs;
    boolean flag = false;
	public List<QuestionBean>list()
    {
         
        List<QuestionBean> listOfQuestion = new  ArrayList<QuestionBean>();
         
        conn = MySqlConnection.getConnection();
        if(conn!=null)
        {
             
             
             
            try {
                Statement stmt = conn.createStatement();
                String selectSQL  = "select * from questionbank ;";
                 
                rs = stmt.executeQuery(selectSQL);
                 
                while(rs.next()){
                    QuestionBean eBean = new QuestionBean();
                    eBean.setQuestionid(rs.getString("questionid"));
                    eBean.setQuestion(rs.getString("question"));
                    eBean.setOptA(rs.getString("OptA"));
                    eBean.setOptB(rs.getString("OptB"));
                    eBean.setOptC(rs.getString("OptC"));
                    eBean.setField(rs.getString("field"));
//                    System.out.println(eBean.getEmployeeId());
//                    System.out.println(rs.getInt("employeeid"));
                    listOfQuestion.add(eBean);
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
             
             
        }
         
         
         
        return listOfQuestion;
         
    }
}
