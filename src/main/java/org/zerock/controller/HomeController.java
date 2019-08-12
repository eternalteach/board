package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j
@AllArgsConstructor
public class HomeController {

	private BoardService service;
	// ========== Index ==========

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		log.info("index");
		return "index";
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String indexPage() {
		log.info("index");
		return "index";
	}

	// ========== end Index ==========

	// ========== Introduce ==========
	@RequestMapping(value = "/introduce_info", method = RequestMethod.GET)
	public String introduce_info() {
		log.info("introduce_info");
		return "introduce_info";
	}

	@RequestMapping(value = "/introduce_ozc", method = RequestMethod.GET)
	public String introduce_ozc() {
		log.info("introduce_ozc");
		return "introduce_ozc";
	}

	@RequestMapping(value = "/introduce_history", method = RequestMethod.GET)
	public String introduce_history() {
		log.info("introduce_history");
		return "introduce_history";
	}

	@RequestMapping(value = "/introduce_come", method = RequestMethod.GET)
	public String introduce_come() {
		log.info("introduce_come");
		return "introduce_come";
	}

	@RequestMapping(value = "/introduce_photo", method = RequestMethod.GET)
	public String introduce_photo() {
		log.info("introduce_photo");
		return "introduce_photo";
	}
	// ========== end Introduce ==========

	// ========== Business ==========
	@RequestMapping(value = "/business_complete", method = RequestMethod.GET)
	public String business_complete() {
		log.info("business_complete");
		return "business_complete";
	}

	@RequestMapping(value = "/business_board", method = RequestMethod.GET)
	public String business_board(Criteria cri, Model model) {
		log.info("business_board");
		


		log.info("list: " + cri);
		model.addAttribute("list", service.getList(cri));
		// model.addAttribute("pageMaker", new PageDTO(cri, 123));

		int total = service.getTotal(cri);

		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));

	
		return "business_board";
	}
	// ========== end Business ==========

	// ========== product ==========
	@RequestMapping(value = "/product_info", method = RequestMethod.GET)
	public String product_info() {
		log.info("product_info");
		return "product_info";
	}

	@RequestMapping(value = "/product_qa", method = RequestMethod.GET)
	public String product_qa() {
		log.info("product_qa");
		return "product_qa";
	}

	// ========== end product ==========

}
