package com.liceu.springdemohibernate.controllers;

import com.liceu.springdemohibernate.entities.Note;
import com.liceu.springdemohibernate.entities.User;
import com.liceu.springdemohibernate.repos.NoteRepo;
import com.liceu.springdemohibernate.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class NotesController {

    @Autowired
    UserRepo userRepo;

    @Autowired
    NoteRepo noteRepo;

    @Autowired
    HttpSession httpSession;

    @GetMapping("/myNotes")
    public String showNotes() {
        String view = "";

        if(httpSession.getAttribute("user") != null) {

            User u = (User) httpSession.getAttribute("user");

            List<Note> noteList = noteRepo.findByNoteOwnerEquals(u.getUserId());

            httpSession.setAttribute("userNotes", noteList);

            view = "myNotes";

        } else {
            view = "redirect:/login";
        }

        return view;
    }

    @GetMapping("/createNote")
    public String viewNoteForm() {
        String view = "";


        if(httpSession.getAttribute("user") != null) {
            view = "createNote";
        } else {
            view = "redirect:/login";
        }


        return view;
    }

    @PostMapping("/createNote")
    public String noteCreation(@RequestParam("noteTitle") String title, @RequestParam("noteContent") String content){

        String view = "";

        if(httpSession.getAttribute("user") != null) {

            Note note = new Note();
            User u = (User) httpSession.getAttribute("user");
            note.setNoteTitle(title);
            note.setNoteOwner(u.getUserId());
            note.setNoteContent(content);

            noteRepo.save(note);
            httpSession.setAttribute("success", "La nota s'ha creat correctament");
            view = "redirect:/myNotes";

        } else {
            view = "redirect:/login";
        }

        return view;
    }

    @GetMapping("/viewNote/{noteId}")
    public String viewNote(@PathVariable("noteId") Long noteId) {
        String view = "";
        Long id = noteId;
        if(httpSession.getAttribute("user") != null) {

            Note note = noteRepo.getOne(id);

            if(httpSession.getAttribute("note") != null) {
                httpSession.removeAttribute("note");
                httpSession.setAttribute("note", note);
            } else {
                httpSession.setAttribute("note", note);
            }

            view = "note";

        } else {
            view = "redirect:/login";
        }

        return view;
    }

    @GetMapping("/deleteNote/{noteId}")
    public String deleteNote(@PathVariable("noteId") Long noteId) {
        String view = "";

        if(httpSession.getAttribute("user") != null) {

            noteRepo.deleteById(noteId);

            view = "redirect:/myNotes";

        } else {
            view = "redirect:/login";
        }

        return view;
    }


}
