package com.example.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.entity.Movie;
import com.example.repository.MovieRepository;


@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api/auth/")
public class ImageUploadController {
	@Autowired
	private MovieRepository mr;
	@RequestMapping(value="getimage/{image}",method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<ByteArrayResource>getImage(@PathVariable("image") String image){
		if(!image.equals("")||image!=null) {
			try {
				Path filename=Paths.get("imageMovie",image);
				byte[]buffer=Files.readAllBytes(filename);
				ByteArrayResource byteArrayResource=new ByteArrayResource(buffer);
				return ResponseEntity.ok()
						.contentLength(buffer.length)
						.contentType(MediaType.parseMediaType("image/png"))
						.body(byteArrayResource);
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return ResponseEntity.badRequest().build();
		
	}
	 @PostMapping("/{id}")
	    public ResponseEntity<Movie> insertImage(@PathVariable Long id,@RequestBody Movie setMovie){

	            Movie movie= mr.findById(id).orElseThrow(
	                    () -> new RuntimeException("Không tìm thấy user")
	            );
	            movie.setImage(setMovie.getImage());
	            mr.save(movie);
	            return new ResponseEntity<>(movie,HttpStatus.OK);
	            

	    }
}
