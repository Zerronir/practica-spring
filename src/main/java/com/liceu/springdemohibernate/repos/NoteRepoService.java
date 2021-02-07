package com.liceu.springdemohibernate.repos;

import com.liceu.springdemohibernate.entities.Note;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class NoteRepoService {

    @PersistenceContext
    private EntityManager entityManager;

}
