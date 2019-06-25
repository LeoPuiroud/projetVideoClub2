package controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import videoClub.model.Adherent;
import videoClub.repository.AdherentRepository;

@Controller
@RequestMapping("/adherent")
public class AdherentController {
	
	@Autowired
	AdherentRepository adherentRepository;

	
	@GetMapping("/list")
	public ModelAndView list() {
		return new ModelAndView("adherent/list", "adherent", adherentRepository.findAll());
	}
	
	@GetMapping("/add")
	public ModelAndView add() {
		return goEdit(new Adherent());
	}
	
	private ModelAndView goEdit(Adherent adherent) {
		return new ModelAndView("adherent/edit", "adherent", adherent);
	}
	
	@GetMapping("/save")
	private ModelAndView save(Adherent adherent) {
		adherentRepository.save(adherent);
		return new ModelAndView("redirect:/adherent/list");
	}

	
	@GetMapping("/edit")
	public ModelAndView edit(@RequestParam(name = "id") Integer id) {
		Optional<Adherent> opt = adherentRepository.findById(id);
		if (opt.isPresent()) {
			return goEdit(opt.get());
		} else {
			return new ModelAndView("redirect:/adherent/list");
		}
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam(name = "id") int id) {
		Optional<Adherent> opt = adherentRepository.findById(id);
		if (opt.isPresent()) {
			adherentRepository.deleteById(id);
		}
		return "redirect:/adherent/list";
	}
}
