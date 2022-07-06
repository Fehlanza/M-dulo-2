package com.generation.lojadegames.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.generation.lojadegames.model.Produtog;
import com.generation.lojadegames.repository.ProdutogRepository;

@RestController
	@RequestMapping("/produtog")
	@CrossOrigin("*")
	public class ProdutogController {

		@Autowired
		private ProdutogRepository repository;
		
		@GetMapping
		public ResponseEntity<List<Produtog>> GetAll(){
			return ResponseEntity.ok(repository.findAll());
		}
		@PostMapping
		public ResponseEntity<Produtog> inserirProduto(@RequestBody Produtog produtog){
			return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(produtog));
		}
		@GetMapping("/{id}")
		public ResponseEntity<Produtog> GetById(@PathVariable long id){
			return repository.findById(id)
					.map(resp -> ResponseEntity.ok(resp))
					.orElse(ResponseEntity.notFound().build());
		}
		
		@GetMapping ("/nome/{nome}")
			public ResponseEntity<List<Produtog>> GetByNome(@PathVariable String nome){
				return ResponseEntity.ok(repository.findAllByNomeContainingIgnoreCase(nome));
		}
		@GetMapping ("/valor/{valor}")
			public ResponseEntity<List<Produtog>> GetByValor(@PathVariable String valor){
				return ResponseEntity.ok(repository.findAllByNomeContainingIgnoreCase(valor));
		}
		
		@GetMapping ("/descricao/{descricao}")
		public ResponseEntity<List<Produtog>> GetByDescricao(@PathVariable String descricao){
			return ResponseEntity.ok(repository.findAllByNomeContainingIgnoreCase(descricao));
	}
		@PutMapping
		public ResponseEntity<Produtog> put(@RequestBody Produtog produtog){
			return ResponseEntity.status(HttpStatus.OK).body(repository.save(produtog));
	}
		@DeleteMapping("/{id}")
		public void delete(@PathVariable long id) {
			repository.deleteById(id);
		}
	}
