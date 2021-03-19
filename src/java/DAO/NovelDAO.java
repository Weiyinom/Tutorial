/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import ConnectDB.DBContext;
import Entity.Account;
import Entity.Novel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bookm
 */
public class NovelDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String status = "";

    public List<Novel> loadNovel() {
        List<Novel> list = new ArrayList<>();
        String sql = "SELECT * FROM dbo.HE141254_DUCVD_Noval";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Novel(rs.getInt(1), rs.getString(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        NovelDAO noDAO = new NovelDAO();
        List<Novel> novel = noDAO.loadNovel();
        for (Novel novel1 : novel) {
            System.out.println(novel1);
        }
    }
}
