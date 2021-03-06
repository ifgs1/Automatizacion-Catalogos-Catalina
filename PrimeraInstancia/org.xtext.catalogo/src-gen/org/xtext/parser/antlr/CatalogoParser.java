/*
* generated by Xtext
*/
package org.xtext.parser.antlr;

import com.google.inject.Inject;

import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.xtext.services.CatalogoGrammarAccess;

public class CatalogoParser extends org.eclipse.xtext.parser.antlr.AbstractAntlrParser {
	
	@Inject
	private CatalogoGrammarAccess grammarAccess;
	
	@Override
	protected void setInitialHiddenTokens(XtextTokenStream tokenStream) {
		tokenStream.setInitialHiddenTokens("RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT");
	}
	
	@Override
	protected org.xtext.parser.antlr.internal.InternalCatalogoParser createParser(XtextTokenStream stream) {
		return new org.xtext.parser.antlr.internal.InternalCatalogoParser(stream, getGrammarAccess());
	}
	
	@Override 
	protected String getDefaultRuleName() {
		return "RootSistema";
	}
	
	public CatalogoGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(CatalogoGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
	
}
