/*
* Menu.java
*
* All Right Reserved
* Copyright (c) 2020 FPT University
 */
package model;

/**
 * Menu.<br>
 *
 * <pre>
 * Class mô tả đối tượng Picture
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 * . GetId.
 * . SetId.
 * . GetName.
 * . SetName.
 * . GetPrice.
 * . SetPrice.
 * . GetShortDes.
 * . SetShortDes.
 * . GetDetailDes.
 * . SetDetailDes.
 * </pre>
 *
 * @author FU Kiennthe130540
 * @version 1.0
 */
public class Menu {

    /**
     * Store id.
     */
    private int id;
    /**
     * Store name.
     */
    private String name;
    /**
     * Store price.
     */
    private String price;
    /**
     * Store shortDes.
     */
    private String shortDes;
    /**
     * Store detailDes.
     */
    private String detailDes;

    /**
     * Constructor no parameter.<br>
     */
    public Menu() {
    }

    /**
     * Constructor full parameter<br>
     *
     * @param id
     * @param name
     * @param price
     * @param shortDes
     * @param detailDes
     */
    public Menu(int id, String name, String price, String shortDes, String detailDes) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.shortDes = shortDes;
        this.detailDes = detailDes;
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
     * get name <br>
     *
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * Set name.<br>
     *
     * @param name the name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * get price <br>
     *
     * @return the price
     */
    public String getPrice() {
        return price;
    }

    /**
     * Set price.<br>
     *
     * @param price the price
     */
    public void setPrice(String price) {
        this.price = price;
    }

    /**
     * get short description <br>
     *
     * @return the short description
     */
    public String getShortDes() {
        return shortDes;
    }

    /**
     * Set short description.<br>
     *
     * @param shortDes the shortDes
     */
    public void setShortDes(String shortDes) {
        this.shortDes = shortDes;
    }

    /**
     * get detail description <br>
     *
     * @return the detail description
     */
    public String getDetailDes() {
        return detailDes;
    }

    /**
     * Set detail description.<br>
     *
     * @param detailDes the detailDes
     */
    public void setDetailDes(String detailDes) {
        this.detailDes = detailDes;
    }

}
