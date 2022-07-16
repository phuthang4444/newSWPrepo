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

   private String yardImage;
   private String yardName;
   private String userFullName;
   private String yardAddress;
   private String yardDayPrice;
   private String yardNightprice;

    public RegYard() {
    }

    public RegYard(String yardImage, String yardName, String userFullName, String yardAddress, String yardDayPrice, String yardNightprice) {
        this.yardImage = yardImage;
        this.yardName = yardName;
        this.userFullName = userFullName;
        this.yardAddress = yardAddress;
        this.yardDayPrice = yardDayPrice;
        this.yardNightprice = yardNightprice;
    }

    public String getYardImage() {
        return yardImage;
    }

    public void setYardImage(String yardImage) {
        this.yardImage = yardImage;
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

    public String getYardAddress() {
        return yardAddress;
    }

    public void setYardAddress(String yardAddress) {
        this.yardAddress = yardAddress;
    }

    public String getYardDayPrice() {
        return yardDayPrice;
    }

    public void setYardDayPrice(String yardDayPrice) {
        this.yardDayPrice = yardDayPrice;
    }

    public String getYardNightprice() {
        return yardNightprice;
    }

    public void setYardNightprice(String yardNightprice) {
        this.yardNightprice = yardNightprice;
    }

    
    
}
