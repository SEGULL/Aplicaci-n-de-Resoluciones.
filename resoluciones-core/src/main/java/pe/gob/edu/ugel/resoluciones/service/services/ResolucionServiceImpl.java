package pe.gob.edu.ugel.resoluciones.service.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.gob.edu.ugel.resoluciones.core.dao.ResolucionDAO;
import pe.gob.edu.ugel.resoluciones.core.domain.Detalle;
import pe.gob.edu.ugel.resoluciones.core.domain.Docente;
import pe.gob.edu.ugel.resoluciones.core.domain.Item;
import pe.gob.edu.ugel.resoluciones.core.domain.ItemResol;
import pe.gob.edu.ugel.resoluciones.core.domain.ResolEmitida;
import pe.gob.edu.ugel.resoluciones.core.domain.Resolucion;
import pe.gob.edu.ugel.resoluciones.core.domain.Usuario;

@Service("resolucionService")
public class ResolucionServiceImpl {

	@Autowired
	private ResolucionDAO resolocionDAO;

	// ================Docente===================
	/**
	 * Lista Docente
	 * 
	 * @param null
	 */

	public List<Docente> ListarDocente() {
		return resolocionDAO.findAllDocente();
	}

	// =========Item================

	/**
	 * Lista Item
	 * 
	 * @param null
	 */
	public List<Item> ListarItem() {
		return resolocionDAO.findAllItem();
	}

	/**
	 * guardar item
	 * 
	 * @param resolemitida
	 */
	public void GuardarItem(Item item) {

		if (item.getId() > 0) {
			this.resolocionDAO.updateItem(item);
		} else {
			this.resolocionDAO.saveItem(item);
		}

	}

	/**
	 * Borrar item
	 * 
	 * @param void deleteItem(Item id)
	 */
	public void Borraritem(Item id) {
		resolocionDAO.deleteItem(id);
	}

	// ================Resoluciones emitidas por Dni===================

	/**
	 * Listar de resoluciones por dni
	 * 
	 * @param resolemitida
	 */
	public List<ResolEmitida> ListarPorDniResolucionemitida(String Dni) {
		return resolocionDAO.FindResolucionemitida(Dni);
	}

	// ================Resoluciones emitidas ===================
	/**
	 * Lista resolucionemitida
	 * 
	 * @param null
	 */
	public List<ResolEmitida> ListarResolEmitida() {
		return resolocionDAO.findAllResolEmitida();
	}

	/**
	 * guardar resolucion emitida
	 * 
	 * @param resolemitida
	 */
	public void GuardarResolucionmEmitida(ResolEmitida resolemitida) {
		this.resolocionDAO.saveresolucionemitida(resolemitida);// ojo
	}

	/*
	 * foranikey docente
	 */

	public Docente IdDocenteResolEmit(int Id) {
		return resolocionDAO.findIdDocente(Id);
	}

	/*
	 * Foranikey resolucion
	 */
	public Resolucion IdResolResoEmit(int Id) {
		return resolocionDAO.findIdResolucion(Id);
	}

	/**
	 * Borrar resolucionemitida
	 * 
	 * @param null
	 */
	public void BorrarResolucionEmitida(ResolEmitida resolemitida) {
		this.resolocionDAO.deleteResolucionEmitida(resolemitida);
	}

	// ================Resoluciones ===================

	/**
	 * Lista Resolucione
	 * 
	 * @param null
	 */
	public List<Resolucion> ListarResolucion() {
		return resolocionDAO.findAllResolucion();
	}

	/**
	 * Guardar resolucion
	 * 
	 * @param resoluciones
	 */
	public void GuardarResolucion(Resolucion resss) {
		if (resss.getId() > 0) {
			this.resolocionDAO.updateResolucion(resss);
		} else {
			this.resolocionDAO.saveresolucion(resss);
		}
	}

	/**
	 * borrar resolucion
	 * 
	 * @param resoluciones
	 */
	public void BorrarResolucion(Resolucion id) {
		resolocionDAO.deleteResolucion(id);
	}

	// ================Item_Resol ===================

	/**
	 * Lista ItemResol
	 * 
	 * @param null
	 */
	public List<ItemResol> ListarItemResol() {
		return resolocionDAO.findAllItemResol();
	}

	/**
	 * guardar resolucion emitida
	 * 
	 * @param resolemitida
	 */
	public void GuardarItemResol(ItemResol itemresol) {
		if (itemresol.getId() > 0) {
			this.resolocionDAO.updateItemResol(itemresol);
		} else {
			this.resolocionDAO.saveItemResol(itemresol);
		}
	}

	// foranikey docente
	public Resolucion IdResolResolItem(int Id) {
		return resolocionDAO.findIdResol(Id);
	}

	// Foranikey resolucion
	public Item IdItemResolItem(int Id) {
		return resolocionDAO.findIdItemResol(Id);
	}

	/**
	 * borrar ItemResol
	 * 
	 * @param resoluciones
	 */
	public void BorrarItemResol(ItemResol itemresol) {
		this.resolocionDAO.deleteItemResol(itemresol);
	};

	// ================ Detalle ===================

	/**
	 * Lista Detalle
	 * 
	 * @param null
	 */
	public List<Detalle> ListarDetalle() {
		return resolocionDAO.findAllDetalle();
	}

	/**
	 * guardar Detalle
	 * 
	 * @param Detalle
	 */
	public void GuardarDetalle(Detalle detalle) {
		this.resolocionDAO.saveDetalle(detalle);
	};

	public ResolEmitida IdResolemitidaDetalle(int Id) {
		return resolocionDAO.findIdResolemitida(Id);
	};

	/**
	 * borrar Detalle
	 * 
	 * @param
	 */
	public void Borrardetalle(Detalle detalle) {
		this.resolocionDAO.deletedetalle(detalle);
	};

	// ================ Usuario ===================

	/**
	 * Lista usuario
	 * 
	 * @param null
	 */
	public List<Usuario> ListarUsuario() {
		return resolocionDAO.findAllUsuario();
	}

	public List<ItemResol> ListarItemResol(Long id) {
		return resolocionDAO.findItemsByIdResolucion(id);
	}

	public ItemResol getItemResolucion(Long id) {

		return resolocionDAO.findItemResolucion(id);
	}

}
