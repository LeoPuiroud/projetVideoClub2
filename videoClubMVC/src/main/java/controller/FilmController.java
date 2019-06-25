package controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import videoClub.model.Film;
import videoClub.repository.FilmRepository;

@Controller
@RequestMapping("/film")
public class FilmController {

	@Autowired
	FilmRepository filmRepository;
	
	@GetMapping("/list")
	public ModelAndView list() {
		
		
		return new ModelAndView("film/list", "films", filmRepository.findAllWithRealisateurs());
	}
	
	@GetMapping("/add")
	public ModelAndView add() {
		return goEdit(new Film());
	}
	
	private ModelAndView goEdit(Film film) {
		return new ModelAndView("film/edit", "films", film);
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
