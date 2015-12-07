package pe.gob.edu.ugel.resoluciones.core.dao;

import java.util.List;

import pe.gob.edu.ugel.resoluciones.core.domain.BaseEntity;

//import com.sun.xml.internal.stream.Entity;

import pe.gob.edu.ugel.resoluciones.core.domain.Detalle;
import pe.gob.edu.ugel.resoluciones.core.domain.Docente;
import pe.gob.edu.ugel.resoluciones.core.domain.Item;
import pe.gob.edu.ugel.resoluciones.core.domain.ItemResol;
import pe.gob.edu.ugel.resoluciones.core.domain.ResolEmitida;
import pe.gob.edu.ugel.resoluciones.core.domain.Resolucion;
import pe.gob.edu.ugel.resoluciones.core.domain.Usuario;

public interface ResolucionDAO {

	// ================Docente===================
	/**
	 * Lista Docente
	 * 
	 * @param null
	 */
	List<Docente> findAllDocente();

	// =========Item================
	/**
	 * Lista Item
	 * 
	 * @param null
	 */
	List<Item> findAllItem();

	/**
	 * Guardar item
	 * 
	 * @param resolemitida
	 */
	void saveItem(Item item);

	/**
	 * Borrar item
	 * 
	 * @param
	 */
	void deleteItem(Item id);

	// ================Resoluciones emitidas por Dni===================
	/**
	 * Listar resolucionemitida
	 * 
	 * @param resolemitida
	 */
	List<ResolEmitida> FindResolucionemitida(String Dni);

	// ================Resoluciones emitidas ===================
	/**
	 * guardar resolucion emitida
	 * 
	 * @param resolemitida
	 */
	void saveresolucionemitida(ResolEmitida resolemitida);

	Docente findIdDocente(int Id);

	Resolucion findIdResolucion(int Id);

	/**
	 * Lista resolucionemitida
	 * 
	 * @param null
	 */
	List<ResolEmitida> findAllResolEmitida();

	/**
	 * Borrar resolucionemitida
	 * 
	 * @param null
	 */
	void deleteResolucionEmitida(ResolEmitida resolemitida);

	// ================Resoluciones ===================
	/**
	 * Lista Resolucione
	 * 
	 * @param null
	 */
	List<Resolucion> findAllResolucion();

	/**
	 * Guardar resolucion
	 * 
	 * @param resoluciones
	 */
	void saveresolucion(Resolucion res);

	/**
	 * borrar resolucion
	 * 
	 * @param resoluciones
	 */
	void deleteResolucion(Resolucion resolucion);

	// ================Item_Resol ===================
	/**
	 * ListaItemResol
	 * 
	 * @param null
	 */
	List<ItemResol> findAllItemResol();

	/**
	 * GuardarItemResol
	 * 
	 * @param null
	 */
	void saveItemResol(ItemResol itemresol);

	Resolucion findIdResol(int Id);

	Item findIdItemResol(int Id);

	/**
	 * borrar ItemResol
	 * 
	 * @param resoluciones
	 */
	void deleteItemResol(ItemResol itemresol);

	// ================ Detalle ===================
	/**
	 * Lista Detalle
	 * 
	 * @param null
	 */
	List<Detalle> findAllDetalle();

	/**
	 * guardar Detalle
	 * 
	 * @param Detalle
	 */
	void saveDetalle(Detalle detalle);

	ResolEmitida findIdResolemitida(int Id);

	/**
	 * borrar Detalle
	 * 
	 * @param
	 */
	void deletedetalle(Detalle detalle);

	// ================ Usuario ===================
	/**
	 * Lista usuario
	 * 
	 * @param null
	 */
	List<Usuario> findAllUsuario();

	void updateResolucion(Resolucion resss);
	void updateItem(Item item);

}
