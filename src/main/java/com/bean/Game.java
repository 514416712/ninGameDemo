package com.bean;


import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;


public class Game {
    private Integer id;

    private String game;

    private Double size;

    private Integer cid;
    
//    @JsonDeserialize(using = DateJsonDeserialize.class)
//    @JsonSerialize(using = DateJsonSerialize.class)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
    private Date createtime;
    
//    @JsonDeserialize(using = DateJsonDeserialize.class)
//    @JsonSerialize(using = DateJsonSerialize.class)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
    private Date modifitime;

    private String iconUrl;

    private String downloadUrl;

    private String rmark;

    private String description;

    /*非数据库字段*/
    private Category category;
    
    
    public Category getCategory() {
		return category;
	}
    
	public Game() {
		super();
	}


	@Override
	public String toString() {
		return "Game [id=" + id + ", game=" + game + ", size=" + size + ", cid=" + cid + ", createtime=" + createtime
				+ ", modifitime=" + modifitime + ", iconUrl=" + iconUrl + ", downloadUrl=" + downloadUrl + ", rmark="
				+ rmark + ", description=" + description + ", category=" + category + "]";
	}



	public Game(Integer id, String game, Double size, Integer cid, Date createtime, Date modifitime, String iconUrl,
			String downloadUrl, String rmark, String description) {
		super();
		this.id = id;
		this.game = game;
		this.size = size;
		this.cid = cid;
		this.createtime = createtime;
		this.modifitime = modifitime;
		this.iconUrl = iconUrl;
		this.downloadUrl = downloadUrl;
		this.rmark = rmark;
		this.description = description;
	}



	public void setCategory(Category category) {
		this.category = category;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGame() {
        return game;
    }

    public void setGame(String game) {
        this.game = game == null ? null : game.trim();
    }

    public Double getSize() {
        return size;
    }

    public void setSize(Double size) {
        this.size = size;
    }

    public Integer getcid() {
        return cid;
    }

    public void setcid(Integer cid) {
        this.cid = cid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getModifitime() {
        return modifitime;
    }

    public void setModifitime(Date modifitime) {
        this.modifitime = modifitime;
    }

    public String getIconUrl() {
        return iconUrl;
    }

    public void setIconUrl(String iconUrl) {
        this.iconUrl = iconUrl == null ? null : iconUrl.trim();
    }

    public String getDownloadUrl() {
        return downloadUrl;
    }

    public void setDownloadUrl(String downloadUrl) {
        this.downloadUrl = downloadUrl == null ? null : downloadUrl.trim();
    }

    public String getRmark() {
        return rmark;
    }

    public void setRmark(String rmark) {
        this.rmark = rmark == null ? null : rmark.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}