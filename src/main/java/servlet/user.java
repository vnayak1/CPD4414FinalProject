/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

/**
 *
 * @author vinayak
 */
public class user {
    
    
    private int id;
    private String image;
    private String name;
    private String detail;
    private String email;
    
    /**
     *
     */
    public user(){
    
    }

    /**
     *
     * @param id
     * @param image
     * @param name
     * @param detail
     * @param email
     */
    public user(int id, String image, String name, String detail, String email){
    
        
        this.id =id;
        this.image =image;
        this.name= name;
        this.detail=detail;                
        this.email=email;
    }

    /**
     *
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     *
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     *
     * @return image
     */
    public String getImage() {
        return image;
    }

    /**
     *
     * @param image
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     *
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     *
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     *
     * @return detail
     */
    public String getDetail() {
        return detail;
    }

    /**
     *
     * @param detail
     */
    public void setDetail(String detail) {
        this.detail = detail;
    }

    /**
     *
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }
    
    
    
    
    
}
