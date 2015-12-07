package pe.gob.edu.ugel.resoluciones.core.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import pe.gob.edu.ugel.resoluciones.core.domain.BaseEntity;

//import com.sun.xml.internal.stream.Entity;

import pe.gob.edu.ugel.resoluciones.core.domain.Detalle;
import pe.gob.edu.ugel.resoluciones.core.domain.Docente;
import pe.gob.edu.ugel.resoluciones.core.domain.Item;
import pe.gob.edu.ugel.resoluciones.core.domain.ItemResol;
import pe.gob.edu.ugel.resoluciones.core.domain.ResolEmitida;
import pe.gob.edu.ugel.resoluciones.core.domain.Resolucion;
import pe.gob.edu.ugel.resoluciones.core.domain.Usuario;

public class ResolucionDAOImpl extends BaseDAOHibernate implements
		ResolucionDAO {

	// @Override

	// ================Docente===================
	/**
	 * Lista Docente
	 * 
	 * @param null
	 */
	public List<Docente> findAllDocente() {
		return find(Docente.class, "FROM Docente");
	}

	// ================Item===================

	/**
	 * Lista Item
	 * 
	 * @param null
	 */
	public List<Item> findAllItem() {
		return find(Item.class, "FROM Item");

	}

	/**
	 * Guardar item
	 * 
	 * @param resolemitida
	 */
	public void saveItem(Item item) {
		this.save(item);
	}

	/**
	 * Borrar item
	 * 
	 * @param
	 */

	public void deleteItem(Item id) {
		this.delete(id);
	}

	// ================Resoluciones emitidas por Dni===================
	/**
	 * Listar resolucionemitida por dni
	 * 
	 * @param resolemitida
	 */
	public List<ResolEmitida> FindResolucionemitida(String Dni) {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		StringBuffer queryBuffer = new StringBuffer();
		queryBuffer
				.append("select  docente.Dni,resolemitida.CodResolucion,"
						+ "resolucion.Nombre, item_resol.Campo,"
						+ "detalle.CargoActual,detalle.CargoDesempe�ar,"
						+ " detalle.CodPlaza,detalle.LugarInstitucion,detalle.MotVacante,"
						+ "detalle.NomInsEducativa, detalle.VigenEncargo "
						+ "from docente,resolemitida,resolucion,item_resol,"
						+ "detalle where docente.IdDocente=resolemitida.IdDocente and"
						+ " resolucion.IdResolucion=resolemitida.IdResolucion and"
						+ " resolucion.IdResolucion=item_resol.IdResolucion and"
						+ " resolemitida.IdRes_Emi=detalle.IdRes_Emi and Docente.dni='"
						+ Dni + "'");
		SQLQuery query = session.createSQLQuery(queryBuffer.toString());
		@SuppressWarnings("unchecked")
		List<Object[]> results = query.list();

		List<ResolEmitida> returnReso = new ArrayList<ResolEmitida>();
		// try {

		for (Object[] object : results) {
			ResolEmitida reso = new ResolEmitida();
			// Docente doc = new Docente();
			Resolucion re = new Resolucion();
			// ItemResol itr=new ItemResol();
			// doc.setDni(object[0].toString());
			reso.setCodresolucion(object[1].toString());
			re.setNombre(object[3].toString());
			// re.setNombre(object[2].toString());
			// itr.setCampo(object[3].toString());
			// Integer.parseInt(object[1].toString())
			returnReso.add(reso);
		}

		// } catch (Exception e) {
		// // TODO: handle exception
		// System.out.print("mal =="+e.getMessage());
		// }
		return returnReso;
	}

	// ================Resoluciones emitidas ===================

	/**
	 * Lista resolucionemitida
	 * 
	 * @param null
	 */
	public List<ResolEmitida> findAllResolEmitida() {

		return find(ResolEmitida.class, "FROM ResolEmitida");

	}

	/**
	 * guardar resolucion emitida
	 * 
	 * @param resolemitida
	 */
	public void saveresolucionemitida(ResolEmitida resolemitida) {
		this.save(resolemitida);
	}

	// foranikey docente
	public Docente findIdDocente(int Id) {
		StringBuffer queryBuffer = new StringBuffer();
		queryBuffer.append(" FROM Docente  WHERE IdDocente=" + Id);
		return findFirst(Docente.class, queryBuffer.toString());
	}

	// Foranikey resolucion
	public Resolucion findIdResolucion(int Id) {
		StringBuffer queryBuffer = new StringBuffer();
		queryBuffer.append(" FROM Resolucion  WHERE IdResolucion=" + Id);
		return findFirst(Resolucion.class, queryBuffer.toString());
	}

	/**
	 * Borrar resolucionemitida
	 * 
	 * @param null
	 */
	public void deleteResolucionEmitida(ResolEmitida resolemitida) {
		this.delete(resolemitida);
	}

	// ================Resoluciones ===================

	/**
	 * Lista Resolucion
	 * 
	 * @param null
	 */
	public List<Resolucion> findAllResolucion() {

		return find(Resolucion.class, "FROM Resolucion");

	}

	/**
	 * Guardar resolucion
	 * 
	 * @param resoluciones
	 */
	public void saveresolucion(Resolucion res) {
		this.save(res);
	}

	/**
	 * borrar resolucion
	 * 
	 * @param resoluciones
	 */
	public void deleteResolucion(Resolucion resolucion) {
		this.delete(resolucion);
	}

	// ================Item_Resol ===================

	/**
	 * Lista ItemResol
	 * 
	 * @param null
	 */
	public List<ItemResol> findAllItemResol() {

		return find(ItemResol.class, "FROM ItemResol");

	}

	/**
	 * guardar resolucion emitida
	 * 
	 * @param resolemitida
	 */
	public void saveItemResol(ItemResol itemresol) {
		this.save(itemresol);
	}

	// foranikey docente
	public Resolucion findIdResol(int Id) {
		StringBuffer queryBuffer = new StringBuffer();
		queryBuffer.append(" FROM Resolucion  WHERE IdResolucion=" + Id);
		return findFirst(Resolucion.class, queryBuffer.toString());
	}

	// Foranikey resolucion
	public Item findIdItemResol(int Id) {
		StringBuffer queryBuffer = new StringBuffer();
		queryBuffer.append(" FROM Item  WHERE IdItem=" + Id);
		return findFirst(Item.class, queryBuffer.toString());
	}

	/**
	 * borrar ItemResol
	 * 
	 * @param resoluciones
	 */
	public void deleteItemResol(ItemResol itemresol) {
		this.delete(itemresol);
	}

	// ================ Detalle ===================

	/**
	 * Lista Detalle
	 * 
	 * @param null
	 */
	public List<Detalle> findAllDetalle() {
		return find(Detalle.class, "FROM Detalle");
	}

	/**
	 * guardar Detalle
	 * 
	 * @param Detalle
	 */
	public void saveDetalle(Detalle detalle) {
		this.save(detalle);
	}

	// foranikey docente
	public ResolEmitida findIdResolemitida(int Id) {
		StringBuffer queryBuffer = new StringBuffer();
		queryBuffer.append(" FROM ResolEmitida  WHERE IdRes_Emi=" + Id);
		return findFirst(ResolEmitida.class, queryBuffer.toString());
	}

	/**
	 * borrar Detalle
	 * 
	 * @param
	 */
	public void deletedetalle(Detalle detalle) {
		this.delete(detalle);
	}

	// ================ Usuario ===================

	/**
	 * Lista usuario
	 * 
	 * @param null
	 */
	public List<Usuario> findAllUsuario() {

		return find(Usuario.class, "FROM Usuario");

	}

	public void updateResolucion(Resolucion resss) {
		this.update(resss);
	}

	public void updateItem(Item item) {
		this.update(item);
	}

	public List<ItemResol> findItemsByIdResolucion(Long id) {
		return find(ItemResol.class, "FROM ItemResol where resolucion.id = "
				+ id);
	}

}
