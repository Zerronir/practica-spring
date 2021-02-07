package com.liceu.springdemohibernate.repos;

import com.liceu.springdemohibernate.entities.Note;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface NoteRepo extends JpaRepository<Note, Long> {
    List<Note> findByNoteOwnerEquals(Long id);
}
