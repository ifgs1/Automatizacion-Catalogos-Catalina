package json;

import java.util.List;

public class ProductoJson{
	
	private Long id;
	
	public Long getId(){
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	private Long categoriaId;
	
	public Long getCategoriaId() {
		return categoriaId;
	}

	public void setCategoriaId(Long categoriaId) {
		this.categoriaId = categoriaId;
	}
		
		private String nombre;
	
		public String getNombre(){
			return nombre;
		}
		public void setNombre(String nombre){
		this.nombre = nombre;
		}
		private Double precio;
	
		public Double getPrecio(){
			return precio;
		}
		public void setPrecio(Double precio){
		this.precio = precio;
		}
		private String imagen;
	
		public String getImagen(){
			return imagen;
		}
		public void setImagen(String imagen){
		this.imagen = imagen;
		}

}