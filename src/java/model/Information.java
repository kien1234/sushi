/*
* Information.java
*
* All Right Reserved
* Copyright (c) 2020 FPT University
 */
package model;

/**
 * Information.<br>
 *
 * <pre>
 * Class mô tả đối tượng Picture
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 * . GetId.
 * . SetId.
 * . GetAddress.
 * . SetAddress.
 * . GetTel.
 * . SetTel.
 * . GetEmail.
 * . SetEmail.
 * . GetOpeningHours.
 * . SetOpeningHours.
 * </pre>
 *
 * @author FU Kiennthe130540
 * @version 1.0
 */
public class Information {
    /**
     * Store id.
     */
    private int id;
    /**
     * Store address.
     */
    private String address;
    /**
     * Store tel.
     */
    private String tel;
    /**
     * Store email.
     */
    private String email;
    /**
     * Store opening hours.
     */
    private String openingHours;

    /**
     * Constructor no parameter.<br>
     */
    public Information() {
    }

    /**
     * Constructor full parameter<br>
     *
     * @param id
     * @param address 
     * @param tel 
     * @param email 
     * @param openingHours 
     */
    public Information(int id, String address, String tel, String email, String openingHours) {
        this.id = id;
        this.address = address;
        this.tel = tel;
        this.email = email;
        this.openingHours = openingHours;
    }

    /**
     * get id <br>
     *
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * Set id.<br>
     *
     * @param id the id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * get address <br>
     *
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * Set address.<br>
     *
     * @param address the address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * get tel <br>
     *
     * @return the tel
     */
    public String getTel() {
        return tel;
    }

    /**
     * Set tel.<br>
     *
     * @param tel the tel
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

    /**
     * get email <br>
     *
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * Set email.<br>
     *
     * @param email the email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * get opening hours <br>
     *
     * @return the opening hours
     */
    public String getOpeningHours() {
        return openingHours;
    }

    /**
     * Set opening hours.<br>
     *
     * @param openingHours the openingHours
     */
    public void setOpeningHours(String openingHours) {
        this.openingHours = openingHours;
    }
    
    
}
