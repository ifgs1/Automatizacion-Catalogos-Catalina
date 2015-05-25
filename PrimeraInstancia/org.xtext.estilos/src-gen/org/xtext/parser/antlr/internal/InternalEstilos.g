/*
* generated by Xtext
*/
grammar InternalEstilos;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.xtext.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.services.EstilosGrammarAccess;

}

@parser::members {

 	private EstilosGrammarAccess grammarAccess;
 	
    public InternalEstilosParser(TokenStream input, EstilosGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "RootSistema";	
   	}
   	
   	@Override
   	protected EstilosGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleRootSistema
entryRuleRootSistema returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getRootSistemaRule()); }
	 iv_ruleRootSistema=ruleRootSistema 
	 { $current=$iv_ruleRootSistema.current; } 
	 EOF 
;

// Rule RootSistema
ruleRootSistema returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='RootSistema' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getRootSistemaAccess().getRootSistemaKeyword_0());
    }
	otherlv_1='{' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getRootSistemaAccess().getLeftCurlyBracketKeyword_1());
    }
	otherlv_2='vistas' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getRootSistemaAccess().getVistasKeyword_2());
    }
	otherlv_3='{' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getRootSistemaAccess().getLeftCurlyBracketKeyword_3());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getRootSistemaAccess().getVistasVistaParserRuleCall_4_0()); 
	    }
		lv_vistas_4_0=ruleVista		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRootSistemaRule());
	        }
       		add(
       			$current, 
       			"vistas",
        		lv_vistas_4_0, 
        		"Vista");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_5=',' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getRootSistemaAccess().getCommaKeyword_5_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getRootSistemaAccess().getVistasVistaParserRuleCall_5_1_0()); 
	    }
		lv_vistas_6_0=ruleVista		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRootSistemaRule());
	        }
       		add(
       			$current, 
       			"vistas",
        		lv_vistas_6_0, 
        		"Vista");
	        afterParserOrEnumRuleCall();
	    }

)
))*	otherlv_7='}' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getRootSistemaAccess().getRightCurlyBracketKeyword_6());
    }
	otherlv_8='}' 
    {
    	newLeafNode(otherlv_8, grammarAccess.getRootSistemaAccess().getRightCurlyBracketKeyword_7());
    }
)
;





// Entry rule entryRuleVista
entryRuleVista returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getVistaRule()); }
	 iv_ruleVista=ruleVista 
	 { $current=$iv_ruleVista.current; } 
	 EOF 
;

// Rule Vista
ruleVista returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_barraBusqueda_0_0=	'barraBusqueda' 
    {
        newLeafNode(lv_barraBusqueda_0_0, grammarAccess.getVistaAccess().getBarraBusquedaBarraBusquedaKeyword_0_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getVistaRule());
	        }
       		setWithLastConsumed($current, "barraBusqueda", true, "barraBusqueda");
	    }

)
)?	otherlv_1='Vista' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getVistaAccess().getVistaKeyword_1());
    }
	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getVistaAccess().getLeftCurlyBracketKeyword_2());
    }
(	otherlv_3='colorFondo' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getVistaAccess().getColorFondoKeyword_3_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getVistaAccess().getColorFondoEStringParserRuleCall_3_1_0()); 
	    }
		lv_colorFondo_4_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getVistaRule());
	        }
       		set(
       			$current, 
       			"colorFondo",
        		lv_colorFondo_4_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_5='tecnologia' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getVistaAccess().getTecnologiaKeyword_4_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getVistaAccess().getTecnologiaTecnologiaEnumRuleCall_4_1_0()); 
	    }
		lv_tecnologia_6_0=ruleTecnologia		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getVistaRule());
	        }
       		set(
       			$current, 
       			"tecnologia",
        		lv_tecnologia_6_0, 
        		"Tecnologia");
	        afterParserOrEnumRuleCall();
	    }

)
))?	otherlv_7='letra' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getVistaAccess().getLetraKeyword_5());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getVistaAccess().getLetraLetraParserRuleCall_6_0()); 
	    }
		lv_letra_8_0=ruleLetra		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getVistaRule());
	        }
       		set(
       			$current, 
       			"letra",
        		lv_letra_8_0, 
        		"Letra");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_9='}' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getVistaAccess().getRightCurlyBracketKeyword_7());
    }
)
;





