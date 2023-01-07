package com.irise.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.irise.model.TrainingScheduleModel;
import com.irise.repository.TrainingScheduleRepository;

@Service
public class TrainingScheduleServiceImpl implements TrainingScheduleService{

	@Autowired
	private TrainingScheduleRepository trainingScheduleRepository;

	@Override
	public List<TrainingScheduleModel> getallcources(TrainingScheduleModel trainingScheduleModel) {
		List<TrainingScheduleModel> courses=null;
		try {
			courses=trainingScheduleRepository.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return courses;
	}
	
	
	
}
