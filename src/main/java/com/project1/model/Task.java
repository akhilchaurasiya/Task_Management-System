package com.project1.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Entity
@Getter
@Setter
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    private String description;

    private String priority;

    private LocalDate dueDate;

    @Enumerated(EnumType.STRING)
    private Status status;

    public enum Status {
        OPEN, CLOSED
    }
}
