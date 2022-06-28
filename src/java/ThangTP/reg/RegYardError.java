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
public class RegYardError implements Serializable{
    private String yardIDError;
    private String userIDError;
    private String yardNameError;
    private String yardImageError;
    private String yardAddressError;
    private String yardDistrictError;
    private String yardMoringPriceError;
    private String yardNightPriceError;
    private String yardMessError;
    private String yardDelflagError;

    public RegYardError() {
    }

    public RegYardError(String yardIDError, String userIDError, String yardNameError, String yardImageError, String yardAddressError, String yardDistrictError, String yardMoringPriceError, String yardNightPriceError, String yardMessError, String yardDelflagError) {
        this.yardIDError = yardIDError;
        this.userIDError = userIDError;
        this.yardNameError = yardNameError;
        this.yardImageError = yardImageError;
        this.yardAddressError = yardAddressError;
        this.yardDistrictError = yardDistrictError;
        this.yardMoringPriceError = yardMoringPriceError;
        this.yardNightPriceError = yardNightPriceError;
        this.yardMessError = yardMessError;
        this.yardDelflagError = yardDelflagError;
    }

    public String getYardIDError() {
        return yardIDError;
    }

    public void setYardIDError(String yardIDError) {
        this.yardIDError = yardIDError;
    }

    public String getUserIDError() {
        return userIDError;
    }

    public void setUserIDError(String userIDError) {
        this.userIDError = userIDError;
    }

    public String getYardNameError() {
        return yardNameError;
    }

    public void setYardNameError(String yardNameError) {
        this.yardNameError = yardNameError;
    }

    public String getYardImageError() {
        return yardImageError;
    }

    public void setYardImageError(String yardImageError) {
        this.yardImageError = yardImageError;
    }

    public String getYardAddressError() {
        return yardAddressError;
    }

    public void setYardAddressError(String yardAddressError) {
        this.yardAddressError = yardAddressError;
    }

    public String getYardDistrictError() {
        return yardDistrictError;
    }

    public void setYardDistrictError(String yardDistrictError) {
        this.yardDistrictError = yardDistrictError;
    }

    public String getYardMoringPriceError() {
        return yardMoringPriceError;
    }

    public void setYardMoringPriceError(String yardMoringPriceError) {
        this.yardMoringPriceError = yardMoringPriceError;
    }

    public String getYardNightPriceError() {
        return yardNightPriceError;
    }

    public void setYardNightPriceError(String yardNightPriceError) {
        this.yardNightPriceError = yardNightPriceError;
    }

    public String getYardMessError() {
        return yardMessError;
    }

    public void setYardMessError(String yardMessError) {
        this.yardMessError = yardMessError;
    }

    public String getYardDelflagError() {
        return yardDelflagError;
    }

    public void setYardDelflagError(String yardDelflagError) {
        this.yardDelflagError = yardDelflagError;
    }
    
    
}
