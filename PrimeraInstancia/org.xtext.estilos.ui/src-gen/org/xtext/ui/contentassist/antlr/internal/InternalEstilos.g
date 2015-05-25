/*
* generated by Xtext
*/
grammar InternalEstilos;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package org.xtext.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.xtext.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import org.xtext.services.EstilosGrammarAccess;

}

@parser::members {
 
 	private EstilosGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(EstilosGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleRootSistema
entryRuleRootSistema 
:
{ before(grammarAccess.getRootSistemaRule()); }
	 ruleRootSistema
{ after(grammarAccess.getRootSistemaRule()); } 
	 EOF 
;

// Rule RootSistema
ruleRootSistema
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getRootSistemaAccess().getGroup()); }
(rule__RootSistema__Group__0)
{ after(grammarAccess.getRootSistemaAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleVista
entryRuleVista 
:
{ before(grammarAccess.getVistaRule()); }
	 ruleVista
{ after(grammarAccess.getVistaRule()); } 
	 EOF 
;

// Rule Vista
ruleVista
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getVistaAccess().getGroup()); }
(rule__Vista__Group__0)
{ after(grammarAccess.getVistaAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleEString
entryRuleEString 
:
{ before(grammarAccess.getEStringRule()); }
	 ruleEString
{ after(grammarAccess.getEStringRule()); } 
	 EOF 
;

// Rule EString
ruleEString
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getEStringAccess().getAlternatives()); }
(rule__EString__Alternatives)
{ after(grammarAccess.getEStringAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}





// Entry rule entryRuleLetra
entryRuleLetra 
:
{ before(grammarAccess.getLetraRule()); }
	 ruleLetra
{ after(grammarAccess.getLetraRule()); } 
	 EOF 
;

// Rule Letra
ruleLetra
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getLetraAccess().getGroup()); }
(rule__Letra__Group__0)
{ after(grammarAccess.getLetraAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}




// Rule Tecnologia
ruleTecnologia
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTecnologiaAccess().getAlternatives()); }
(rule__Tecnologia__Alternatives)
{ after(grammarAccess.getTecnologiaAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Rule TamanoLetra
ruleTamanoLetra
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTamanoLetraAccess().getAlternatives()); }
(rule__TamanoLetra__Alternatives)
{ after(grammarAccess.getTamanoLetraAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__EString__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0()); }
	RULE_STRING
{ after(grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0()); }
)

    |(
{ before(grammarAccess.getEStringAccess().getIDTerminalRuleCall_1()); }
	RULE_ID
{ after(grammarAccess.getEStringAccess().getIDTerminalRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Tecnologia__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTecnologiaAccess().getAndroidEnumLiteralDeclaration_0()); }
(	'android' 
)
{ after(grammarAccess.getTecnologiaAccess().getAndroidEnumLiteralDeclaration_0()); }
)

    |(
{ before(grammarAccess.getTecnologiaAccess().getIOSEnumLiteralDeclaration_1()); }
(	'iOS' 
)
{ after(grammarAccess.getTecnologiaAccess().getIOSEnumLiteralDeclaration_1()); }
)

    |(
{ before(grammarAccess.getTecnologiaAccess().getWebEnumLiteralDeclaration_2()); }
(	'web' 
)
{ after(grammarAccess.getTecnologiaAccess().getWebEnumLiteralDeclaration_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__TamanoLetra__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTamanoLetraAccess().getSmallEnumLiteralDeclaration_0()); }
(	'small' 
)
{ after(grammarAccess.getTamanoLetraAccess().getSmallEnumLiteralDeclaration_0()); }
)

    |(
{ before(grammarAccess.getTamanoLetraAccess().getMediumEnumLiteralDeclaration_1()); }
(	'medium' 
)
{ after(grammarAccess.getTamanoLetraAccess().getMediumEnumLiteralDeclaration_1()); }
)

    |(
{ before(grammarAccess.getTamanoLetraAccess().getLargeEnumLiteralDeclaration_2()); }
(	'large' 
)
{ after(grammarAccess.getTamanoLetraAccess().getLargeEnumLiteralDeclaration_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__RootSistema__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RootSistema__Group__0__Impl
	rule__RootSistema__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getRootSistemaKeyword_0()); }

	'RootSistema' 

{ after(grammarAccess.getRootSistemaAccess().getRootSistemaKeyword_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RootSistema__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RootSistema__Group__1__Impl
	rule__RootSistema__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getLeftCurlyBracketKeyword_1()); }

	'{' 

{ after(grammarAccess.getRootSistemaAccess().getLeftCurlyBracketKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RootSistema__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RootSistema__Group__2__Impl
	rule__RootSistema__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getVistasKeyword_2()); }

	'vistas' 

{ after(grammarAccess.getRootSistemaAccess().getVistasKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RootSistema__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RootSistema__Group__3__Impl
	rule__RootSistema__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getLeftCurlyBracketKeyword_3()); }

	'{' 

{ after(grammarAccess.getRootSistemaAccess().getLeftCurlyBracketKeyword_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RootSistema__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RootSistema__Group__4__Impl
	rule__RootSistema__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getVistasAssignment_4()); }
(rule__RootSistema__VistasAssignment_4)
{ after(grammarAccess.getRootSistemaAccess().getVistasAssignment_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RootSistema__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RootSistema__Group__5__Impl
	rule__RootSistema__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getGroup_5()); }
(rule__RootSistema__Group_5__0)*
{ after(grammarAccess.getRootSistemaAccess().getGroup_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RootSistema__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RootSistema__Group__6__Impl
	rule__RootSistema__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getRightCurlyBracketKeyword_6()); }

	'}' 

{ after(grammarAccess.getRootSistemaAccess().getRightCurlyBracketKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RootSistema__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RootSistema__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getRightCurlyBracketKeyword_7()); }

	'}' 

{ after(grammarAccess.getRootSistemaAccess().getRightCurlyBracketKeyword_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


















rule__RootSistema__Group_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RootSistema__Group_5__0__Impl
	rule__RootSistema__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__Group_5__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getCommaKeyword_5_0()); }

	',' 

{ after(grammarAccess.getRootSistemaAccess().getCommaKeyword_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__RootSistema__Group_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__RootSistema__Group_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__Group_5__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getVistasAssignment_5_1()); }
(rule__RootSistema__VistasAssignment_5_1)
{ after(grammarAccess.getRootSistemaAccess().getVistasAssignment_5_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Vista__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group__0__Impl
	rule__Vista__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getBarraBusquedaAssignment_0()); }
(rule__Vista__BarraBusquedaAssignment_0)?
{ after(grammarAccess.getVistaAccess().getBarraBusquedaAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Vista__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group__1__Impl
	rule__Vista__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getVistaKeyword_1()); }

	'Vista' 

{ after(grammarAccess.getVistaAccess().getVistaKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Vista__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group__2__Impl
	rule__Vista__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getLeftCurlyBracketKeyword_2()); }

	'{' 

{ after(grammarAccess.getVistaAccess().getLeftCurlyBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Vista__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group__3__Impl
	rule__Vista__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getGroup_3()); }
(rule__Vista__Group_3__0)?
{ after(grammarAccess.getVistaAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Vista__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group__4__Impl
	rule__Vista__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getGroup_4()); }
(rule__Vista__Group_4__0)?
{ after(grammarAccess.getVistaAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Vista__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group__5__Impl
	rule__Vista__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getLetraKeyword_5()); }

	'letra' 

{ after(grammarAccess.getVistaAccess().getLetraKeyword_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Vista__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group__6__Impl
	rule__Vista__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getLetraAssignment_6()); }
(rule__Vista__LetraAssignment_6)
{ after(grammarAccess.getVistaAccess().getLetraAssignment_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Vista__Group__7
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group__7__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getRightCurlyBracketKeyword_7()); }

	'}' 

{ after(grammarAccess.getVistaAccess().getRightCurlyBracketKeyword_7()); }
)

