package com.example.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="movie")
public class Movie{
	@Id
	@Column(name="id_Movie")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id_Movie;
	@Column(nullable = false,name="image")
	private String image;
	@Column(name="category_Movie")
	private String category;
	@Column(nullable = false,name="name_Movie")
	private String name_Movie;
	@Column(nullable = false,name="time_Movie")
	private String tl;
	@Column(nullable = false,name="content")
	private String content;
	public Movie() {
		super();
	}
	public Movie( String image, String category, String name_Movie, String tl, String content) {
		super();
		
		this.image = image;
		this.category = category;
		this.name_Movie = name_Movie;
		this.tl = tl;
		this.content = content;
	}
	public Long getId_Movie() {
		return id_Movie;
	}
	public void setId_Movie(Long id_Movie) {
		this.id_Movie = id_Movie;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getName_Movie() {
		return name_Movie;
	}
	public void setName_Movie(String name_Movie) {
		this.name_Movie = name_Movie;
	}
	public String getTl() {
		return tl;
	}
	public void setTl(String tl) {
		this.tl = tl;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	
	
}