// Entry rule entryRuleEString
entryRuleEString returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getEStringRule()); } 
	 iv_ruleEString=ruleEString 
	 { $current=$iv_ruleEString.current.getText(); }  
	 EOF 
;

// Rule EString
ruleEString returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_STRING_0=RULE_STRING    {
		$current.merge(this_STRING_0);
    }

    { 
    newLeafNode(this_STRING_0, grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0()); 
    }

    |    this_ID_1=RULE_ID    {
		$current.merge(this_ID_1);
    }

    { 
    newLeafNode(this_ID_1, grammarAccess.getEStringAccess().getIDTerminalRuleCall_1()); 
    }
)
    ;







// Entry rule entryRuleLetra
entryRuleLetra returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getLetraRule()); }
	 iv_ruleLetra=ruleLetra 
	 { $current=$iv_ruleLetra.current; } 
	 EOF 
;

// Rule Letra
ruleLetra returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getLetraAccess().getLetraAction_0(),
            $current);
    }
)	otherlv_1='Letra' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getLetraAccess().getLetraKeyword_1());
    }
	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getLetraAccess().getLeftCurlyBracketKeyword_2());
    }
(	otherlv_3='colorLetra' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getLetraAccess().getColorLetraKeyword_3_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getLetraAccess().getColorLetraEStringParserRuleCall_3_1_0()); 
	    }
		lv_colorLetra_4_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLetraRule());
	        }
       		set(
       			$current, 
       			"colorLetra",
        		lv_colorLetra_4_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_5='fuente' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getLetraAccess().getFuenteKeyword_4_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getLetraAccess().getFuenteEStringParserRuleCall_4_1_0()); 
	    }
		lv_fuente_6_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLetraRule());
	        }
       		set(
       			$current, 
       			"fuente",
        		lv_fuente_6_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_7='tamano' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getLetraAccess().getTamanoKeyword_5_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getLetraAccess().getTamanoTamanoLetraEnumRuleCall_5_1_0()); 
	    }
		lv_tamano_8_0=ruleTamanoLetra		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getLetraRule());
	        }
       		set(
       			$current, 
       			"tamano",
        		lv_tamano_8_0, 
        		"TamanoLetra");
	        afterParserOrEnumRuleCall();
	    }

)
))?	otherlv_9='}' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getLetraAccess().getRightCurlyBracketKeyword_6());
    }
)
;





// Rule Tecnologia
ruleTecnologia returns [Enumerator current=null] 
    @init { enterRule(); }
    @after { leaveRule(); }:
((	enumLiteral_0='android' 
	{
        $current = grammarAccess.getTecnologiaAccess().getAndroidEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_0, grammarAccess.getTecnologiaAccess().getAndroidEnumLiteralDeclaration_0()); 
    }
)
    |(	enumLiteral_1='iOS' 
	{
        $current = grammarAccess.getTecnologiaAccess().getIOSEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_1, grammarAccess.getTecnologiaAccess().getIOSEnumLiteralDeclaration_1()); 
    }
)
    |(	enumLiteral_2='web' 
	{
        $current = grammarAccess.getTecnologiaAccess().getWebEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_2, grammarAccess.getTecnologiaAccess().getWebEnumLiteralDeclaration_2()); 
    }
));



// Rule TamanoLetra
ruleTamanoLetra returns [Enumerator current=null] 
    @init { enterRule(); }
    @after { leaveRule(); }:
((	enumLiteral_0='small' 
	{
        $current = grammarAccess.getTamanoLetraAccess().getSmallEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_0, grammarAccess.getTamanoLetraAccess().getSmallEnumLiteralDeclaration_0()); 
    }
)
    |(	enumLiteral_1='medium' 
	{
        $current = grammarAccess.getTamanoLetraAccess().getMediumEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_1, grammarAccess.getTamanoLetraAccess().getMediumEnumLiteralDeclaration_1()); 
    }
)
    |(	enumLiteral_2='large' 
	{
        $current = grammarAccess.getTamanoLetraAccess().getLargeEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
        newLeafNode(enumLiteral_2, grammarAccess.getTamanoLetraAccess().getLargeEnumLiteralDeclaration_2()); 
    }
));



RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

