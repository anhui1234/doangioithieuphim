package com.example.dto;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class MovieDTO implements Serializable{
	private Long id_movie;
	private MultipartFile photo;
	private String category;
	private String name_Movie;
	private String tl;
	private String content;
	public MovieDTO() {
		super();
	}
	public MovieDTO( MultipartFile photo, String category, String name_Movie, String tl,
			String content) {
		super();
		
		this.photo = photo;
		this.category = category;
		this.name_Movie = name_Movie;
		this.tl = tl;
		this.content = content;
	}
	public Long getId_movie() {
		return id_movie;
	}
	public void setId_movie(Long id_movie) {
		this.id_movie = id_movie;
	}
	public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
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
