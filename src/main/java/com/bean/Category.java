package com.bean;

public class Category {
    private Integer id;

    private String category;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category == null ? null : category.trim();
    }

	public Category(Integer id, String category) {
		super();
		this.id = id;
		this.category = category;
	}

	public Category() {
		super();
	}
    
	
    
}