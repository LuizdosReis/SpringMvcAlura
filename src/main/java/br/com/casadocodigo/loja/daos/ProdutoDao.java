package br.com.casadocodigo.loja.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.models.Produto;

@Repository
@Transactional
public class ProdutoDao {
	
	@PersistenceContext
	private EntityManager manager;

	public void gravar(Produto produto){
		manager.persist(produto);
	}

	public List<Produto> listar() {
		TypedQuery<Produto> query = manager.createNamedQuery("todosProdutos", Produto.class);
		return query.getResultList();
	}

	public Produto find(Integer id) {
		TypedQuery<Produto> query = manager.createNamedQuery("produto", Produto.class);
		query.setParameter("id", id);
		return query.getSingleResult();
	}
}
