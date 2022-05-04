package DTO;

import java.io.Serializable;

public class Product implements Serializable{
    
    public Product(String productId, String pname, Integer unitPrice) {
        super();
        this.productId = productId;
        this.pname = pname;
        this.unitPrice = unitPrice;
    }
    public Product() {
        super();
        // TODO Auto-generated constructor stub
    }
    private static final long serialVersionUID = -4274700572038677000L;

    private String productId;	//상품 아이디
    private String pname;	//상품명
    private Integer unitPrice;	//상품 가격
    private String description;	//상품 설명
    private String manufacturer;	//제조사
    private String category;	//분류
    private long unitsInSock;	//재고 수
    private String condition;	//신상품 or 중고품 or 재생품


    public String getProductId() {
        return productId;
    }
    public void setProductId(String productId) {
        this.productId = productId;
    }
    public String getPname() {
        return pname;
    }
    public void setPname(String pname) {
        this.pname = pname;
    }
    public Integer getUnitPrice() {
        return unitPrice;
    }
    public void setUnitPrice(Integer unitPrice) {
        this.unitPrice = unitPrice;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public String getManufacturer() {
        return manufacturer;
    }
    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
    public long getUnitsInSock() {
        return unitsInSock;
    }
    public void setUnitsInSock(long unitsInSock) {
        this.unitsInSock = unitsInSock;
    }
    public String getCondition() {
        return condition;
    }
    public void setCondition(String condition) {
        this.condition = condition;
    }


}