;
finally {
	restoreStackSize(stackSize);
}


















rule__Vista__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group_3__0__Impl
	rule__Vista__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getColorFondoKeyword_3_0()); }

	'colorFondo' 

{ after(grammarAccess.getVistaAccess().getColorFondoKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Vista__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getColorFondoAssignment_3_1()); }
(rule__Vista__ColorFondoAssignment_3_1)
{ after(grammarAccess.getVistaAccess().getColorFondoAssignment_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Vista__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group_4__0__Impl
	rule__Vista__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getTecnologiaKeyword_4_0()); }

	'tecnologia' 

{ after(grammarAccess.getVistaAccess().getTecnologiaKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Vista__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Vista__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getTecnologiaAssignment_4_1()); }
(rule__Vista__TecnologiaAssignment_4_1)
{ after(grammarAccess.getVistaAccess().getTecnologiaAssignment_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Letra__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group__0__Impl
	rule__Letra__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getLetraAction_0()); }
(

)
{ after(grammarAccess.getLetraAccess().getLetraAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Letra__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group__1__Impl
	rule__Letra__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getLetraKeyword_1()); }

	'Letra' 

{ after(grammarAccess.getLetraAccess().getLetraKeyword_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Letra__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group__2__Impl
	rule__Letra__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getLeftCurlyBracketKeyword_2()); }

	'{' 

