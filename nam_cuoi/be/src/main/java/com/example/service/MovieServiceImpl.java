package com.example.service;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.ParseException;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dto.MovieDTO;
import com.example.entity.Movie;
import com.example.repository.MovieRepository;

@Service
@Transactional
public class MovieServiceImpl{
	@Autowired
	private MovieRepository mr;
	
	public List<Movie> listAll(){
		return mr.findAll();
	}
	public Movie save(Movie entity) {
		 return mr.save(entity);
	}
	public Movie get(Long id){
		
		return mr.findById(id).get();
	}
	
	public Optional<Movie> findById(Long id) {
		return mr.findById(id);
	}
	


	public void deleteById(Long id) {
		mr.deleteById(id);
}
	public void deleteAll() {
		mr.deleteAll();
	}
//	public boolean insertMovie(MovieDTO movieDTO)throws ParseException{
//		Movie movie=new Movie();
//		 return SettingObject(movie);
//	}

//	public void insert(MovieDTO movieDTO) throws ParseException{
//		Optional<Movie> optionalProduct=mr.findById(movieDTO.getId_movie());
//		Movie movie=null;
//		String image="Logo.png";
//		Path path=Paths.get("/imageMovie/");
//		if(optionalProduct.isPresent()) {
//			if(movieDTO.getPhoto().isEmpty()) {
//				image=optionalProduct.get().getImage();
//				
//			}else {
//				try {
//					InputStream inputStream=movieDTO.getPhoto().getInputStream();
//					Files.copy(inputStream, path.resolve(movieDTO.getPhoto().getOriginalFilename()),
//							StandardCopyOption.REPLACE_EXISTING);
//					image=movieDTO.getPhoto().getOriginalFilename().toString();
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//		}else {
//			if(!movieDTO.getPhoto().isEmpty()) {
//				try {
//					InputStream inputStream=movieDTO.getPhoto().getInputStream();
//					Files.copy(inputStream, path.resolve(movieDTO.getPhoto().getOriginalFilename()),
//							StandardCopyOption.REPLACE_EXISTING);
//					image=movieDTO.getPhoto().getOriginalFilename().toString();
//					
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//		}
//		movie=new Movie( image, movieDTO.getCategory(), movieDTO.getName_Movie(),movieDTO.getTl(), movieDTO.getContent());
//		mr.save(movie);
//		
//		
//	}
	
	
}
