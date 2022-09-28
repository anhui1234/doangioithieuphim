package com.example.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.validation.Valid;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;


import com.example.dto.MovieDTO;
import com.example.entity.Movie;

import com.example.entity.User;
import com.example.exception.ResourceNotFoundException;
import com.example.repository.MovieRepository;
import com.example.service.MovieServiceImpl;



@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/auth/")
public class MovieController {
	@Autowired
	MovieServiceImpl ms;
	
	
	//Lấy ra danh sách phim
	@GetMapping("/movies")
	public List<Movie> getAllUser(){
		return ms.listAll();
	}
	@GetMapping("/movies/{id}")
	public ResponseEntity<?> getMovieDetail(@PathVariable Long id) {
		return ResponseEntity.ok(ms.get(id));
	}
	
//	@PutMapping("/movies/{id}")
//	public ResponseEntity<?>update(@RequestBody Movie movie,@PathVariable Long id){
//		try {
//			Movie exitM=ms.get(id);
//			ms.save(movie);
//			return new ResponseEntity<>(HttpStatus.OK);
//		} catch (Exception e) {
//			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
//		}
//	}
	@DeleteMapping("/delete/{id}")
	public void deleteMovie(@PathVariable("id")Long id) {
		ms.deleteById(id);
	}
	@PutMapping("/edit/{id}")
	public ResponseEntity<Movie>updateMovie(@PathVariable("id")Long id,@RequestBody Movie movie){
		
		Optional<Movie>optionMovie=ms.findById(id);
		if(optionMovie.isPresent()) {
			Movie _movie=optionMovie.get();
			_movie.setImage("imageMovie/"+movie.getImage());
			_movie.setCategory(movie.getCategory());
			_movie.setName_Movie(movie.getName_Movie());
			_movie.setTl(movie.getTl());
			_movie.setContent(movie.getContent());
			return new ResponseEntity<>(ms.save(_movie),HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		
	}
	@PostMapping("/movies")
public ResponseEntity<Movie>createMovie(@RequestBody Movie movie){
	try {
		Movie _movie=ms.save(new Movie("/imageMovie/"+movie.getImage(),movie.getCategory(),movie.getName_Movie(),movie.getTl(),movie.getContent()));
		return new ResponseEntity<>(_movie,HttpStatus.CREATED);
	}catch(Exception e) {
		return new ResponseEntity<>(null,HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
}