{ after(grammarAccess.getLetraAccess().getLeftCurlyBracketKeyword_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Letra__Group__3
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group__3__Impl
	rule__Letra__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group__3__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getGroup_3()); }
(rule__Letra__Group_3__0)?
{ after(grammarAccess.getLetraAccess().getGroup_3()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Letra__Group__4
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group__4__Impl
	rule__Letra__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group__4__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getGroup_4()); }
(rule__Letra__Group_4__0)?
{ after(grammarAccess.getLetraAccess().getGroup_4()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Letra__Group__5
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group__5__Impl
	rule__Letra__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group__5__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getGroup_5()); }
(rule__Letra__Group_5__0)?
{ after(grammarAccess.getLetraAccess().getGroup_5()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Letra__Group__6
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group__6__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getRightCurlyBracketKeyword_6()); }

	'}' 

{ after(grammarAccess.getLetraAccess().getRightCurlyBracketKeyword_6()); }
)

;
finally {
	restoreStackSize(stackSize);
}
















rule__Letra__Group_3__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group_3__0__Impl
	rule__Letra__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group_3__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getColorLetraKeyword_3_0()); }

	'colorLetra' 

{ after(grammarAccess.getLetraAccess().getColorLetraKeyword_3_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Letra__Group_3__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group_3__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getColorLetraAssignment_3_1()); }
(rule__Letra__ColorLetraAssignment_3_1)
{ after(grammarAccess.getLetraAccess().getColorLetraAssignment_3_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Letra__Group_4__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group_4__0__Impl
	rule__Letra__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group_4__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getFuenteKeyword_4_0()); }

	'fuente' 

{ after(grammarAccess.getLetraAccess().getFuenteKeyword_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Letra__Group_4__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group_4__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getFuenteAssignment_4_1()); }
(rule__Letra__FuenteAssignment_4_1)
{ after(grammarAccess.getLetraAccess().getFuenteAssignment_4_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Letra__Group_5__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group_5__0__Impl
	rule__Letra__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group_5__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getTamanoKeyword_5_0()); }

	'tamano' 

{ after(grammarAccess.getLetraAccess().getTamanoKeyword_5_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Letra__Group_5__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Letra__Group_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__Group_5__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getTamanoAssignment_5_1()); }
(rule__Letra__TamanoAssignment_5_1)
{ after(grammarAccess.getLetraAccess().getTamanoAssignment_5_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}







rule__RootSistema__VistasAssignment_4
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getVistasVistaParserRuleCall_4_0()); }
	ruleVista{ after(grammarAccess.getRootSistemaAccess().getVistasVistaParserRuleCall_4_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__RootSistema__VistasAssignment_5_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getRootSistemaAccess().getVistasVistaParserRuleCall_5_1_0()); }
	ruleVista{ after(grammarAccess.getRootSistemaAccess().getVistasVistaParserRuleCall_5_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__BarraBusquedaAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getBarraBusquedaBarraBusquedaKeyword_0_0()); }
(
{ before(grammarAccess.getVistaAccess().getBarraBusquedaBarraBusquedaKeyword_0_0()); }

	'barraBusqueda' 

{ after(grammarAccess.getVistaAccess().getBarraBusquedaBarraBusquedaKeyword_0_0()); }
)

{ after(grammarAccess.getVistaAccess().getBarraBusquedaBarraBusquedaKeyword_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__ColorFondoAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getColorFondoEStringParserRuleCall_3_1_0()); }
	ruleEString{ after(grammarAccess.getVistaAccess().getColorFondoEStringParserRuleCall_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__TecnologiaAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getTecnologiaTecnologiaEnumRuleCall_4_1_0()); }
	ruleTecnologia{ after(grammarAccess.getVistaAccess().getTecnologiaTecnologiaEnumRuleCall_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Vista__LetraAssignment_6
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getVistaAccess().getLetraLetraParserRuleCall_6_0()); }
	ruleLetra{ after(grammarAccess.getVistaAccess().getLetraLetraParserRuleCall_6_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__ColorLetraAssignment_3_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getColorLetraEStringParserRuleCall_3_1_0()); }
	ruleEString{ after(grammarAccess.getLetraAccess().getColorLetraEStringParserRuleCall_3_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__FuenteAssignment_4_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getFuenteEStringParserRuleCall_4_1_0()); }
	ruleEString{ after(grammarAccess.getLetraAccess().getFuenteEStringParserRuleCall_4_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Letra__TamanoAssignment_5_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getLetraAccess().getTamanoTamanoLetraEnumRuleCall_5_1_0()); }
	ruleTamanoLetra{ after(grammarAccess.getLetraAccess().getTamanoTamanoLetraEnumRuleCall_5_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

