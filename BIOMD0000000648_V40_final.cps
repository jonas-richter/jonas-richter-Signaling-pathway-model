<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.34 (Build 251) (http://www.copasi.org) at 2022-01-04T08:25:51Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="34" versionDevel="251" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000163" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for Raf1 dephosphorylation (RafPPtase modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat10a*RafPPtase*pRaf1/(pRaf1+Km10a)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Kcat10a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="Km10a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="RafPPtase" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_261" name="pRaf1" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for Raf1 dephosphorylation (pAkt modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat10b*pAkt*pRaf1/(pRaf1+Km10b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="Kcat10b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="Km10b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="pAkt" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_250" name="pRaf1" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for MEK phosphorylation (pbRaf modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat11a*pBRaf*MEK/(MEK+Km11a)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="Kcat11a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="Km11a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="MEK" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="pBRaf" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for MEK phosphorylation (pRaf1, pRKIP and RKIP modifiers)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k11b1*pRaf1*MEK/(1+((RKIP-pRKIP)/k11b2)^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="MEK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="RKIP" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="k11b1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="k11b2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="pRKIP" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_277" name="pRaf1" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for MEK dephosphorylation (PP2A modifer)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat12*PP2A*pMEK/(pMEK+Km12)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="Kcat12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="Km12" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="PP2A" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="pMEK" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for ERK phosphorylation (pMEK modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat13*pMEK*ERK/(ERK+Km13)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="ERK" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_284" name="Kcat13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="Km13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="pMEK" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for ERK dephosphorylation (PP2A modifer)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat14*PP2A*pERK/(pERK+Km14)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="Kcat14" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="Km14" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="PP2A" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_286" name="pERK" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for RKIP dephosphorylation_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        V15b*pRKIP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="pRKIP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_292" name="V15b" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for bRaf phosphorylation (pRas modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat16a*pRas*BRaf/(BRaf+Km16a)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="BRaf" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_291" name="Kcat16a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="Km16a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="pRas" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for bRaf phosphorylation (pRap1 modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat16b*pRap1*BRaf/(BRaf+Km16b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_299" name="BRaf" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_298" name="Kcat16b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="Km16b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="pRap1" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for P90Rsk phosphorylation (pERK modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat18b*pERK*P90Rsk/(P90Rsk+Km18b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="Kcat18b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="Km18b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="P90Rsk" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="pERK" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for PI3K phosphorylation (boundEGFR modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat19a*bEGFR*PI3K/(PI3K+Km19a)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="Kcat19a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="Km19a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="PI3K" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_304" name="bEGFR" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for PI3K phosphorylation (pRas modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat19b*pRas*PI3K/(PI3K+Km19b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="Kcat19b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="Km19b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="PI3K" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_308" name="pRas" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for EGFR binding_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (k21*EGF*fEGFR-k22*bEGFR)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_315" name="EGF" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_314" name="bEGFR" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_313" name="fEGFR" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_312" name="k21" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="k22" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for PIP2 phosphorylated to PIP3_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat20*pPI3K*PIP2/(PIP2+Km20)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_321" name="Kcat20" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="Km20" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="PIP2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_318" name="pPI3K" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for PI3K dephosphorylation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k19c*pPI3K
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_324" name="k19c" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="pPI3K" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for PIP3 dephosphorylated to PIP2_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat21*PTEN*PIP3/(PIP3+Km21)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="Kcat21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="PTEN" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="PIP3" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="Km21" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for Akt phosphorylation (PIP3 modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat22a*PIP3*Akt/(Akt+Km22a)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="Kcat22a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="PIP3" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_328" name="Akt" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="Km22a" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for Akt dephosphorylation_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat22b*pAkt/(Km22b+pAkt)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="Kcat22b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="pAkt" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="Km22b" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for C3G phosphorylation (boundEGFR modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat23a*bEGFR*C3G/(C3G+Km23a)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="Kcat23a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="bEGFR" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_331" name="C3G" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="Km23a" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for Rap1 phosphorylation (pC3G modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat24*pC3G*Rap1/(Rap1+Km24)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_341" name="Kcat24" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="pC3G" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_339" name="Rap1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_338" name="Km24" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for Rap1 dephosphorylation (Rap1_GAP modifer)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat25*Rap1Gap*pRap1/(pRap1+Km25)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_345" name="Kcat25" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="Rap1Gap" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_343" name="pRap1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_342" name="Km25" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for PKCD synthesis_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k1*PKCD_degraded/(k2*GSK3b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_349" name="GSK3b" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_348" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="PKCD_degraded" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for PKCD degradation_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k26b*PKCD
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_353" name="k26b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="PKCD" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for GSK3b phosphorylation (pERK modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat27a*GSK3B*k2*(pERK+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="Kcat27a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="GSK3B" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_354" name="pERK" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_355" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for GSK3b phosphorylation (pAkt modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat27b*GSK3B*k2*(pAkt+1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_359" name="Kcat27b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="GSK3B" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_357" name="pAkt" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_356" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for Dsh activation_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k28*Dshi*W
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_363" name="k28" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="Dshi" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_361" name="W" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for Dsh deactivation_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k29*Dsha
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_365" name="k29" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="Dsha" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for APC_Axin_GSK3b complex disassembly (Dsha modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k30*(Dsha+1)*APCAxinGSK3B
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="k30" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="Dsha" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_367" name="APCAxinGSK3B" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for pAPC_pAxin_GSK3b_bCatenin complex formation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (k341*pAPCpAxinGSK3B*BCatenin-k342*pAPCpAxinGSK3BBCatenin)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_370" name="k341" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="pAPCpAxinGSK3B" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_368" name="BCatenin" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_371" name="k342" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="pAPCpAxinGSK3BBCatenin" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for bCatenin_TCF complex binding_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (k381*BCatenin*TCF-k382*TCFBCatenin)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="k381" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="BCatenin" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_375" name="TCF" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_374" name="k382" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="TCFBCatenin" order="4" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for SOS dephosphorylation (pP90Rsk modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat6b*pP90Rsk*pSOS/(pSOS+Km6b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_382" name="Kcat6b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="pP90Rsk" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_380" name="pSOS" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_379" name="Km6b" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for Ras phosphorylation (pSOS modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat7*pSOS*Ras/(Ras+Km7)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_385" name="Kcat7" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="pSOS" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_383" name="Ras" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_378" name="Km7" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for Ras dephosphorylation (Ras_Gap modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat8b*RasGap*pRas/(pRas+Km8b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_389" name="Kcat8b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="RasGap" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_387" name="pRas" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_386" name="Km8b" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for Raf1 phosphorylation (pRas modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat9a*pRas*Raf1/(Raf1+Km9a)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_393" name="Kcat9a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="pRas" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_391" name="Raf1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="Km9a" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for Raf1 phosphorylation (X modifier)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k9b*W*X*Raf1/(Km9b+Raf1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_397" name="k9b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="W" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_395" name="X" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_394" name="Raf1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_398" name="Km9b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for bRaf dephosphorylation_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat17a*RafPPtase*pBRaf/(Km17a+RafPPtase)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="Kcat17a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="RafPPtase" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_401" name="pBRaf" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_400" name="Km17a" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for bRaf dephosphorylation_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        Kcat17b*pBRaf*pAkt/(Km17b+pBRaf)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_406" name="Kcat17b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="pBRaf" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_404" name="pAkt" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_399" name="Km17b" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for APC and Axin phosphorylation (in compound)_1" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k32a*APCAxinGSK3B
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_410" name="k32a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="APCAxinGSK3B" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for P90Rsk dephosphorylation" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k18a*pP90Rsk
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_407" name="k18a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="pP90Rsk" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for SOS phosphorylation (PKCD, bEGFR and pERK modifier)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        (k53*bEGFR*k52*PKCD*k51*SOS)/(1+(pERK/k54))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_412" name="k53" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="bEGFR" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_413" name="k52" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="PKCD" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_415" name="k51" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="SOS" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_417" name="pERK" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_418" name="k54" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for bCatenin phosphorylation (in compound)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k35*pAPCpAxinGSK3BBCatenin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_426" name="k35" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="pAPCpAxinGSK3BBCatenin" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for RKIP phosphorylation (pERK modifier)" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k15a*(pERK+1)*RKIP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_423" name="pERK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_424" name="RKIP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_422" name="k15a" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for X synthesis" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
      </MiriamAnnotation>
      <Expression>
        k1*bCatenin_TCF*X_degraded
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_419" name="bCatenin_TCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_420" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="X_degraded" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Padala2017- ERK, PI3K/Akt and Wnt signalling network (normal)" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043408"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051896"/>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0060828"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqmodel:hasProperty>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000033"/>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000149"/>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000623"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/21391741"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/28367561"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-14T10:34:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>sheriff@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Sheriff</vCard:Family>
                <vCard:Given>Rahuman</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>emmafairbanks93@gmail.com</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Fairbanks</vCard:Family>
                <vCard:Given>Emma</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Nottingham</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2017-09-20T14:26:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000165"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/map04010"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/map04151"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.pathway/map04310"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1708290005"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000648"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Edits made: 
V1: Removed species "null" //
V2: Changed quantity unit from mol to nmol // Changed compartment volume from 1l to 1e-12l // Changed Axin degradation sign (from negative to positive) // Changed Axin degradation reaction to mass action law reaction //
Introduced Ras degradation reaction (mass action law)
V3: Changed Axin degradation (normalized to Cell Volume) // Changed reaction for EGFR dephosphorylation from V1/Cell to ((k1*S)-(k2*P))/Cell with S=pEGFR and P=freeEGFR // Changed Ras synthesis_1 function from V8a/Cell to (k2*P)/Cell // Changed bCatenin synthesis from V37b/Cell to (k1*P)/Cell with P=bCatenin // Changed function for bCatenin degradation (normalized to Cell Volume)
V4: removed normalization to cell volume // Changed Ras synthesis reaction from constant flux to V8a*Ras // Changed freeEGFR degradation reaction from default k value to k3 // Changed bCatenin degradation reaction from default k value to k37c // Changed reaction "APC and Axin phosphorylation (in compound)" to k32a*APCAxinGSK3B // Added function for APC_Axin_GSK3b complex formation (see original version) // Changed Axin degradation reaction from default k value to k33b // Changed bCatenin degradation reaction from constant flux to k37c*bCatenin (THIS CAUSES THE TIMECOURSE TO CRASH --> therefore I left the default k value (0.1 l/s))
V5: Function for EGFR dephosphorylation removed (pEGFR had no function for the signaling in this model) //
V6: established freeEGFR synthesis reaction with same constant as in degradation reaction. // Added EGF degradation reaction with arbitrary k = 1 l/s to mimick a quick, transient EGF stimulation
V7: removed reactions: freeEGFR synthesis, freeEGFR degradation, boundEGFR degradation
V9: Changed function for P90Rsk phosphorylation (pERK modifier) by specifying pERK as modifier // 
V10: Changed all functions with indicated modifiers by specifying their modifiers
V11: Changed function for SOS phosphorylation (PKCD, pERK and boundEGFR) from (k51*bEGFR+k52+k53*PKCD)/(1+pERK/k54) to (k53*bEGFR*k52*PKCD*k51*SOS)/(1+(pERK/k54)) // Removed Ras degradation and synthesis reactions (because with them, [Ras] quickly reaches 0 even in the absence of EGF)
V12: Edited "Function for Dsh activation_1" by specifying W as modifier // Defined W as Species (before Global quantity)
V13: Wnt degradation reaction removed // changed pbCatenin degradation to pbCatenin dephosphorylation (pbCatenin -> bCatenin) // Changed value for constant of synthesis reaction to have the same value (V37b) as the degradation reaction
V14: Made "bCatenin phosphorylation (in compound)" irreversible (phosphorylation reactions are usually irreversible)
V15: remove GSK3B synthesis rections (makes no sense that RKIP converts to GSK3B) / also removed RKIP degradation reaction (why should RKIP be degraded) // changed "Function for RKIP phosphorylation (pERK modifier)_1" by using the same function like C3G phosphorylation (with different substrate and modifier).
V16: Changed initial concentration of pRKIP from 0.8619 to 0 (otherwise the RKIP is phosphorylated without stimulus (EGF))
V17: removed "GSK3b dephosphorylation" reaction (caused dephosphorylation of pGSK3B independent of any stimulus)
V18: removed Axin synthesis and degradation reactions // made Axin_APC assembly dependent on Dshi (only if W activates Dsh, Axin_APC assembly is impaired) 
V19: removed APC_bCatenin and belonging reaction and function (APC_bCatenin has no function in modell)
V20: removed bCatenin synthesis and degradation reactions
V21: Introduced new PKCD synthesis (inhibited by GSK3B) and degradation reactions
V22: TO DO: - check, which reactions are running without stimulus? - Figure out how to deal with X
V24: edited "Function for GSK3b phosphorylation (pERK modifier)_1" (function now does not equal zero any more and I added a constant term to pERK concentration)
V25: made X synthesis dependent on bCatenin_TCF
V26: Introduced APC_Axin_GSK3b formation reaction
V29: removed APC and Axin // adjusted constants of X synthesis/degradation

&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;body xmlns="http://www.w3.org/1999/xhtml">
    &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;div class="dc:title">Padala2017- ERK, PI3K/Akt and Wnt signalling
network (normal)&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/div>
    &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;div class="dc:description">Crosstalk model of the ERK, Wnt and Akt
signalling pathways under normal condition.&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/div>
    &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;div class="dc:bibliographicCitation">
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;p>This model is described in the article:&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/p>
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;div class="bibo:title">
        &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;a href="http://identifiers.org/pubmed/28367561" title="Access to this publication">Cancerous perturbations
    within the ERK, PI3K/Akt, and Wnt/?-catenin signaling network
    constitutively activate inter-pathway positive feedback
    loops.&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/a>
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/div>
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;div class="bibo:authorList">Padala RR, Karnawat R, Viswanathan
  SB, Thakkar AV, Das AB.&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/div>
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;div class="bibo:Journal">Mol Biosyst 2017 May; 13(5):
  830-840&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/div>
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;p>Abstract:&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/p>
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;div class="bibo:abstract">
        &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;p>Perturbations in molecular signaling pathways are a result
    of genetic or epigenetic alterations, which may lead to
    malignant transformation of cells. Despite cellular robustness,
    specific genetic or epigenetic changes of any gene can trigger
    a cascade of failures, which result in the malfunctioning of
    cell signaling pathways and lead to cancer phenotypes. The
    extent of cellular robustness has a link with the architecture
    of the network such as feedback and feedforward loops.
    Perturbation in components within feedback loops causes a
    transition from a regulated to a persistently activated state
    and results in uncontrolled cell growth. This work represents
    the mathematical and quantitative modeling of ERK, PI3K/Akt,
    and Wnt/?-catenin signaling crosstalk to show the dynamics of
    signaling responses during genetic and epigenetic changes in
    cancer. ERK, PI3K/Akt, and Wnt/?-catenin signaling crosstalk
    networks include both intra and inter-pathway feedback loops
    which function in a controlled fashion in a healthy cell. Our
    results show that cancerous perturbations of components such as
    EGFR, Ras, B-Raf, PTEN, and components of the destruction
    complex cause extreme fragility in the network and
    constitutively activate inter-pathway positive feedback loops.
    We observed that the aberrant signaling response due to the
    failure of specific network components is transmitted
    throughout the network via crosstalk, generating an additive
    effect on cancer growth and proliferation.&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/p>
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/div>
    &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/div>
    &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;div class="dc:publisher">
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;p>This model is hosted on 
  &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;a href="http://www.ebi.ac.uk/biomodels/">BioModels Database&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/a>
  and identified by: 
  &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;a href="http://identifiers.org/biomodels.db/BIOMD0000000648">BIOMD0000000648&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/a>.&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/p>
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;p>To cite BioModels Database, please use: 
  &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;a href="http://identifiers.org/pubmed/25414348" target="_blank">Chelliah V et al. BioModels: ten-year
  anniversary. Nucl. Acids Res. 2015, 43(Database
  issue):D542-8&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/a>.&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/p>
    &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/div>
    &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;div class="dc:license">
      &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;p>To the extent possible under law, all copyright and related or
  neighbouring rights to this encoded model have been dedicated to
  the public domain worldwide. Please refer to 
  &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0
  Public Domain Dedication&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/a> for more information.&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/p>
    &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/div>
  &amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005623" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="APC_Axin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="APC_Axin_GSK3b" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054"/>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Akt" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31749"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="bCatenin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="bRaf" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P15056" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="C3G" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13905" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Dsha" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14640" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Dshi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14640" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="EGF" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01133" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="ERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P27361" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="GSK3b" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="MEK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q02750" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="P90Rsk" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15418" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="PI3K" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:omit:0027264" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="PIP2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:0018348" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="PIP3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:0016618" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="PKCD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q05655" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PP2A" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P67775" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="PTEN" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P60484" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="RKIP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30086" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Raf1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04049" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="RafPPtase" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P67775" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Rap1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P62834" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Rap1_Gap" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P47736" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="Ras" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01112" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Ras_Gap" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P20936" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="SOS" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07889" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="TCF" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9UJU2" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="bCatenin_TCF" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q9UJU2" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="X" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-08-14T10:57:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="boundEGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00533" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01133" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="freeEGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P00533" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="pAPC_pAxin_GSK3b" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="pAPC_pAxin_GSK3b_bCatenin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="pAPC_pAxin_GSK3b_pbCatenin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O15169" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P25054" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222" />
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="pAkt" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P31749" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="pbCatenin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P35222" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="pbRaf" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P15056" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="pC3G" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P01024" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="pERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P28482" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="pGSK3b" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P49841" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="pMEK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q02750" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="pP90Rsk" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q15418" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="pPI3K" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:omit:0027264" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="pRKIP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30086" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="pRaf1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P04049" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="pRap1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P62834" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="pRas" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P62070" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="pSOS" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:bao:0002007" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q07889" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="null" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="W" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="PKCD_degraded" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="X_degraded" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="FRZ" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="bound_FRZ" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Kcat10a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Kcat10b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Kcat11a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_2">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Kcat12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_3">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Kcat13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_4">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Kcat14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Kcat16a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_6">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Kcat16b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_7">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Kcat17a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_8">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Kcat17b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_9">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Kcat18b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_10">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Kcat19a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_11">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Kcat19b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Kcat20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="Kcat21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="Kcat22a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="Kcat22b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="Kcat23a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="Kcat24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="Kcat25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="Kcat27a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Kcat27b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Kcat27d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Kcat6b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Kcat7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_24">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="Kcat8b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_25">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="Kcat9a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_26">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="Km10a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_27">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Km10b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_28">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Km11a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_29">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Km12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_30">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="Km13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_31">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="Km14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_32">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Km16a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Km16b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="Km17a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Km17b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="Km18b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="Km19a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Km19b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="Km20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Km21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Km22a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Km22b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="Km23a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="Km24" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="Km25" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Km39" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="Km6b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="Km7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Km8b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="Km9a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="Km9b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="V1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="V15b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="V26a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="V37b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="V8a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="k11b1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="k11b2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="k15a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="k15c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="k18a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="k19c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="k21" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="k22" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="k23b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_66">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="k26a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_67">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="k26b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_68">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="k27c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_69">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="k28" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_70">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="k29" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_71">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="k3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_72">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="k30" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_73">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="k311" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_74">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="k312" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_75">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="k32a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_76">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="k32b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_77">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="k33a1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_78">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="k33a2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_79">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="k33b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_80">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="k33c1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_81">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="k33c2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_82">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="k341" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_83">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="k342" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_84">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="k35" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_85">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="k36" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_86">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="k37c" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="k381" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_88">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="k382" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_89">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="k39" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_90">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="k4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_91">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="k40" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_92">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="k41" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="k51" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_94">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="k52" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_95">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="k53" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_96">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="k54" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_97">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="k6a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_98">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="k9b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_99">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="P90Rsk dephosphorylation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5365" name="k18a" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="PI3K dephosphorylation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5364" name="k19c" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="EGFR binding" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5363" name="k22" value="0.121008"/>
          <Constant key="Parameter_5362" name="k21" value="2.18503e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="PIP2 phosphorylated to PIP3" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5361" name="Kcat20" value="4"/>
          <Constant key="Parameter_5360" name="Km20" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="PIP3 dephosphorylated to PIP2" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5684" name="Kcat21" value="5.5"/>
          <Constant key="Parameter_5685" name="Km21" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Akt dephosphorylation" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5683" name="Km22b" value="100"/>
          <Constant key="Parameter_5686" name="Kcat22b" value="48.667"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="C3G dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5713" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5713"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="PKCD degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5714" name="k26b" value="0.020369"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Parameter_5714"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Dsh deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5712" name="k29" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="APC and Axin phosphorylation (in compound)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5715" name="k32a" value="0.00445"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="APC and Axin dephosphorylation (in compound)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5697" name="k1" value="0.00445"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="pAPC_pAxin_GSK3b_pbCatenin complex disassembly" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5698" name="k1" value="3.433"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="bCatenin_TCF complex bilding" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5696" name="k382" value="0.5"/>
          <Constant key="Parameter_5699" name="k381" value="0.0168652"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="pbCatenin dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5359" name="k1" value="0.00695"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="P90Rsk phosphorylation (pERK modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5358" name="Km18b" value="763523"/>
          <Constant key="Parameter_5357" name="Kcat18b" value="0.02137"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Raf1 dephosphorylation (RafPPtase modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5356" name="Km10a" value="1061.7"/>
          <Constant key="Parameter_5355" name="Kcat10a" value="0.12633"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Raf1 dephosphorylation (pAkt modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5354" name="Km10b" value="119355"/>
          <Constant key="Parameter_5353" name="Kcat10b" value="15.1212"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="MEK phosphorylation (pbRaf modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5352" name="Km11a" value="4.7684e+06"/>
          <Constant key="Parameter_5351" name="Kcat11a" value="185.76"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="MEK phosphorylation (pRaf1, pRKIP and RKIP modifiers)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5350" name="k11b2" value="120"/>
          <Constant key="Parameter_5349" name="k11b1" value="1.1167e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="ERK phosphorylation (pMEK modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5348" name="Km13" value="1.0073e+06"/>
          <Constant key="Parameter_5347" name="Kcat13" value="9.8537"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="bRaf phosphorylation (pRas modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5346" name="Km16a" value="62645"/>
          <Constant key="Parameter_5345" name="Kcat16a" value="0.8841"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="bRaf phosphorylation (pRap1 modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5344" name="Km16b" value="62464.6"/>
          <Constant key="Parameter_5652" name="Kcat16b" value="0.8841"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="PI3K phosphorylation (boundEGFR modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5653" name="Km19a" value="184912"/>
          <Constant key="Parameter_5651" name="Kcat19a" value="10.6737"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="PI3K phosphorylation (pRas modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5654" name="Km19b" value="272056"/>
          <Constant key="Parameter_5343" name="Kcat19b" value="0.07711"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Akt phosphorylation (PIP3 modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5342" name="Km22a" value="100"/>
          <Constant key="Parameter_5341" name="Kcat22a" value="0.33"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="C3G phosphorylation (boundEGFR modifier)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5340" name="Km23a" value="6.0861e+06"/>
          <Constant key="Parameter_5339" name="Kcat23a" value="694.73"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Rap1 phosphorylation (pC3G modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5338" name="Km24" value="35954.3"/>
          <Constant key="Parameter_5337" name="Kcat24" value="32.344"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Ras phosphorylation (pSOS modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5336" name="Km7" value="35954.3"/>
          <Constant key="Parameter_5333" name="Kcat7" value="32.644"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Ras dephosphorylation (Ras_Gap modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5335" name="Km8b" value="1.43241e+06"/>
          <Constant key="Parameter_5332" name="Kcat8b" value="1509.36"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Raf1 phosphorylation (pRas modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5334" name="Km9a" value="62464.6"/>
          <Constant key="Parameter_5331" name="Kcat9a" value="0.884096"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="bRaf dephosphorylation (RafPPtase modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5330" name="Km17a" value="1061.71"/>
          <Constant key="Parameter_5329" name="Kcat17a" value="0.12633"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="bRaf dephosphorylation (pAkt modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5328" name="Km17b" value="119355"/>
          <Constant key="Parameter_5327" name="Kcat17b" value="15.1212"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="ERK dephosphorylation (PP2A modifer)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5326" name="Km14" value="3.4965e+06"/>
          <Constant key="Parameter_5325" name="Kcat14" value="50"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="MEK dephosphorylation (PP2A modifer)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5324" name="Km12" value="518750"/>
          <Constant key="Parameter_5323" name="Kcat12" value="2.8324"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Rap1 dephosphorylation (Rap1_GAP modifer)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5317" name="Km25" value="1.4324e+06"/>
          <Constant key="Parameter_5316" name="Kcat25" value="1509.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="SOS phosphorylation (PKCD, bEGFR, pERK modifier)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5315" name="k53" value="0.1"/>
          <Constant key="Parameter_5314" name="k52" value="0.1"/>
          <Constant key="Parameter_5313" name="k51" value="0.003465"/>
          <Constant key="Parameter_5312" name="k54" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Parameter_5315"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Parameter_5314"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Dsh activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5311" name="k28" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="Raf1 phosphorylation (X modifier)" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5310" name="Km9b" value="15"/>
          <Constant key="Parameter_5309" name="k9b" value="0.025"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="bCatenin phosphorylation (in compound)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5308" name="k35" value="3.433"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="RKIP dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5307" name="V15b" value="4"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="RKIP phosphorylation (pERK modifier)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5306" name="k15a" value="1.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="GSK3b dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5305" name="k1" value="0.0369003"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5305"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="GSK3b phosphorylation (pERK modifier)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5304" name="k2" value="0.05"/>
          <Constant key="Parameter_5303" name="Kcat27a" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Parameter_5304"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="GSK3b phosphorylation (pAkt modifier)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5302" name="k2" value="0.01"/>
          <Constant key="Parameter_5301" name="Kcat27b" value="0.04596"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Parameter_5302"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="SOS dephosphorylation (pP90Rsk modifier)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5300" name="Km6b" value="896896"/>
          <Constant key="Parameter_5299" name="Kcat6b" value="1611.97"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="X degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5298" name="k1" value="0.116405"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5298"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="APC_Axin_GSK3b complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5297" name="k1" value="4.2617"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5297"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_0"/>
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="W binding to FRZ" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5296" name="k1" value="1e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5296"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_50"/>
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="APC_Axin_GSK3b complex disassembly (Dsha modifier)" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"/>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5295" name="k30" value="20.6586"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Parameter_5295"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="X synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5294" name="k1" value="0.0133428"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="AmountPerTime">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Parameter_5294"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="bound_FRZ internalisation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5293" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5293"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="EGF degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5292" name="k1" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5292"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="pAPC_pAxin_GSK3b_bCatenin complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5291" name="k342" value="2"/>
          <Constant key="Parameter_5290" name="k341" value="0.01667"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="bCatenin_TCF disassembly" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5289" name="k1" value="0.0809096"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="Parameter_5289"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="PKCD synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5288" name="k1" value="0.1"/>
          <Constant key="Parameter_5287" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="AmountPerTime" scalingCompartment="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Parameter_5288"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Parameter_5287"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal)" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell]" value="9.9999999999999998e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[APC_Axin]" value="0.90332111399999981" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[APC_Axin_GSK3b]" value="9.3614970573263996" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Akt]" value="120442.8152" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bCatenin]" value="25419.95908102344" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bRaf]" value="120442.8152" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[C3G]" value="301107.03799999959" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Dsha]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Dshi]" value="60221.407599999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[EGF]" value="180664.22279999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[ERK]" value="156575.65975999995" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[GSK3b]" value="29590.993052411941" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[MEK]" value="409505.571679999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[P90Rsk]" value="36132.844559999998" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PI3K]" value="60221.407599999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PIP2]" value="421549.8531999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PIP3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PKCD]" value="150.03963322828341" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PP2A]" value="144531.37823999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PTEN]" value="162597.80051999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[RKIP]" value="12591.694115083999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Raf1]" value="60221.407599999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[RafPPtase]" value="36132.844559999998" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Rap1]" value="120442.8152" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Rap1_Gap]" value="7226.5689119999861" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Ras]" value="60221.407599999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Ras_Gap]" value="60221.407599999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[SOS]" value="60221.407599999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[TCF]" value="3726.1273470250871" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bCatenin_TCF]" value="5306.7706591195974" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[X]" value="6223.3644011846382" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[boundEGFR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[freeEGFR]" value="180664.22279999999" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAPC_pAxin_GSK3b]" value="9.2138753627999996" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAPC_pAxin_GSK3b_bCatenin]" value="1.2044281520000009" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAPC_pAxin_GSK3b_pbCatenin]" value="1.2044281520000009" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAkt]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pbCatenin]" value="595.82701127525922" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pbRaf]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pC3G]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pERK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pGSK3b]" value="515.15800917343995" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pMEK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pP90Rsk]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pPI3K]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRKIP]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRaf1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRap1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRas]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pSOS]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[null]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[W]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PKCD_degraded]" value="150.03963322828341" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[X_degraded]" value="6180.5230619880012" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[FRZ]" value="62028.049827999996" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bound_FRZ]" value="602.21407599999998" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat10a]" value="0.12633" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat10b]" value="15.1212" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat11a]" value="185.75999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat12]" value="2.8323999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat13]" value="9.8536999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat14]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat16a]" value="0.8841" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat16b]" value="0.8841" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat17a]" value="0.12633" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat17b]" value="15.1212" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat18b]" value="0.02137" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat19a]" value="10.6737" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat19b]" value="0.077109999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat20]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat21]" value="5.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat22a]" value="0.33000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat22b]" value="48.667000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat23a]" value="694.73000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat24]" value="32.344000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat25]" value="1509.4000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27a]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27b]" value="0.045960000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27d]" value="0.01541" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat6b]" value="1611.97" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat7]" value="32.643999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat8b]" value="1509.3599999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat9a]" value="0.88409599999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km10a]" value="1061.7" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km10b]" value="119355" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km11a]" value="4768400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km12]" value="518750" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km13]" value="1007300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km14]" value="3496500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km16a]" value="62645" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km16b]" value="62464.599999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km17a]" value="1061.71" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km17b]" value="119355" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km18b]" value="763523" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km19a]" value="184912" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km19b]" value="272056" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km20]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km21]" value="0.080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km22a]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km22b]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km23a]" value="6086100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km24]" value="35954.300000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km25]" value="1432400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km39]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km6b]" value="896896" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km7]" value="35954.300000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km8b]" value="1432410" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km9a]" value="62464.599999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km9b]" value="15" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V1]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V15b]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V26a]" value="0.0015399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V37b]" value="0.0070499999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V8a]" value="0.0717" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k11b1]" value="1.1167e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k11b2]" value="120" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k15a]" value="1.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k15c]" value="0.0019300000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k18a]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k19c]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k21]" value="2.1850299999999996e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k22]" value="0.121008" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k23b]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k26a]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k26b]" value="0.00038499999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k27c]" value="0.00014999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k28]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k29]" value="0.0030000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k3]" value="0.00125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k30]" value="0.00083299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k311]" value="0.0015150000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k312]" value="0.01515" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k32a]" value="0.00445" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k32b]" value="0.0022169999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33a1]" value="0.016670000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33a2]" value="0.83330000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33b]" value="0.0027829999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33c1]" value="1.37e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k33c2]" value="1.667e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k341]" value="0.016670000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k342]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k35]" value="3.4329999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k36]" value="3.4329999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k37c]" value="4.2830000000000003e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k381]" value="0.016865178848132267" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k382]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k39]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k4]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k40]" value="0.00025000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k41]" value="0.0069499999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k51]" value="0.0034650000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k52]" value="3.8500000000000001e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k53]" value="0.00028833" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k54]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k6a]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k9b]" value="0.025000000000000001" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[P90Rsk dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[P90Rsk dephosphorylation],ParameterGroup=Parameters,Parameter=k18a" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k18a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K dephosphorylation],ParameterGroup=Parameters,Parameter=k19c" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k19c],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[EGFR binding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[EGFR binding],ParameterGroup=Parameters,Parameter=k22" value="0.121008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[EGFR binding],ParameterGroup=Parameters,Parameter=k21" value="2.1850299999999996e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP2 phosphorylated to PIP3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP2 phosphorylated to PIP3],ParameterGroup=Parameters,Parameter=Kcat20" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP2 phosphorylated to PIP3],ParameterGroup=Parameters,Parameter=Km20" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP3 dephosphorylated to PIP2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP3 dephosphorylated to PIP2],ParameterGroup=Parameters,Parameter=Kcat21" value="5.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PIP3 dephosphorylated to PIP2],ParameterGroup=Parameters,Parameter=Km21" value="0.080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt dephosphorylation],ParameterGroup=Parameters,Parameter=Km22b" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km22b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt dephosphorylation],ParameterGroup=Parameters,Parameter=Kcat22b" value="48.667000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat22b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[C3G dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[C3G dephosphorylation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PKCD degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PKCD degradation],ParameterGroup=Parameters,Parameter=k26b" value="0.020369000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Dsh deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Dsh deactivation],ParameterGroup=Parameters,Parameter=k29" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k29],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC and Axin phosphorylation (in compound)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC and Axin phosphorylation (in compound)],ParameterGroup=Parameters,Parameter=k32a" value="0.00445" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k32a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC and Axin dephosphorylation (in compound)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC and Axin dephosphorylation (in compound)],ParameterGroup=Parameters,Parameter=k1" value="0.00445" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k32a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pAPC_pAxin_GSK3b_pbCatenin complex disassembly]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pAPC_pAxin_GSK3b_pbCatenin complex disassembly],ParameterGroup=Parameters,Parameter=k1" value="3.4329999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k36],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin_TCF complex bilding]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin_TCF complex bilding],ParameterGroup=Parameters,Parameter=k382" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k382],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin_TCF complex bilding],ParameterGroup=Parameters,Parameter=k381" value="0.016865178848132267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k381],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pbCatenin dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pbCatenin dephosphorylation],ParameterGroup=Parameters,Parameter=k1" value="0.0069499999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k41],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[P90Rsk phosphorylation (pERK modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[P90Rsk phosphorylation (pERK modifier)],ParameterGroup=Parameters,Parameter=Km18b" value="763523" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km18b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[P90Rsk phosphorylation (pERK modifier)],ParameterGroup=Parameters,Parameter=Kcat18b" value="0.02137" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat18b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (RafPPtase modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (RafPPtase modifier)],ParameterGroup=Parameters,Parameter=Km10a" value="1061.7" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km10a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (RafPPtase modifier)],ParameterGroup=Parameters,Parameter=Kcat10a" value="0.12633" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat10a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (pAkt modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=Km10b" value="119355" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km10b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 dephosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=Kcat10b" value="15.1212" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat10b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pbRaf modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pbRaf modifier)],ParameterGroup=Parameters,Parameter=Km11a" value="4768400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km11a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pbRaf modifier)],ParameterGroup=Parameters,Parameter=Kcat11a" value="185.75999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat11a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pRaf1\, pRKIP and RKIP modifiers)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pRaf1\, pRKIP and RKIP modifiers)],ParameterGroup=Parameters,Parameter=k11b2" value="120" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k11b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK phosphorylation (pRaf1\, pRKIP and RKIP modifiers)],ParameterGroup=Parameters,Parameter=k11b1" value="1.1167e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k11b1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK phosphorylation (pMEK modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK phosphorylation (pMEK modifier)],ParameterGroup=Parameters,Parameter=Km13" value="1007300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK phosphorylation (pMEK modifier)],ParameterGroup=Parameters,Parameter=Kcat13" value="9.8536999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRas modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Km16a" value="62645" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km16a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Kcat16a" value="0.8841" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat16a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRap1 modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRap1 modifier)],ParameterGroup=Parameters,Parameter=Km16b" value="62464.599999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km16b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf phosphorylation (pRap1 modifier)],ParameterGroup=Parameters,Parameter=Kcat16b" value="0.8841" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat16b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (boundEGFR modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (boundEGFR modifier)],ParameterGroup=Parameters,Parameter=Km19a" value="184912" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km19a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (boundEGFR modifier)],ParameterGroup=Parameters,Parameter=Kcat19a" value="10.6737" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat19a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (pRas modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Km19b" value="272056" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km19b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PI3K phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Kcat19b" value="0.077109999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat19b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt phosphorylation (PIP3 modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt phosphorylation (PIP3 modifier)],ParameterGroup=Parameters,Parameter=Km22a" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km22a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Akt phosphorylation (PIP3 modifier)],ParameterGroup=Parameters,Parameter=Kcat22a" value="0.33000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat22a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[C3G phosphorylation (boundEGFR modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[C3G phosphorylation (boundEGFR modifier)],ParameterGroup=Parameters,Parameter=Km23a" value="6086100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km23a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[C3G phosphorylation (boundEGFR modifier)],ParameterGroup=Parameters,Parameter=Kcat23a" value="694.73000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat23a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 phosphorylation (pC3G modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 phosphorylation (pC3G modifier)],ParameterGroup=Parameters,Parameter=Km24" value="35954.300000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 phosphorylation (pC3G modifier)],ParameterGroup=Parameters,Parameter=Kcat24" value="32.344000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras phosphorylation (pSOS modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras phosphorylation (pSOS modifier)],ParameterGroup=Parameters,Parameter=Km7" value="35954.300000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras phosphorylation (pSOS modifier)],ParameterGroup=Parameters,Parameter=Kcat7" value="32.643999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras dephosphorylation (Ras_Gap modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras dephosphorylation (Ras_Gap modifier)],ParameterGroup=Parameters,Parameter=Km8b" value="1432410" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km8b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Ras dephosphorylation (Ras_Gap modifier)],ParameterGroup=Parameters,Parameter=Kcat8b" value="1509.3599999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat8b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (pRas modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Km9a" value="62464.599999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km9a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (pRas modifier)],ParameterGroup=Parameters,Parameter=Kcat9a" value="0.88409599999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat9a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (RafPPtase modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (RafPPtase modifier)],ParameterGroup=Parameters,Parameter=Km17a" value="1061.71" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km17a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (RafPPtase modifier)],ParameterGroup=Parameters,Parameter=Kcat17a" value="0.12633" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat17a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (pAkt modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=Km17b" value="119355" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km17b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bRaf dephosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=Kcat17b" value="15.1212" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat17b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK dephosphorylation (PP2A modifer)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK dephosphorylation (PP2A modifer)],ParameterGroup=Parameters,Parameter=Km14" value="3496500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[ERK dephosphorylation (PP2A modifer)],ParameterGroup=Parameters,Parameter=Kcat14" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK dephosphorylation (PP2A modifer)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK dephosphorylation (PP2A modifer)],ParameterGroup=Parameters,Parameter=Km12" value="518750" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[MEK dephosphorylation (PP2A modifer)],ParameterGroup=Parameters,Parameter=Kcat12" value="2.8323999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 dephosphorylation (Rap1_GAP modifer)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 dephosphorylation (Rap1_GAP modifer)],ParameterGroup=Parameters,Parameter=Km25" value="1432400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Rap1 dephosphorylation (Rap1_GAP modifer)],ParameterGroup=Parameters,Parameter=Kcat25" value="1509.4000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS phosphorylation (PKCD\, bEGFR\, pERK modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS phosphorylation (PKCD\, bEGFR\, pERK modifier)],ParameterGroup=Parameters,Parameter=k53" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS phosphorylation (PKCD\, bEGFR\, pERK modifier)],ParameterGroup=Parameters,Parameter=k52" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS phosphorylation (PKCD\, bEGFR\, pERK modifier)],ParameterGroup=Parameters,Parameter=k51" value="0.0034650000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k51],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS phosphorylation (PKCD\, bEGFR\, pERK modifier)],ParameterGroup=Parameters,Parameter=k54" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k54],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Dsh activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Dsh activation],ParameterGroup=Parameters,Parameter=k28" value="0.0030000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k28],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (X modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (X modifier)],ParameterGroup=Parameters,Parameter=Km9b" value="15" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km9b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[Raf1 phosphorylation (X modifier)],ParameterGroup=Parameters,Parameter=k9b" value="0.025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k9b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin phosphorylation (in compound)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin phosphorylation (in compound)],ParameterGroup=Parameters,Parameter=k35" value="3.4329999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k35],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[RKIP dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[RKIP dephosphorylation],ParameterGroup=Parameters,Parameter=V15b" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[V15b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[RKIP phosphorylation (pERK modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[RKIP phosphorylation (pERK modifier)],ParameterGroup=Parameters,Parameter=k15a" value="1.3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k15a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b dephosphorylation],ParameterGroup=Parameters,Parameter=k1" value="0.036900299999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pERK modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pERK modifier)],ParameterGroup=Parameters,Parameter=k2" value="0.050000000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pERK modifier)],ParameterGroup=Parameters,Parameter=Kcat27a" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pAkt modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=Kcat27b" value="0.045960000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat27b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS dephosphorylation (pP90Rsk modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS dephosphorylation (pP90Rsk modifier)],ParameterGroup=Parameters,Parameter=Km6b" value="896896" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Km6b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[SOS dephosphorylation (pP90Rsk modifier)],ParameterGroup=Parameters,Parameter=Kcat6b" value="1611.97" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[Kcat6b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[X degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[X degradation],ParameterGroup=Parameters,Parameter=k1" value="0.11640499999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin_GSK3b complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin_GSK3b complex formation],ParameterGroup=Parameters,Parameter=k1" value="4.2617000000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[W binding to FRZ]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[W binding to FRZ],ParameterGroup=Parameters,Parameter=k1" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin_GSK3b complex disassembly (Dsha modifier)]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[APC_Axin_GSK3b complex disassembly (Dsha modifier)],ParameterGroup=Parameters,Parameter=k30" value="20.6586" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[X synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[X synthesis],ParameterGroup=Parameters,Parameter=k1" value="0.0133428" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bound_FRZ internalisation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bound_FRZ internalisation],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[EGF degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[EGF degradation],ParameterGroup=Parameters,Parameter=k1" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pAPC_pAxin_GSK3b_bCatenin complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pAPC_pAxin_GSK3b_bCatenin complex formation],ParameterGroup=Parameters,Parameter=k342" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k342],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[pAPC_pAxin_GSK3b_bCatenin complex formation],ParameterGroup=Parameters,Parameter=k341" value="0.016670000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Values[k341],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin_TCF disassembly]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[bCatenin_TCF disassembly],ParameterGroup=Parameters,Parameter=k1" value="0.080909599999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PKCD synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PKCD synthesis],ParameterGroup=Parameters,Parameter=k1" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[PKCD synthesis],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 29590.993052411941 25419.95908102344 120442.8152 60221.407599999999 9.2138753627999996 409505.571679999 60221.407599999999 156575.65975999995 9.3614970573263996 60221.407599999999 301107.03799999959 36132.844559999998 421549.8531999999 150.03963322828341 12591.694115083999 180664.22279999999 120442.8152 60221.407599999999 60221.407599999999 6223.3644011846382 120442.8152 602.21407599999998 1.2044281520000009 595.82701127525922 0 0 0.90332111399999981 1.2044281520000009 0 0 5306.7706591195974 0 6180.5230619880012 0 0 0 0 0 180664.22279999999 515.15800917343995 0 0 62028.049827999996 150.03963322828341 0 0 3726.1273470250871 0 0 144531.37823999999 162597.80051999999 36132.844559999998 7226.5689119999861 60221.407599999999 0 9.9999999999999998e-13 0.12633 15.1212 185.75999999999999 2.8323999999999998 9.8536999999999999 50 0.8841 0.8841 0.12633 15.1212 0.02137 10.6737 0.077109999999999998 4 5.5 0.33000000000000002 48.667000000000002 694.73000000000002 32.344000000000001 1509.4000000000001 0.002 0.045960000000000001 0.01541 1611.97 32.643999999999998 1509.3599999999999 0.88409599999999999 1061.7 119355 4768400 518750 1007300 3496500 62645 62464.599999999999 1061.71 119355 763523 184912 272056 4 0.080000000000000002 100 100 6086100 35954.300000000003 1432400 15 896896 35954.300000000003 1432410 62464.599999999999 15 100 4 0.0015399999999999999 0.0070499999999999998 0.0717 1.1167e-05 120 1.3 0.0019300000000000001 0.0050000000000000001 0.0050000000000000001 2.1850299999999996e-05 0.121008 2.5 20 0.00038499999999999998 0.00014999999999999999 0.0030000000000000001 0.0030000000000000001 0.00125 0.00083299999999999997 0.0015150000000000001 0.01515 0.00445 0.0022169999999999998 0.016670000000000001 0.83330000000000004 0.0027829999999999999 1.37e-06 1.667e-08 0.016670000000000001 2 3.4329999999999998 3.4329999999999998 4.2830000000000003e-06 0.016865178848132267 0.5 0.01 0.20000000000000001 0.00025000000000000001 0.0069499999999999996 0.0034650000000000002 3.8500000000000001e-05 0.00028833 1.5 2.5 0.025000000000000001 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_17" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_18" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1001"/>
        <Parameter name="StepSize" type="float" value="9.9999999999999995e-08"/>
        <Parameter name="Duration" type="float" value="0.0001"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_20" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_21" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_25" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_27" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_28" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_29" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_21" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_17"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_30" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_11" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_21" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[APC_Axin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[APC_Axin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[APC_Axin_GSK3b]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[APC_Axin_GSK3b],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Akt]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Akt],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[bCatenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bCatenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[bRaf]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bRaf],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C3G]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[C3G],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dsha]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Dsha],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Dshi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Dshi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[EGF]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[EGF],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[ERK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[ERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[GSK3b]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[GSK3b],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[MEK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[MEK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P90Rsk]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[P90Rsk],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PI3K]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PI3K],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PIP2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PIP2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PIP3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PIP3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PKCD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PKCD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PP2A]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PP2A],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PTEN]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PTEN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[RKIP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[RKIP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Raf1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Raf1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[RafPPtase]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[RafPPtase],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rap1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Rap1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Rap1_Gap]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Rap1_Gap],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ras]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Ras],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Ras_Gap]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[Ras_Gap],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[SOS]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[SOS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TCF]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[TCF],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[bCatenin_TCF]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bCatenin_TCF],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[X],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[boundEGFR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[boundEGFR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[freeEGFR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[freeEGFR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pAPC_pAxin_GSK3b]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAPC_pAxin_GSK3b],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pAPC_pAxin_GSK3b_bCatenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAPC_pAxin_GSK3b_bCatenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pAPC_pAxin_GSK3b_pbCatenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAPC_pAxin_GSK3b_pbCatenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pAkt]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pAkt],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pbCatenin]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pbCatenin],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pbRaf]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pbRaf],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pC3G]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pC3G],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pERK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pERK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pGSK3b]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pGSK3b],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pMEK]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pMEK],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pP90Rsk]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pP90Rsk],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pPI3K]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pPI3K],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pRKIP]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRKIP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pRaf1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRaf1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pRap1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRap1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pRas]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pRas],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[pSOS]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[pSOS],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[null]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[null],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[W]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[W],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PKCD_degraded]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[PKCD_degraded],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X_degraded]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[X_degraded],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[FRZ]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[FRZ],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[bound_FRZ]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[bound_FRZ],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[W],Reference=InitialConcentration" objectType="float" objectValue="0" minValue="0" maxValue="1000" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_1" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Compartments[Cell],Vector=Metabolites[EGF],Reference=InitialConcentration" objectType="float" objectValue="600" minValue="0" maxValue="600" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_2" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b dephosphorylation],ParameterGroup=Parameters,Parameter=k1,Reference=Value" objectType="float" objectValue="0.0369003" minValue="0.00275174" maxValue="0.5" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_3" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pAkt modifier)],ParameterGroup=Parameters,Parameter=k2,Reference=Value" objectType="float" objectValue="0.01" minValue="0.001" maxValue="0.1" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
      <Slider key="Slider_4" associatedEntityKey="Task_18" objectCN="CN=Root,Model=Padala2017- ERK\, PI3K/Akt and Wnt signalling network (normal),Vector=Reactions[GSK3b phosphorylation (pERK modifier)],ParameterGroup=Parameters,Parameter=k2,Reference=Value" objectType="float" objectValue="0.05" minValue="0.05" maxValue="0.1" tickNumber="1000" tickFactor="100" scaling="logarithmic"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="BIOMD0000000648_V40_final.xml">
    <SBMLMap SBMLid="APCAxin" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="APCAxinGSK3B" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="APC_Axin_GSK3b_comples_disassembly__Dsha_modifier" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="APC_Axin_GSK3b_complex_formation" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="APC_and_Axin_dephosphorylation__in_compound" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="APC_and_Axin_phosphorylation__in_compound" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Akt" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Akt_dephosphorylation" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Akt_phosphorylation__PIP3_modifier" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="BCatenin" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="BRaf" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="C3G" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="C3G_dephosphorylation" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="C3G_phosphorylation__boundEGFR_modifier" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Dsh_activation" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="Dsh_deactivation" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Dsha" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Dshi" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="EGF" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="EGFR_binding" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="EGF_degradation" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="ERK" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="ERK_dephosphorylation__PP2A_modifer" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="ERK_phosphorylation__pMEK_modifier" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="FRZ" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="Function_for_APC_Axin_GSK3b_complex_disassembly__Dsha_modifier__1" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_APC_and_Axin_phosphorylation__in_compound__1" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="Function_for_Akt_dephosphorylation_1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_Akt_phosphorylation__PIP3_modifier__1" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_C3G_phosphorylation__boundEGFR_modifier__1" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_Dsh_activation_1" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_Dsh_deactivation_1" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_EGFR_binding_1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_ERK_dephosphorylation__PP2A_modifer__1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_ERK_phosphorylation__pMEK_modifier__1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_GSK3b_phosphorylation__pAkt_modifier__1" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_GSK3b_phosphorylation__pERK_modifier__1" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_MEK_dephosphorylation__PP2A_modifer__1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_MEK_phosphorylation__pRaf1__pRKIP_and_RKIP_modifiers__1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_MEK_phosphorylation__pbRaf_modifier__1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_P90Rsk_dephosphorylation" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="Function_for_P90Rsk_phosphorylation__pERK_modifier__1" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_PI3K_dephosphorylation" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_PI3K_phosphorylation__boundEGFR_modifier__1" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_PI3K_phosphorylation__pRas_modifier__1" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_PIP2_phosphorylated_to_PIP3_1" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_PIP3_dephosphorylated_to_PIP2_1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_PKCD_degradation_1" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_PKCD_synthesis_1" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_RKIP_dephosphorylation_1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_RKIP_phosphorylation__pERK_modifier" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="Function_for_Raf1_dephosphorylation__RafPPtase_modifier__1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_Raf1_dephosphorylation__pAkt_modifier__1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_Raf1_phosphorylation__X_modifier__1" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="Function_for_Raf1_phosphorylation__pRas_modifier__1" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="Function_for_Rap1_dephosphorylation__Rap1_GAP_modifer__1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_Rap1_phosphorylation__pC3G_modifier__1" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_Ras_dephosphorylation__Ras_Gap_modifier__1" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="Function_for_Ras_phosphorylation__pSOS_modifier__1" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="Function_for_SOS_dephosphorylation__pP90Rsk_modifier__1" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Function_for_SOS_phosphorylation__PKCD__bEGFR_and_pERK_modifier" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="Function_for_X_synthesis" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="Function_for_bCatenin_TCF_complex_binding_1" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Function_for_bCatenin_phosphorylation__in_compound" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="Function_for_bRaf_dephosphorylation_1" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="Function_for_bRaf_dephosphorylation_2" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="Function_for_bRaf_phosphorylation__pRap1_modifier__1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_bRaf_phosphorylation__pRas_modifier__1" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_pAPC_pAxin_GSK3b_bCatenin_complex_formation" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="GSK3B" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="GSK3b_dephosphorylation" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="GSK3b_phosphorylation__pAkt_modifier" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="GSK3b_phosphorylation__pERK_modifier" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="Kcat10a" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Kcat10b" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Kcat11a" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Kcat12" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Kcat13" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="Kcat14" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Kcat16a" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Kcat16b" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Kcat17a" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Kcat17b" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="Kcat18b" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Kcat19a" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Kcat19b" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Kcat20" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Kcat21" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="Kcat22a" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="Kcat22b" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Kcat23a" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Kcat24" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="Kcat25" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="Kcat27a" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="Kcat27b" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="Kcat27d" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="Kcat6b" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Kcat7" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="Kcat8b" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="Kcat9a" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="Km10a" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="Km10b" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Km11a" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Km12" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Km13" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="Km14" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="Km16a" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Km16b" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Km17a" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="Km17b" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="Km18b" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="Km19a" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="Km19b" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="Km20" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="Km21" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Km22a" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Km22b" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="Km23a" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="Km24" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="Km25" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="Km39" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Km6b" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="Km7" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="Km8b" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="Km9a" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="Km9b" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="MEK" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="MEK_dephosphorylation__PP2A_modifer" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="MEK_phosphorylation__pRaf1__pRKIP_and_RKIP_modifiers" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="MEK_phosphorylation__pbRaf_modifier" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="P90Rsk" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="P90Rsk_dephosphorylation" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="P90Rsk_phosphorylation__pERK_modifier" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="PI3K" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="PI3K_dephosphorylation" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="PI3K_phosphorylation__boundEGFR_modifier" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="PI3K_phosphorylation__pRas_modifier" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="PIP2" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="PIP2_phosphorylated_to_PIP3" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="PIP3" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="PIP3_dephosphorylated_to_PIP2" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="PKCD" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="PKCD_degradation" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="PKCD_degraded" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="PKCD_synthesis" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="PP2A" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="PTEN" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="RKIP" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="RKIP_dephosphorylation" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="RKIP_phosphorylation__pERK_modifier" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="Raf1" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Raf1_dephosphorylation__RafPPtase_modifier" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="Raf1_dephosphorylation__pAkt_modifier" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Raf1_phosphorylation__X_modifier" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="Raf1_phosphorylation__pRas_modifier" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="RafPPtase" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Rap1" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="Rap1Gap" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Rap1_dephosphorylation__Rap1_GAP_modifer" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="Rap1_phosphorylation__pC3G_modifier" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Ras" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="RasGap" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Ras_dephosphorylation__Ras_Gap_modifier" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Ras_phosphorylation__pSOS_modifier" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="SOS" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="SOS_dephosphorylation__pP90Rsk_modifier" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="SOS_phosphorylation__PKCD__bEGFR__pERK_modifier" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="TCF" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="TCFBCatenin" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="V1" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="V15b" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="V26a" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="V37b" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="V8a" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="W" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="W_binding_to_FRZ" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="X" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="X_degradation" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="X_degraded" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="X_synthesis" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="bCatenin_TCF_complex_bilding" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="bCatenin_TCF_disassembly" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="bCatenin_phosphorylation__in_compound" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="bEGFR" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="bRaf_dephosphorylation__RafPPtase_modifier" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="bRaf_dephosphorylation__pAkt_modifier" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="bRaf_phosphorylation__pRap1_modifier" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="bRaf_phosphorylation__pRas_modifier" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="bound_FRZ" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="bound_FRZ_internalisation" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="fEGFR" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="k11b1" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="k11b2" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="k15a" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="k15c" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="k18a" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="k19c" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="k21" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="k22" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="k23b" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="k26a" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="k26b" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="k27c" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="k28" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="k29" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="k30" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="k311" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="k312" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="k32a" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="k32b" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="k33a1" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="k33a2" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="k33b" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="k33c1" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="k33c2" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="k341" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="k342" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="k35" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="k36" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="k37c" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="k381" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="k382" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="k39" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="k40" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="k41" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="k51" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="k52" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="k53" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="k54" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="k6a" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="k9b" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="null" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="pAPC_pAxin_GSK3b_bCatenin_complex_formation" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="pAPC_pAxin_GSK3b_pbCatenin_complex_disassembly" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="pAPCpAxinGSK3B" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="pAPCpAxinGSK3BBCatenin" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="pAPCpAxinGSK3BpBCatenin" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="pAkt" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="pBCatenin" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="pBRaf" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="pC3G" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="pERK" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="pGSK3B" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="pMEK" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="pP90Rsk" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="pPI3K" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="pRKIP" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="pRaf1" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="pRap1" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="pRas" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="pSOS" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="pbCatenin_dephosphorylation" COPASIkey="Reaction_13"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
