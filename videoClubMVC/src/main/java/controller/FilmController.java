package controller;

import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import videoClub.model.Adherent;
import videoClub.model.Film;
import videoClub.repository.FilmRepository;

public class FilmController {

	
	FilmRepository filmRepository;
	
	@GetMapping("/list")
	public ModelAndView list() {
		return new ModelAndView("film/list", "film", filmRepository.findAll());
	}
	
	@GetMapping("/add")
	public ModelAndView add() {
		return goEdit(new Film());
	}
	
	private ModelAndView goEdit(Film film) {
		return new ModelAndView("film/edit", "film", film);
	}
	
	@GetMapping("/save")
	private ModelAndView save(Film film) {
		filmRepository.save(film);
		return new ModelAndView("redirect:/film/list");
	}

	
	@GetMapping("/edit")
	public ModelAndView edit(@RequestParam(name = "id") Integer id) {
		Optional<Film> opt = filmRepository.findById(id);
		if (opt.isPresent()) {
			return goEdit(opt.get());
		} else {
			return new ModelAndView("redirect:/film/list");
		}
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam(name = "id") int id) {
		Optional<Film> opt = filmRepository.findById(id);
		if (opt.isPresent()) {
			filmRepository.deleteById(id);
		}
		return "redirect:/film/list";
	}
	
}
