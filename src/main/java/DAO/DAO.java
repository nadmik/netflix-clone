package DAO;

import java.util.List;

public abstract class DAO<E,K> {

	abstract public E insert(E entity);
	abstract public E update(E entity);
	abstract public E delete(K key);
	abstract public E findById(K key);
	abstract public List<E> findAll();
}
