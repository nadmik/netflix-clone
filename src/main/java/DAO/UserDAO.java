package DAO;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import entity.User;
import utils.jpaUtils;

public class UserDAO extends DAO<User, String> {

	EntityManager em = jpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();// dong EntiryManager khi DAO bi giai phong
		super.finalize();
	}

	@Override
	public User insert(User entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	@Override
	public User update(User entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	@Override
	public User delete(String key) {
		User user = this.findById(key);
		try {
			em.getTransaction().begin();
			em.remove(user);
			em.getTransaction().commit();
			return user;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	@Override
	public User findById(String key) {
		User user = em.find(User.class, key);
		return user;
	}

	@Override
	public List<User> findAll() {
		String jpql = "SELECT o FROM User o";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		List<User> list = query.getResultList();
		return list;
	}

	public List<User> findUserLikeVideo(String videoId) {
		String jpql = "SELECT o.user FROM Favorite o WHERE o.video.id=:vid";
		TypedQuery<User> query = em.createQuery(jpql, User.class);
		query.setParameter("vid", videoId);
		List<User> list = query.getResultList();
		return list;
	}
}
