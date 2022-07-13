/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ThangTP.reg;

/**
 *
 * @author phuth
 */
public class RegBooked {
    private String yardName;
    private String userFullName;
    private String yardBookedDate;
    private String yardFromTime;
    private String yardToTime;
    private int yardPrice;
    private String miniYardName;

    public RegBooked() {
    }

    public RegBooked(String yardName, String userFullName, String yardBookedDate, String yardFromTime, String yardToTime, int yardPrice, String miniYardName) {
        this.yardName = yardName;
        this.userFullName = userFullName;
        this.yardBookedDate = yardBookedDate;
        this.yardFromTime = yardFromTime;
        this.yardToTime = yardToTime;
        this.yardPrice = yardPrice;
        this.miniYardName = miniYardName;
    }

   
    public String getYardName() {
        return yardName;
    }

    public void setYardName(String yardName) {
        this.yardName = yardName;
    }

    public String getUserFullName() {
        return userFullName;
    }

    public void setUserFullName(String userFullName) {
        this.userFullName = userFullName;
    }

    public String getYardFromTime() {
        return yardFromTime;
    }

    public void setYardFromTime(String yardFromTime) {
        this.yardFromTime = yardFromTime;
    }

    public String getYardToTime() {
        return yardToTime;
    }

    public void setYardToTime(String yardToTime) {
        this.yardToTime = yardToTime;
    }

    public String getYardBookedDate() {
        return yardBookedDate;
    }

    public void setYardBookedDate(String yardBookedDate) {
        this.yardBookedDate = yardBookedDate;
    }

    public int getYardPrice() {
        return yardPrice;
    }

    public void setYardPrice(int yardPrice) {
        this.yardPrice = yardPrice;
    }

    public String getMiniYardName() {
        return miniYardName;
    }

    public void setMiniYardName(String miniYardName) {
        this.miniYardName = miniYardName;
    }
    
    
}
