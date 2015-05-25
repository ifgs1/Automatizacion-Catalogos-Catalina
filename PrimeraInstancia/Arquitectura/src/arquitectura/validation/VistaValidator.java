/**
 *
 * $Id$
 */
package arquitectura.validation;

import arquitectura.Letra;

/**
 * A sample validator interface for {@link arquitectura.Vista}.
 * This doesn't really do anything, and it's not a real EMF artifact.
 * It was generated by the org.eclipse.emf.examples.generator.validator plug-in to illustrate how EMF's code generator can be extended.
 * This can be disabled with -vmargs -Dorg.eclipse.emf.examples.generator.validator=false.
 */
public interface VistaValidator {
	boolean validate();

	boolean validateLetra(Letra value);
	boolean validateColorFondo(String value);
	boolean validateTitulo(String value);
}
