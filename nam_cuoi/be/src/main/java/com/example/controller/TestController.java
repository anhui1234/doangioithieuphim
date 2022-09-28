package com.example.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/test/")
@CrossOrigin(origins = "http://localhost:3000")
public class TestController {

    @GetMapping("/all")
    public String allAccess(){
        return "public Content.";
    }

    @GetMapping("/user")
    @PreAuthorize("hasRole('CUSTOMER') or hasRole('EDITOR') or hasRole('ADMIN')")
    public String userAccess(){
        return "User Content";
    }

    @GetMapping("/edi")
    @PreAuthorize("hasRole('EDITOR')")
    public String moderatorAccess() {
        return "Moderator Board.";
    }

    @GetMapping("/admin")
    @PreAuthorize("hasRole('ADMIN')")
    public String adminAccess() {
        return "Admin Board.";
    }

}
