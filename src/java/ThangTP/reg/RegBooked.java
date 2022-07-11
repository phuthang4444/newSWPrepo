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
    private int id;
    private int miniYardID;
    private String userID;
    private String fromTime;
    private String toTime;
    private float price;
    private String bookingDate;
    private String createDate;
    private int status;

    public RegBooked() {
    }

    public RegBooked(int id, int miniYardID, String userID, String fromTime, String toTime, float price, String bookingDate, String createDate, int status) {
        this.id = id;
        this.miniYardID = miniYardID;
        this.userID = userID;
        this.fromTime = fromTime;
        this.toTime = toTime;
        this.price = price;
        this.bookingDate = bookingDate;
        this.createDate = createDate;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMiniYardID() {
        return miniYardID;
    }

    public void setMiniYardID(int miniYardID) {
        this.miniYardID = miniYardID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getFromTime() {
        return fromTime;
    }

    public void setFromTime(String fromTime) {
        this.fromTime = fromTime;
    }

    public String getToTime() {
        return toTime;
    }

    public void setToTime(String toTime) {
        this.toTime = toTime;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    
}
