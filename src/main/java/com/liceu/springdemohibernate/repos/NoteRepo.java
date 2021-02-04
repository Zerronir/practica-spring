package com.liceu.springdemohibernate.repos;

import com.liceu.springdemohibernate.entities.Note;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NoteRepo extends JpaRepository<Note, Long> {
}
