package com.generation.lojadegames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.generation.lojadegames.model.Categoriag;

@Repository
public interface CategoriagRepository extends JpaRepository<Categoriag, Long> {
	public List<Categoriag>findAllByCategoriagContainingIgnoreCase(String Categoriag);


}
