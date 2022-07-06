package com.generation.lojadegames.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


@Entity
@Table(name = "tb_categoriag")
public class Categoriag {
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private long id;
		
		@NotNull
		@Size (min = 2 , max = 100)
		private String categoriag;
		
		@OneToMany(mappedBy = "categoriag", cascade = CascadeType.ALL)
		@JsonIgnoreProperties("categoriag")
		private List<Produtog> produtog;

		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public String getCategoriag() {
			return categoriag;
		}

		public void setCategoriag(String categoria) {
			this.categoriag = categoria;
		}

		public List<Produtog> getProdutog() {
			return produtog;
		}

		public void setProdutog(List<Produtog> produtog) {
			this.produtog = produtog;
		}

}