package com.android.catalogo.fragments;

import android.app.SearchManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.widget.SearchView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;

import com.android.catalogo.R;
import com.android.catalogo.activities.ProductosActivity;
import com.android.catalogo.adapters.CategoriaAdapter;
import com.android.catalogo.application.CatalogoApplication;
import com.android.catalogo.asynctasks.CatalogoAsyncTask;
import com.android.catalogo.model.Categoria;

import java.util.List;

/**
 * Categorías del catálogo de productos
 */
public class CategoriasFragment extends Fragment implements SearchView.OnQueryTextListener, SearchView.OnCloseListener{

    public static final String CATEGORIA_KEY = "CategoriasFragment.Key";
    CatalogoApplication catalogoApplication;

    View view;
    ListView listViewCategorias;
    CategoriaAdapter categoriaAdapter;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setHasOptionsMenu(true);
    }
    

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.Menu_Search_Categorias:
                SearchView searchView = (SearchView) MenuItemCompat.getActionView(item);
                SearchManager searchManager = (SearchManager) getActivity().getSystemService(Context.SEARCH_SERVICE);
                searchView.setSearchableInfo(searchManager.getSearchableInfo(getActivity().getComponentName()));
                searchView.setQueryHint(getResources().getString(R.string.hint_search));
                searchView.setOnQueryTextListener(this);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    @Override
    public boolean onClose() {
        return false;
    }

    @Override
    public boolean onQueryTextChange(String texto) {
        categoriaAdapter.getFilter().filter(texto);
        return true;
    }

    @Override
    public boolean onQueryTextSubmit(String texto) {
        categoriaAdapter.getFilter().filter(texto);
        return true;
    }



    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.categorias_fragment, container, false);
        catalogoApplication = (CatalogoApplication) getActivity().getApplication();
        cargarCategorias();
        return view;
    }

    private void cargarCategorias() {
        if(catalogoApplication.getCatalogo() == null){
            new CatalogoAsyncTask(CategoriasFragment.this).execute();
        }else{
            cargarInterfazGrafica(catalogoApplication.getCatalogo());
        }
    }

    public void cargarInterfazGrafica(List<Categoria> catalogo) {
        if(catalogo != null){
            catalogoApplication.setCatalogo(catalogo);
            listViewCategorias = (ListView) view.findViewById(R.id.Categorias_ListView);
            categoriaAdapter = new CategoriaAdapter(getActivity(), catalogo);
            listViewCategorias.setAdapter(categoriaAdapter);
            cargarListeners();
        }
    }

    private void cargarListeners() {
        listViewCategorias.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Categoria categoria = categoriaAdapter.getItem(position);
                abrirProductsActivity(categoria);
            }
        });
    }

    private void abrirProductsActivity(Categoria categoria) {
        Intent i = new Intent(getActivity(), ProductosActivity.class);
        i.putExtra(CATEGORIA_KEY,categoria);
        startActivity(i);
    }
}
