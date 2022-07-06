package com.generation.lojadegames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.generation.lojadegames.model.Produtog;

@Repository
public interface ProdutogRepository extends JpaRepository<Produtog, Long>{
	public List<Produtog> findAllByNomeContainingIgnoreCase(String Nome);

}
