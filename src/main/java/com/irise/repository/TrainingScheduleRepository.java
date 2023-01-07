package com.irise.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.irise.model.TrainingScheduleModel;

public interface TrainingScheduleRepository extends JpaRepository<TrainingScheduleModel, Integer> {

}
