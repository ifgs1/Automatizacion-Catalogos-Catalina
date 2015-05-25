/**
 *
 * $Id$
 */
package arquitectura.validation;


/**
 * A sample validator interface for {@link arquitectura.Metodo}.
 * This doesn't really do anything, and it's not a real EMF artifact.
 * It was generated by the org.eclipse.emf.examples.generator.validator plug-in to illustrate how EMF's code generator can be extended.
 * This can be disabled with -vmargs -Dorg.eclipse.emf.examples.generator.validator=false.
 */
public interface MetodoValidator {
	boolean validate();

	boolean validatePath(String value);
	boolean validateTipoRetorno(String value);
	boolean validateArgumentos(String value);
}
