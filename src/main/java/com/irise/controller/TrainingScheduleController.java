package com.irise.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.irise.model.TrainingScheduleModel;
import com.irise.service.TrainingScheduleService;

@RestController
@RequestMapping("/trainingschedule")
public class TrainingScheduleController {

	@Autowired
	private TrainingScheduleService trainingScheduleService;
	
	@GetMapping("/getallcourses")
	public List<TrainingScheduleModel> getallcourselList(TrainingScheduleModel trainingScheduleModel){
		return trainingScheduleService.getallcources(trainingScheduleModel);
	}
	
}
