package DAO;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;
import entity.Video;
import utils.jpaUtils;

public class VideoDAO extends DAO<Video, String> {

	EntityManager em = jpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();// dong EntiryManager khi DAO bi giai phong
		super.finalize();
	}

	@Override
	public Video insert(Video entity) {
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
	public Video update(Video entity) {
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
	public Video delete(String key) {
		Video video = this.findById(key);
		try {
			em.getTransaction().begin();
			em.remove(video);
			em.getTransaction().commit();
			return video;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	@Override
	public Video findById(String key) {
		Video video = em.find(Video.class, key);
		return video;
	}

	@Override
	public List<Video> findAll() {
		String jpql = "SELECT o FROM Video o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> findByKeyWord(String keyword) {
		String jpql = "SELECT DISTINCT o.video FROM Favorite o " + " WHERE o.video.title LIKE :keyword";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setParameter("keyword", "%" + keyword + "%");
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> findByQueryKeyWord(String keyword) {
		TypedQuery<Video> query = em.createNamedQuery("Video.findByKeyword", Video.class);
		query.setParameter("keyword", "%" + keyword + "%");
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> findByQueryUserID(String id) {
		TypedQuery<Video> query = em.createNamedQuery("Video.findByUser", Video.class);
		query.setParameter("id", id);
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> findByDate(String minDate, String maxDate) throws ParseException {
		DateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		Date min = format.parse(minDate);
		Date max = format.parse(maxDate);

		TypedQuery<Video> query = em.createNamedQuery("Video.findInRange", Video.class);
		query.setParameter("min", min);
		query.setParameter("max", max);
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> findByManyDate(String values[]) {
		List<Integer> months = new ArrayList<Integer>();
		for (String month : values) {
			months.add(Integer.valueOf(month));
		}
		TypedQuery<Video> query = em.createNamedQuery("Video.findInMonths", Video.class);
		query.setParameter("months", months);
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> randomVideo() {
		TypedQuery<Video> query = em.createNamedQuery("Report.random10", Video.class);
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> favoriteOrNotFavorite(boolean favorite) {
		String jpql = "SELECT o FROM Video o WHERE o.favorites IS EMPTY";
		if (favorite) {
			jpql = "SELECT o FROM Video o WHERE o.favorites IS NOT EMPTY";
		}
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> list = query.getResultList();
		return list;
	}

	public List<Video> sortsByViews() {
		try {
			em.getTransaction().begin();
			String jpql = "select o from Video o where o.active=true order by o.views desc";
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			List<Video> list = query.getResultList();
			em.getTransaction().commit();
			return list;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public List<Video> videoActive() {
		try {
			em.getTransaction().begin();
			String jpql = "select o from Video o where o.active=true order by newid()";
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			List<Video> list = query.getResultList();
			em.getTransaction().commit();
			return list;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
}
