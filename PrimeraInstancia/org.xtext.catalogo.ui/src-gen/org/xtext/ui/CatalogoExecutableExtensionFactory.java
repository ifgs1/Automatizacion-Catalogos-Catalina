/*
 * generated by Xtext
 */
package org.xtext.ui;

import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.osgi.framework.Bundle;

import com.google.inject.Injector;

import org.xtext.ui.internal.CatalogoActivator;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class CatalogoExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return CatalogoActivator.getInstance().getBundle();
	}
	
	@Override
	protected Injector getInjector() {
		return CatalogoActivator.getInstance().getInjector(CatalogoActivator.ORG_XTEXT_CATALOGO);
	}
	
}
