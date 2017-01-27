<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.16 (Build 104) (http://www.copasi.org) at 2017-01-27 10:52:17 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="16" versionDevel="104" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:58:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:32:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:58:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;-k2*PRODUCT&lt;product_j&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_62" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_39" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_67" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_71" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="rDeP21" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:55:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kDeP21 + kDeP21Cy*Skp2*Cy + kDeP21aRc*Cdt2*aRc)*p21
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="kDeP21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="kDeP21Cy" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="Skp2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="Cy" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="kDeP21aRc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="Cdt2" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_272" name="aRc" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_274" name="p21" order="7" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="rDeCy" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:04:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kDeCy + kDeCyCy*Skp2*Cy)*substrate
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="kDeCy" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="kDeCyCy" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="Skp2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_246" name="Cy" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="substrate" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="rPhRc" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:20:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kPhRc*Cy^n / (jCy^n+Cy^n))*Rc
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="kPhRc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="Cy" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="n" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="jCy" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="Rc" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="rDsRc" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:48:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        if(Dna lt 1.0, 0.0, if(Dna gt 1.0, 1.0*Rc, 0.5*Rc))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_282" name="Dna" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_278" name="Rc" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="rDeP53" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:59:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kDeP53 / (jP53 + Dam))*p53
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="kDeP53" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="jP53" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="Dam" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_286" name="p53" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="rReDam" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T14:01:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (kReDam + kReDamP53*P53 / (jDam + Dam))*Dam
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="kReDam" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="kReDamP53" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="P53" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_290" name="jDam" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="Dam" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_3" name="Barr 2017 - Dynamics of p21 in hTert-RPE1 cells" simulationType="time" timeUnit="min" volumeUnit="dimensionless" areaUnit="m²" lengthUnit="m" quantityUnit="dimensionless" type="deterministic" avogadroConstant="6.02214179e+023">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:37:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>stefan.heldt@bioch.ox.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Heldt</vCard:Family>
            <vCard:Given>Frank Stefan</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>University of Oxford</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      This model is described in the article:
DNA damage during S-phase mediates the proliferation quiescence decision in the subsequent G1 via p21 expression
Alexis R. Barr, Samuel Cooper, Frank S. Heldt, Francesca Butera, Henriette Stoy, Jörg Mansfeld, Bela Novak, Chris Bakal

