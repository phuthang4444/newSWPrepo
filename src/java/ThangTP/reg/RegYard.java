/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ThangTP.reg;

import java.io.Serializable;

/**
 *
 * @author phuth
 */
public class RegYard implements Serializable {

    private int yardID;
    private String userID;
    private String yardName;
    private String yardImage;
    private String yardAddress;
    private String yardDistrict;
    private int yardMoringPrice;
    private int yardNightPrice;
    private boolean yardDelflag;

    public RegYard() {
    }

    public RegYard(int yardID, String userID, String yardName, String yardImage, String yardAddress, String yardDistrict, int yardMoringPrice, int yardNightPrice, boolean yardDelflag) {
        this.yardID = yardID;
        this.userID = userID;
        this.yardName = yardName;
        this.yardImage = yardImage;
        this.yardAddress = yardAddress;
        this.yardDistrict = yardDistrict;
        this.yardMoringPrice = yardMoringPrice;
        this.yardNightPrice = yardNightPrice;
        this.yardDelflag = yardDelflag;
    }

    public String getYardImage() {
        return yardImage;
    }

    public void setYardImage(String yardImage) {
        this.yardImage = yardImage;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getYardName() {
        return yardName;
    }

    public void setYardName(String yardName) {
        this.yardName = yardName;
    }

    public String getYardAddress() {
        return yardAddress;
    }

    public void setYardAddress(String yardAddress) {
        this.yardAddress = yardAddress;
    }

    public String getYardDistrict() {
        return yardDistrict;
    }

    public void setYardDistrict(String yardDistrict) {
        this.yardDistrict = yardDistrict;
    }

    public boolean isYardDelflag() {
        return yardDelflag;
    }

    public void setYardDelflag(boolean yardDelflag) {
        this.yardDelflag = yardDelflag;
    }

    public int getYardID() {
        return yardID;
    }

    public void setYardID(int yardID) {
        this.yardID = yardID;
    }

    public int getYardMoringPrice() {
        return yardMoringPrice;
    }

    public void setYardMoringPrice(int yardMoringPrice) {
        this.yardMoringPrice = yardMoringPrice;
    }

    public int getYardNightPrice() {
        return yardNightPrice;
    }

    public void setYardNightPrice(int yardNightPrice) {
        this.yardNightPrice = yardNightPrice;
    }

    @Override
    public String toString() {
        return "RegYard{" + "yardID=" + yardID + ", userID=" + userID + ", yardName=" + yardName + ", yardImage=" + yardImage + ", yardAddress=" + yardAddress + ", yardDistrict=" + yardDistrict + ", yardMoringPrice=" + yardMoringPrice + ", yardNightPrice=" + yardNightPrice + ", yardDelflag=" + yardDelflag + '}';
    }

    
}
