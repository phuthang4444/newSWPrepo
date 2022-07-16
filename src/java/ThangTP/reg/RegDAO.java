/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ThangTP.reg;

import ThangTP.Utils.DBHelpers;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;

/**
 *
 * @author Admin
 */
public class RegDAO implements Serializable {

    private Connection con = null;
    private PreparedStatement stm = null;
    private ResultSet rs = null;

    public void CloseAll() throws SQLException {
        if (con != null) {
            con.close();
        }
        if (stm != null) {
            stm.close();
        }
        if (rs != null) {
            rs.close();
        }
    }

    //function checklogin
    public RegDTO chkLogin(String username, String PhoneNumber, String password) throws /*ClassNotFoundException*/ SQLException, NamingException {
        RegDTO dto = null;
        try {
            //1. Connect DB
            con = DBHelpers.makeConnection();
            if (con != null) {
                //2. Create SQL statement String
                String sql = "Select Name, RoleId, Image, Email, DelFlag, PhoneNumber "
                        + "From [User] "
                        + "Where Id= ? And Password = ?";

                //3. create statement obj
                stm = con.prepareStatement(sql);
                stm.setString(1, username);
                stm.setString(2, password);
                //4. execute query
                rs = stm.executeQuery();
                //5. process result
                if (rs.next()) {
                    String phoneNumber = rs.getString("PhoneNumber");
                    String fullname = rs.getString("Name");
                    String image = rs.getString("Image");
                    String email = rs.getString("Email");
                    int role = rs.getInt("RoleId");
                    boolean delFlag = rs.getBoolean("DelFlag");
                    dto = new RegDTO(username, password, fullname, image, email, phoneNumber, role, delFlag);

                }
            }//end connenection
        } finally {
            CloseAll();
        }
        return dto;
    }

    //function register account
    public boolean RegisterAccount(RegDTO user) throws SQLException, NamingException {
        boolean check = false;
        try {
            //Connect to DB
            con = DBHelpers.makeConnection();

//            //create sql String
            if (con != null) {
                String sql = "Insert into [User](Id, Password, Name, Image, Email, PhoneNumber, RoleId, DelFlag)"
                        + " Values(?,?,?,null,?,?,1,0)";
                // Create Statment & assign value to parameter.
                stm = con.prepareStatement(sql);
                System.out.println(user.toString());
                stm.setString(1, user.getUsername());
                stm.setString(2, user.getPassword());
                stm.setString(3, user.getFullname());
                stm.setString(4, user.getEmail());
                stm.setString(5, user.getPhoneNumber());

                check = stm.executeUpdate() > 0;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            CloseAll();
        }
        return check;
    }

    //function check duplicate id account
    public boolean CheckDuplicate(String username) throws SQLException {
        boolean check = false;
        try {
            con = DBHelpers.makeConnection();
            String sql = "Select Id "
                    + "From [User] "
                    + "Where Id = ? ";
            stm = con.prepareStatement(sql);
            stm.setString(1, username);
            rs = stm.executeQuery();
            if (rs.next()) {
                check = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            CloseAll();
        }

        return check;
    }

    //function add yard
    //function check duplicate yard id
    public boolean CheckDuplicateYardID(int yardID) throws SQLException {
        boolean check = false;
        try {
            con = DBHelpers.makeConnection();
            String sql = "Select Id "
                    + "From Yard "
                    + "Where Id = ? ";
            stm = con.prepareStatement(sql);
            stm.setInt(1, yardID);
            rs = stm.executeQuery();
            if (rs.next()) {
                check = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            CloseAll();
        }

        return check;
    }

    //function delete yard
    public boolean deleteYard(int yardID) throws SQLException {
        boolean check = false;
        try {
            con = DBHelpers.makeConnection();
            if (con != null) {
                String sql = "Delete Yard "
                        + "Where Id = ?";
                stm = con.prepareStatement(sql);
                stm.setInt(1, yardID);
                int value = stm.executeUpdate();
                check = value > 0 ? true : false;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            CloseAll();
        }
        return check;
    }

    public List<RegYard> searchYardByName(String search) throws SQLException {
        List<RegYard> list = new ArrayList<>();
        try {
            
            con = DBHelpers.makeConnection();
            String sql = "Select YardImage, YardName, [User].Name, Address, NightPrice, DayPrice "
                    + "From Yard "
                    + "INNER JOIN [User] ON Yard.UserId  = [User].Id "
                    + "Where YardName like ?";
            stm = con.prepareStatement(sql);
            stm.setString(1,"%" +search +"%");
            rs = stm.executeQuery();
            while (rs.next()) {
                
                String yardName = rs.getString("YardName");
                String yardImage = rs.getString("YardImage");
                String userFullName = rs.getString("Name");
                String yardAddress = rs.getString("Address");
                int yardDayPrice = rs.getInt("DayPrice");
                int yardNightPrice = rs.getInt("NightPrice");
                list.add(new RegYard(yardImage, yardName, userFullName, yardAddress, yardDayPrice, yardNightPrice));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            CloseAll();
        }
        return list;
    }

}
