/*
* Sushi.java
*
* All Right Reserved
* Copyright (c) 2020 FPT University
 */
package model;

/**
 * Sushi.<br>
 *
 * <pre>
 * Class mô tả đối tượng Picture
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 * . GetId.
 * . SetId.
 * . GetName.
 * . SetName.
 * . GetImage.
 * . SetImage.
 * . GetShortDes.
 * . SetShortDes.
 * . GetDetailDes.
 * . SetDetailDes.
 * . GetPrice.
 * . SetPrice.
 * </pre>
 *
 * @author FU Kiennthe130540
 * @version 1.0
 */
public class Sushi {
    /**
     * Store id.
     */
    private int id;
    /**
     * Store name.
     */
    private String name;
    /**
     * Store image.
     */
    private String image;
    /**
     * Store shortDes.
     */
    private String shortDes;
    /**
     * Store detailDes.
     */
    private String detailDes;
    /**
     * Store price.
     */
    private String price;

    /**
     * Constructor no parameter.<br>
     */
    public Sushi() {
    }

    /**
     * Constructor full parameter<br>
     *
     * @param id
     * @param name
     * @param image
     * @param shortDes
     * @param detailDes
     * @param price 
     */
    public Sushi(int id, String name, String image, String shortDes, String detailDes, String price) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.shortDes = shortDes;
        this.detailDes = detailDes;
        this.price = price;
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
     * get image <br>
     *
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * Set image.<br>
     *
     * @param image the image
     */
    public void setImage(String image) {
        this.image = image;
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
    
    
}
