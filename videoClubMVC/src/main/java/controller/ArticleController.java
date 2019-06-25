package controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import videoClub.repository.ArticleRepository;


@Controller
@RequestMapping("/article")
public class ArticleController {

	@Autowired
	private ArticleRepository armeRepository;

	@GetMapping("/list")
	public ModelAndView list() {
		return new ModelAndView("article/list", "articles", articleRepository.findAll());
	}

	@GetMapping("/addEpee")
	public ModelAndView addEpee() {
		return goEdit(new Epee());
	}

	@GetMapping("/addPistolet")
	public ModelAndView addPistolet() {
		return goEdit(new Pistolet());
	}

	private ModelAndView goEdit(Arme arme) {
		return new ModelAndView("arme/edit", "arme", arme);
	}

	@GetMapping("/saveEpee")
	public ModelAndView saveEpee(@ModelAttribute("arme") Epee e) {
		return save(e);
	}

	@GetMapping("/savePistolet")
	public ModelAndView savePistolet(@ModelAttribute("arme") Pistolet p) {
		return save(p);
	}

	private ModelAndView save(Arme arme) {
		armeRepository.save(arme);
		return new ModelAndView("redirect:/arme/list");
	}

	@GetMapping("/edit")
	public ModelAndView edit(@RequestParam(name = "id") Integer id) {
		Optional<Arme> opt = armeRepository.findById(id);
		if (opt.isPresent()) {
			return goEdit(opt.get());
		} else {
			return new ModelAndView("redirect:/arme/list");
		}
	}

	@GetMapping("/delete")
	public String delete(@RequestParam(name = "id") int id) {
		Optional<Arme> opt = armeRepository.findById(id);
		if (opt.isPresent()) {
			armeRepository.deleteById(id);
		}
		return "redirect:/soldat/list";
	}

}
