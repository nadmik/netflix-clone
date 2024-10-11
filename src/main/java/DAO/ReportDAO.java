package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;

import entity.Report;
import utils.jpaUtils;

public class ReportDAO extends DAO<Report, String> {

	EntityManager em = jpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();// dong EntiryManager khi DAO bi giai phong
		super.finalize();
	}

	@Override
	public Report insert(Report entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Report update(Report entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Report delete(String key) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Report findById(String key) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Report> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Report> getInfor() {
		String jpql = "SELECT new Report(o.video.title, count(o)," + "max(o.likeDate), min(o.likeDate))"
				+ " FROM Favorite o " + " GROUP BY o.video.title ";
		TypedQuery<Report> query = em.createQuery(jpql, Report.class);
		List<Report> list = query.getResultList();
		return list;
	}

	public List<Report> callProcByCombobox(Integer year) {
		StoredProcedureQuery query = em.createNamedStoredProcedureQuery("Report.favoriteByYear");
		query.setParameter("year", year);
		List<Report> list = query.getResultList();
		return list;
	}

	public List<Object[]> callProcByVideoTitle(String id) {
		StoredProcedureQuery query = em.createNamedStoredProcedureQuery("Report.favoritesUser");
		query.setParameter("id", id);
		List<Object[]> list = query.getResultList();
		return list;
	}
}
