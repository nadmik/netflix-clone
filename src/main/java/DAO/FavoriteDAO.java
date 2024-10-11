package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import entity.Favorite;
import utils.jpaUtils;

public class FavoriteDAO extends DAO<Favorite, String> {

	EntityManager em = jpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();// dong EntiryManager khi DAO bi giai phong
		super.finalize();
	}

	@Override
	public Favorite insert(Favorite entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Favorite update(Favorite entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Favorite delete(String key) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Favorite findById(String key) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Favorite> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Integer> getYearFavoriteVideo() {
		String jpql = "GetYear.FavoriteVideos";
		TypedQuery<Integer> query = em.createQuery(jpql, Integer.class);
		return query.getResultList();
	}
}