Abstract:
Following DNA damage caused by exogenous sources, such as ionising radiation, the tumour suppressor p53 mediates cell cycle arrest via expression of the CDK inhibitor, p21. However, the role of p21 in maintaining genomic stability in the absence of exogenous DNA damaging agents is unclear. Here, using live single cell measurements of p21 protein in proliferating cultures, we show that naturally-occurring DNA damage incurred over S-phase causes p53-dependent accumulation of p21 during mother G2- and daughter G1-phases. High p21 levels mediate G1 arrest via CDK inhibition, yet lower levels have no impact on G1 progression, and the ubiquitin ligases CRL4^Cdt2 and SCF^Skp2 couple to degrade p21 prior to the G1/S transition. Mathematical modelling reveals that a bistable switch, created by CRL4^Cdt2, promotes irreversible S-phase entry by keeping p21 levels low, preventing premature S-phase exit upon DNA damage. Thus, we characterise how p21 regulates the proliferation-quiescence decision to maintain genomic stability.
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:41:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="MrnaP21" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:42:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) mRNAs encoding for p21
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="MrnaCy" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:44:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) mRNAs encoding for cyclins
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="MrnaP53" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:44:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) mRNAs encoding for p53
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="P21" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:44:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) free p21
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Cy" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:45:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) active CDK2:Cyclin complexes
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="CyP21" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:45:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) CDK2:Cyclin:p21 complexes
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="aPcna" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:46:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) free PCNA in the nucleus
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Rc" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:47:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) pre-replication complexes
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="pRc" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:47:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) primed/phosphorylated replication complexes
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="aRc" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:50:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) active replication complexes
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="iRc" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:50:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) inactive replication complexes
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Dna" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:50:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) DNA
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Dam" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:51:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) DNA damage
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="P53" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:53:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) free p53
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Skp2" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:59:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) relative level of SCF^Skp2
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Cdt2" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:00:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) relative level of CRL4^Cdt2
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="iPcna" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-09T17:47:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) PCNA:p21 complexes in the nucleus
        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="tP21" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T15:00:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) total level of p21
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[P21],Reference=Concentration&gt;+&lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[CyP21],Reference=Concentration&gt;+&lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[iPcna],Reference=Concentration&gt;+&lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[iRc],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="tCy" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T15:02:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) total level of CDK2:Cyclin
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[Cy],Reference=Concentration&gt;+&lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[CyP21],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="tPcna" simulationType="assignment" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T15:03:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) total level of PCNA
        </Comment>
        <Expression>
          &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[aPcna],Reference=Concentration&gt;+&lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[iPcna],Reference=Concentration&gt;+&lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[aRc],Reference=Concentration&gt;+&lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[iRc],Reference=Concentration&gt;
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="kSyMrna" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:34:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU/min) constitutive mRNA synthesis
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="kSyMrnaP53" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:35:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) p53-dependent synthesis of p21 mRNAs
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="kDeMrna" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:35:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) mRNA degradation
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kSyP21" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:35:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) constitutive p21 synthesis
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="kDeP21" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:35:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) constitutive p21 degradation
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="kDeP21Cy" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:36:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/(AU*min)) Cyclin:CDK2-mediated p21 degradation (Skp2-dependent)
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="kDeP21aRc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:36:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/(AU*min)) aRC-mediated p21 degradation (Cdt2-dependent)
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="kSyCy" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:36:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) cyclin synthesis
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="kAsCyP21" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:36:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/(AU*min)) association of Cyclin:CDK2 and p21
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kDsCyP21" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:37:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) dissociation of Cyclin:CDK2:p21 complexes
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kDeCy" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:37:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) constitutive cyclin degradation
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="kDeCyCy" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:37:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/(AU*min)) Cyclin:CDK2-mediated cyclin degradation (Skp2-dependent)
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="kImPc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:37:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU/min) PCNA import into the nucleus
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="kExPc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:38:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min)  PCNA export from the nucleus
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kPhRc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:38:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) Cyclin:CDK2-mediated phosphorylation/priming of RCs
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="kDpRc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:38:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) dephosphorylation of pRCs
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="jCy" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:38:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) CDK2 threshold for the phosphorylation/priming of RCs
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="n" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:42:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (-) hill coefficient for the phosphorylation/priming of RCs
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kAsRcPc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:42:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/(AU*min)) association of phosphorylated/primed RCs and PCNA
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="kDsRcPc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:42:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) dissociation of pRC:PCNA complexes
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kAsPcP21" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:42:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/(AU*min)) association of PCNA and p21
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="kDsPcP21" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:42:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) dissociation of PCNA:p21 complexes
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="kSyDna" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:43:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) DNA synthesis by active RCs
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="kSyP53" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:43:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) constitutive p53 synthesis
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="kDeP53" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:43:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU/min) DNA damage-dependent degradation of p53
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="jP53" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:44:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) inhibition constant of p53 degradation by DNA damage
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="kGeDam" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:44:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU/min) replication-independent DNA damage
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="kGeDamArc" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:44:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) replication-dependent DNA damage
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="kReDam" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:44:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) p53-independent DNA damage repair
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="kReDamP53" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:44:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (1/min) p53-dependent DNA damage repair
        </Comment>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="jDam" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T10:45:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          (AU) DNA damage threshold for repair
        </Comment>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Synthesis of p21 mRNAs" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:12:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4396" name="v" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="Synthesis of p21 mRNAs by p53" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:42:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4395" name="k1" value="0.08"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="Synthesis of cyclin mRNAs" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:43:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4394" name="v" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="Synthesis of p53 mRNAs" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:43:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4393" name="v" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="Degradation of p21 mRNAs" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:46:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4392" name="k1" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="Degradation of cyclin mRNAs" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:47:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4391" name="k1" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="Degradation of p53 mRNAs" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:48:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4390" name="k1" value="0.02"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="Synthesis of p21" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:50:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4389" name="k1" value="0.0018"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="Degradation of p21" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T11:50:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4388" name="kDeP21" value="0.0025"/>
          <Constant key="Parameter_4387" name="kDeP21Cy" value="0.007"/>
          <Constant key="Parameter_4386" name="kDeP21aRc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="Synthesis of cyclins" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:03:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4385" name="k1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="Degradation of cyclins" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:05:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4384" name="kDeCy" value="0.002"/>
          <Constant key="Parameter_4383" name="kDeCyCy" value="0.0002"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="Association and dissociation of CDK2:Cyclin and p21" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:07:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4382" name="k1" value="1"/>
          <Constant key="Parameter_4381" name="k2" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_9"/>
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="Degradation of cyclin in CDK2:Cyclin:p21 complexes" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:24:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4380" name="kDeCy" value="0.002"/>
          <Constant key="Parameter_4379" name="kDeCyCy" value="0.0002"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="Degradation of p21 in CDK2:Cyclin:p21 complexes" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:25:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4378" name="kDeP21" value="0.0025"/>
          <Constant key="Parameter_4377" name="kDeP21Cy" value="0.007"/>
          <Constant key="Parameter_4376" name="kDeP21aRc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="Import of active PCNA" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:27:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4375" name="v" value="0.003"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="Export of active PCNA" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:27:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4374" name="k1" value="0.006"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="Export of inactive PCNA" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:28:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4373" name="k1" value="0.006"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="Association and dissociation of PCNA and p21" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T12:30:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4372" name="k1" value="100"/>
          <Constant key="Parameter_4371" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_13"/>
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Degradation of p21 in PCNA:p21 complexes" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:15:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4370" name="kDeP21" value="0.0025"/>
          <Constant key="Parameter_4369" name="kDeP21Cy" value="0.007"/>
          <Constant key="Parameter_4368" name="kDeP21aRc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Phosphorylation/priming of replication complexes" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:16:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4367" name="kPhRc" value="0.1"/>
          <Constant key="Parameter_4366" name="n" value="6"/>
          <Constant key="Parameter_4365" name="jCy" value="1.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Dephosphorylation of replication complexes" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:22:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4364" name="k1" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Association and dissociation of active PCNA and replication complexes" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:26:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4363" name="k1" value="0.01"/>
          <Constant key="Parameter_4362" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_13"/>
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Association and dissociation of inactive PCNA and replication complexes" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:31:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4361" name="k1" value="0.01"/>
          <Constant key="Parameter_4360" name="k2" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_33"/>
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Association and dissociation of p21 and replication complexes" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:34:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4359" name="k1" value="100"/>
          <Constant key="Parameter_4358" name="k2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_14">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_62">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_39">
              <SourceParameter reference="Metabolite_19"/>
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_67">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_71">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Degradation of p21 in inactive replication complexes" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:35:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4357" name="kDeP21" value="0.0025"/>
          <Constant key="Parameter_4356" name="kDeP21Cy" value="0.007"/>
          <Constant key="Parameter_4355" name="kDeP21aRc" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Synthesis of DNA" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:37:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4354" name="k1" value="0.007"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Dissassembly of RC" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:50:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Dissassembly of pRC" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:51:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Dissassembly of aRC" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:52:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Dissassembly of iRC" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:52:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="Synthesis of p53" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T13:56:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4353" name="k1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Degradation of p53" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T14:00:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4352" name="kDeP53" value="0.05"/>
          <Constant key="Parameter_4351" name="jP53" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="Induction of DNA damage" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T14:03:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4350" name="v" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_6">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Induction of DNA damage by replication" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T14:04:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4349" name="k1" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Repair of DNA damage" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-06-13T14:05:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4348" name="kReDam" value="0.001"/>
          <Constant key="Parameter_4347" name="kReDamP53" value="0.005"/>
          <Constant key="Parameter_4346" name="jDam" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[MrnaP21]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[MrnaCy]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[MrnaP53]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[P21]" value="0.72" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[Cy]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[CyP21]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[aPcna]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[Rc]" value="1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[pRc]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[aRc]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[iRc]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[Dna]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[Dam]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[P53]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[Skp2]" value="1" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[Cdt2]" value="1" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[iPcna]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[tP21]" value="0.72" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[tCy]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[tPcna]" value="0.5" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyMrna]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyMrnaP53]" value="0.08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeMrna]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyP21]" value="0.0018" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21]" value="0.0025" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21Cy]" value="0.007000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21aRc]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyCy]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kAsCyP21]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDsCyP21]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeCy]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeCyCy]" value="0.0002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kImPc]" value="0.003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kExPc]" value="0.006" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kPhRc]" value="0.1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDpRc]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[jCy]" value="1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[n]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kAsRcPc]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDsRcPc]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kAsPcP21]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDsPcP21]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyDna]" value="0.007000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyP53]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP53]" value="0.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[jP53]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kGeDam]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kGeDamArc]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kReDam]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kReDamP53]" value="0.005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[jDam]" value="0.5" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of p21 mRNAs]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of p21 mRNAs],ParameterGroup=Parameters,Parameter=v" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyMrna],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of p21 mRNAs by p53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of p21 mRNAs by p53],ParameterGroup=Parameters,Parameter=k1" value="0.08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyMrnaP53],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of cyclin mRNAs]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of cyclin mRNAs],ParameterGroup=Parameters,Parameter=v" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyMrna],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of p53 mRNAs]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of p53 mRNAs],ParameterGroup=Parameters,Parameter=v" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyMrna],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 mRNAs]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 mRNAs],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeMrna],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of cyclin mRNAs]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of cyclin mRNAs],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeMrna],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p53 mRNAs]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p53 mRNAs],ParameterGroup=Parameters,Parameter=k1" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeMrna],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of p21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of p21],ParameterGroup=Parameters,Parameter=k1" value="0.0018" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21],ParameterGroup=Parameters,Parameter=kDeP21" value="0.0025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21],ParameterGroup=Parameters,Parameter=kDeP21Cy" value="0.007000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21Cy],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21],ParameterGroup=Parameters,Parameter=kDeP21aRc" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21aRc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of cyclins]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of cyclins],ParameterGroup=Parameters,Parameter=k1" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyCy],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of cyclins]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of cyclins],ParameterGroup=Parameters,Parameter=kDeCy" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeCy],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of cyclins],ParameterGroup=Parameters,Parameter=kDeCyCy" value="0.0002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeCyCy],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of CDK2:Cyclin and p21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of CDK2:Cyclin and p21],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kAsCyP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of CDK2:Cyclin and p21],ParameterGroup=Parameters,Parameter=k2" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDsCyP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of cyclin in CDK2:Cyclin:p21 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of cyclin in CDK2:Cyclin:p21 complexes],ParameterGroup=Parameters,Parameter=kDeCy" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeCy],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of cyclin in CDK2:Cyclin:p21 complexes],ParameterGroup=Parameters,Parameter=kDeCyCy" value="0.0002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeCyCy],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in CDK2:Cyclin:p21 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in CDK2:Cyclin:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21" value="0.0025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in CDK2:Cyclin:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21Cy" value="0.007000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21Cy],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in CDK2:Cyclin:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21aRc" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21aRc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Import of active PCNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Import of active PCNA],ParameterGroup=Parameters,Parameter=v" value="0.003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kImPc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Export of active PCNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Export of active PCNA],ParameterGroup=Parameters,Parameter=k1" value="0.006" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kExPc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Export of inactive PCNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Export of inactive PCNA],ParameterGroup=Parameters,Parameter=k1" value="0.006" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kExPc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of PCNA and p21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of PCNA and p21],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kAsPcP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of PCNA and p21],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDsPcP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in PCNA:p21 complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in PCNA:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21" value="0.0025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in PCNA:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21Cy" value="0.007000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21Cy],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in PCNA:p21 complexes],ParameterGroup=Parameters,Parameter=kDeP21aRc" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21aRc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Phosphorylation/priming of replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Phosphorylation/priming of replication complexes],ParameterGroup=Parameters,Parameter=kPhRc" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kPhRc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Phosphorylation/priming of replication complexes],ParameterGroup=Parameters,Parameter=n" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[n],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Phosphorylation/priming of replication complexes],ParameterGroup=Parameters,Parameter=jCy" value="1.8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[jCy],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Dephosphorylation of replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Dephosphorylation of replication complexes],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDpRc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of active PCNA and replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of active PCNA and replication complexes],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kAsRcPc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of active PCNA and replication complexes],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDsRcPc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of inactive PCNA and replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of inactive PCNA and replication complexes],ParameterGroup=Parameters,Parameter=k1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kAsRcPc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of inactive PCNA and replication complexes],ParameterGroup=Parameters,Parameter=k2" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDsRcPc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of p21 and replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of p21 and replication complexes],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kAsPcP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Association and dissociation of p21 and replication complexes],ParameterGroup=Parameters,Parameter=k2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDsPcP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in inactive replication complexes]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in inactive replication complexes],ParameterGroup=Parameters,Parameter=kDeP21" value="0.0025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in inactive replication complexes],ParameterGroup=Parameters,Parameter=kDeP21Cy" value="0.007000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21Cy],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p21 in inactive replication complexes],ParameterGroup=Parameters,Parameter=kDeP21aRc" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP21aRc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of DNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of DNA],ParameterGroup=Parameters,Parameter=k1" value="0.007000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyDna],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Dissassembly of RC]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Dissassembly of pRC]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Dissassembly of aRC]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Dissassembly of iRC]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of p53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Synthesis of p53],ParameterGroup=Parameters,Parameter=k1" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kSyP53],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p53],ParameterGroup=Parameters,Parameter=kDeP53" value="0.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kDeP53],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Degradation of p53],ParameterGroup=Parameters,Parameter=jP53" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[jP53],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Induction of DNA damage]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Induction of DNA damage],ParameterGroup=Parameters,Parameter=v" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kGeDam],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Induction of DNA damage by replication]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Induction of DNA damage by replication],ParameterGroup=Parameters,Parameter=k1" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kGeDamArc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Repair of DNA damage]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Repair of DNA damage],ParameterGroup=Parameters,Parameter=kReDam" value="0.001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kReDam],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Repair of DNA damage],ParameterGroup=Parameters,Parameter=kReDamP53" value="0.005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[kReDamP53],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Reactions[Repair of DNA damage],ParameterGroup=Parameters,Parameter=jDam" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Values[jDam],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_3"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0.72 0.5 0 0 0 1 0 0 1 1 0 1 0 0 0 0.72 0 0.5 1 1 1 0.02 0.08 0.02 0.0018 0.0025 0.007000000000000001 1 0.005 1 0.05 0.002 0.0002 0.003 0.006 0.1 0.01 1.8 6 0.01 0.001 100 0.01 0.007000000000000001 0.05 0.05 0.01 0.001 0.005 0.001 0.005 0.5 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1e-009"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="800"/>
        <Parameter name="StepSize" type="float" value="1.5"/>
        <Parameter name="Duration" type="float" value="1200"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-009"/>
        <Parameter name="Use Reeder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-006"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
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
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-012"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-006"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-006"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-006"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-012"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_10" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_13" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_15" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_16" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_17" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Figure S7A (top panel)" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[aRc]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[aRc],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[tCy]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#00BEF0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[tCy],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[tP21]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[tP21],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[tPcna]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#F000FF"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[tPcna],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Figure S7A (lower panel)" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Dam]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[Dam],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[P53]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="#F0C800"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Barr 2017 - Dynamics of p21 in hTert-RPE1 cells,Vector=Compartments[Cell],Vector=Metabolites[P53],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Barr2016_DynamicsOfP21_Deterministic.xml">
    <SBMLMap SBMLid="Association_and_dissociation_of_CDK2_Cyclin_and_p21" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="Association_and_dissociation_of_PCNA_and_p21" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="Association_and_dissociation_of_active_PCNA_and_replication_complexes" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Association_and_dissociation_of_inactive_PCNA_and_replication_complexes" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Association_and_dissociation_of_p21_and_replication_complexes" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="Cdt2" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="Cell" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Cy" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="CyP21" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="Dam" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Degradation_of_cyclin_in_CDK2_Cyclin_p21_complexes" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="Degradation_of_cyclin_mRNAs" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="Degradation_of_cyclins" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="Degradation_of_p21" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Degradation_of_p21_in_CDK2_Cyclin_p21_complexes" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="Degradation_of_p21_in_PCNA_p21_complexes" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="Degradation_of_p21_in_inactive_replication_complexes" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Degradation_of_p21_mRNAs" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="Degradation_of_p53" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Degradation_of_p53_mRNAs" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="Dephosphorylation_of_replication_complexes" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Dissassembly_of_RC" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Dissassembly_of_aRC" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Dissassembly_of_iRC" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="Dissassembly_of_pRC" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Dna" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Export_of_active_PCNA" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="Export_of_inactive_PCNA" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="Import_of_active_PCNA" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="Induction_of_DNA_damage" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="Induction_of_DNA_damage_by_replication" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="MrnaCy" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="MrnaP21" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="MrnaP53" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="P21" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="P53" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="Phosphorylation_priming_of_replication_complexes" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Rc" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="Repair_of_DNA_damage" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="Skp2" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Synthesis_of_DNA" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Synthesis_of_cyclin_mRNAs" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="Synthesis_of_cyclins" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="Synthesis_of_p21" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="Synthesis_of_p21_mRNAs" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="Synthesis_of_p21_mRNAs_by_p53" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="Synthesis_of_p53" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="Synthesis_of_p53_mRNAs" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="aPcna" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="aRc" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="iPcna" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="iRc" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="jCy" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="jDam" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="jP53" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="kAsCyP21" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="kAsPcP21" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="kAsRcPc" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="kDeCy" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="kDeCyCy" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="kDeMrna" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="kDeP21" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="kDeP21Cy" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="kDeP21aRc" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="kDeP53" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="kDpRc" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="kDsCyP21" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="kDsPcP21" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="kDsRcPc" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="kExPc" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="kGeDam" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="kGeDamArc" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="kImPc" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="kPhRc" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="kReDam" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="kReDamP53" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="kSyCy" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="kSyDna" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="kSyMrna" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="kSyMrnaP53" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="kSyP21" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="kSyP53" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="pRc" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="rDeCy" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="rDeP21" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="rDeP53" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="rDsRc" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="rPhRc" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="rReDam" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="tCy" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="tP21" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="tPcna" COPASIkey="Metabolite_39"/>
  </SBMLReference>
</COPASI>
