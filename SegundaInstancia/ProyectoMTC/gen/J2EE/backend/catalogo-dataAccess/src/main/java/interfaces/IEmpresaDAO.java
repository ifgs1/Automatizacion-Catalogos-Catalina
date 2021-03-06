package interfaces;

import java.util.List;

import entities.Empresa;
import entities.Catalogo;
import entities.Categoria;
import entities.Producto;

public interface IEmpresaDAO {
	
	public List<Empresa> getAllEmpresa();
	
	public Empresa getEmpresa(Long id);
}