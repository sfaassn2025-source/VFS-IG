RuleSet: VFSResourceCapability(resource, profile)
* rest.resource[+].type = #{resource}
* rest.resource[=].profile = "{profile}"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #create
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #update
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].referencePolicy = #resolves

RuleSet: VFSNativeSearchParam(name, definition, type)
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{definition}"
* rest.resource[=].searchParam[=].type = #{type}
* rest.resource[=].searchParam[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #MAY

RuleSet: VFSResourceDefinitions
* insert VFSResourceCapability(Bundle, https://sfaa.gov.tw/twvfs/StructureDefinition/Bundle-vfs-settle-exchange)
* rest.resource[=].supportedProfile[0] = "https://sfaa.gov.tw/twvfs/StructureDefinition/Bundle-vfs-from-cra-exchange"
* rest.resource[=].supportedProfile[+] = "https://sfaa.gov.tw/twvfs/StructureDefinition/Bundle-vfs-to-cra-exchange"
* insert VFSNativeSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, token)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Bundle-identifier, token)

* insert VFSResourceCapability(EpisodeOfCare, https://sfaa.gov.tw/twvfs/StructureDefinition/EpisodeOfCare-vfs-case)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, token)
* insert VFSNativeSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, reference)
* insert VFSNativeSearchParam(status, http://hl7.org/fhir/SearchParameter/EpisodeOfCare-status, token)

* insert VFSResourceCapability(Organization, https://sfaa.gov.tw/twvfs/StructureDefinition/Organization-vfs-case-exchange)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Organization-identifier, token)
* insert VFSNativeSearchParam(name, http://hl7.org/fhir/SearchParameter/Organization-name, string)

* insert VFSResourceCapability(Patient, https://sfaa.gov.tw/twvfs/StructureDefinition/Patient-vfs-case-exchange)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier, token)
* insert VFSNativeSearchParam(name, http://hl7.org/fhir/SearchParameter/Patient-name, string)
* insert VFSNativeSearchParam(birthdate, http://hl7.org/fhir/SearchParameter/individual-birthdate, date)

* insert VFSResourceCapability(Practitioner, https://sfaa.gov.tw/twvfs/StructureDefinition/Practitioner-vfs-case-exchange)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Practitioner-identifier, token)
* insert VFSNativeSearchParam(name, http://hl7.org/fhir/SearchParameter/Practitioner-name, string)

* insert VFSResourceCapability(Provenance, https://sfaa.gov.tw/twvfs/StructureDefinition/Provenance-vfs-search-revocation)
* insert VFSNativeSearchParam(agent, http://hl7.org/fhir/SearchParameter/Provenance-agent, reference)
* insert VFSNativeSearchParam(target, http://hl7.org/fhir/SearchParameter/Provenance-target, reference)

* insert VFSResourceCapability(RelatedPerson, https://sfaa.gov.tw/twvfs/StructureDefinition/RelatedPerson-vfs-case-exchange)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/RelatedPerson-identifier, token)
* insert VFSNativeSearchParam(patient, http://hl7.org/fhir/SearchParameter/RelatedPerson-patient, reference)
* insert VFSNativeSearchParam(relationship, http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship, token)

* insert VFSResourceCapability(ServiceRequest, https://sfaa.gov.tw/twvfs/StructureDefinition/ServiceRequest-vfs-case-report)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, token)
* insert VFSNativeSearchParam(subject, http://hl7.org/fhir/SearchParameter/ServiceRequest-subject, reference)
* insert VFSNativeSearchParam(status, http://hl7.org/fhir/SearchParameter/ServiceRequest-status, token)

RuleSet: VFSCommonRest
* rest.security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "安全性要求請參閱本 IG 的安全性頁面。"
* rest.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #transaction
* rest.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.interaction[=].extension.valueCode = #SHOULD
* rest.interaction[=].code = #batch

RuleSet: VFSNarrative(mode, role)
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h2>衛生福利部社會及家庭署脆弱家庭管理實作指引-{role}</h2>
  <ul>
    <li>實作指引版本：0.0.1</li>
    <li>FHIR版本：4.0.1</li>
    <li>支援格式：<code>json</code>、<code>xml</code></li>
    <li>發布單位：衛生福利部社會及家庭署</li>
  </ul>
  <h3>建議應該（SHOULD）實作的IGs</h3>
  <ul>
    <li><a href="index.html">衛生福利部社會及家庭署脆弱家庭管理實作指引</a></li>
    <li><a href="https://build.fhir.org/ig/sfaassn2025-source/base/">臺灣社政領域基礎實作指引（TWSS Base IG）</a></li>
  </ul>
  <h2>{mode} FHIR RESTful功能要求</h2>
  <div class="panel panel-default"><div class="panel-heading"><h3 class="panel-title">能力聲明摘要</h3></div><div class="panel-body"><p>{role}建議應該（SHOULD）支援本能力聲明所列之 Resource 與 Profile，並以 FHIR R4 RESTful API 交換資料。Resource 的 create、read、vread 與 update 互動建議應該（SHOULD）支援；查詢功能可能可以（MAY）支援。</p></div></div>
  <h3>Resources或Profiles的RESTful功能</h3>
  <h4>Summary</h4>
  <div class="table-responsive"><table class="table table-condensed table-hover"><thead><tr><th>Resource名稱</th><th>Profile</th><th>Create</th><th>Read</th><th>VRead</th><th>Delete</th><th>Update</th><th>可能可以支援的查詢參數</th></tr></thead><tbody>
    <tr><td>Bundle</td><td><a href="StructureDefinition-Bundle-vfs-settle-exchange.html">安置案件交換-Bundle VFS</a><br/><a href="StructureDefinition-Bundle-vfs-from-cra-exchange.html">育兒津貼回饋脆家-Bundle VFS</a><br/><a href="StructureDefinition-Bundle-vfs-to-cra-exchange.html">脆家傳送育兒津貼-Bundle VFS</a></td><td>y</td><td>y</td><td>y</td><td></td><td>y</td><td><a href="https://hl7.org/fhir/R4/bundle.html#search">查看 Bundle 查詢參數</a></td></tr>
    <tr><td>EpisodeOfCare</td><td><a href="StructureDefinition-EpisodeOfCare-vfs-case.html">脆家案件-EpisodeOfCare VFS</a></td><td>y</td><td>y</td><td>y</td><td></td><td>y</td><td><a href="https://hl7.org/fhir/R4/episodeofcare.html#search">查看 EpisodeOfCare 查詢參數</a></td></tr>
    <tr><td>Organization</td><td><a href="StructureDefinition-Organization-vfs-case-exchange.html">脆家主責單位-Organization VFS</a></td><td>y</td><td>y</td><td>y</td><td></td><td>y</td><td><a href="https://hl7.org/fhir/R4/organization.html#search">查看 Organization 查詢參數</a></td></tr>
    <tr><td>Patient</td><td><a href="StructureDefinition-Patient-vfs-case-exchange.html">脆家個案-Patient VFS</a></td><td>y</td><td>y</td><td>y</td><td></td><td>y</td><td><a href="https://hl7.org/fhir/R4/patient.html#search">查看 Patient 查詢參數</a></td></tr>
    <tr><td>Practitioner</td><td><a href="StructureDefinition-Practitioner-vfs-case-exchange.html">脆家服務提供者-Practitioner VFS</a></td><td>y</td><td>y</td><td>y</td><td></td><td>y</td><td><a href="https://hl7.org/fhir/R4/practitioner.html#search">查看 Practitioner 查詢參數</a></td></tr>
    <tr><td>Provenance</td><td><a href="StructureDefinition-Provenance-vfs-search-revocation.html">脆家撤尋紀錄-Provenance VFS</a></td><td>y</td><td>y</td><td>y</td><td></td><td>y</td><td><a href="https://hl7.org/fhir/R4/provenance.html#search">查看 Provenance 查詢參數</a></td></tr>
    <tr><td>RelatedPerson</td><td><a href="StructureDefinition-RelatedPerson-vfs-case-exchange.html">脆家關係人-RelatedPerson VFS</a></td><td>y</td><td>y</td><td>y</td><td></td><td>y</td><td><a href="https://hl7.org/fhir/R4/relatedperson.html#search">查看 RelatedPerson 查詢參數</a></td></tr>
    <tr><td>ServiceRequest</td><td><a href="StructureDefinition-ServiceRequest-vfs-case-report.html">脆家個案通報-ServiceRequest VFS</a></td><td>y</td><td>y</td><td>y</td><td></td><td>y</td><td><a href="https://hl7.org/fhir/R4/servicerequest.html#search">查看 ServiceRequest 查詢參數</a></td></tr>
  </tbody></table></div>
  <p>安全性要求請參閱<a href="security.html">安全性</a>；查詢參數的完整說明請參閱<a href="searchparameters.html">查詢參數</a>。</p>
</div>
"""

Instance: CapabilityStatementVFSServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "脆家實作指引-伺服端能力聲明"
Description: "脆家實作指引伺服端應支援之 FHIR RESTful 功能。"
* url = "https://sfaa.gov.tw/twvfs/CapabilityStatement/CapabilityStatementVFSServer"
* version = "0.0.1"
* name = "CapabilityStatementVFSServer"
* title = "脆家實作指引-伺服端能力聲明"
* status = #active
* experimental = true
* date = "2026-11-02"
* publisher = "衛生福利部社會及家庭署"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* insert VFSNarrative(伺服端, 伺服端)
* rest.mode = #server
* insert VFSCommonRest
* insert VFSResourceDefinitions

Instance: CapabilityStatementVFSClient
InstanceOf: CapabilityStatement
Usage: #definition
Title: "脆家實作指引-用戶端能力聲明"
Description: "脆家實作指引用戶端應支援之 FHIR RESTful 功能。"
* url = "https://sfaa.gov.tw/twvfs/CapabilityStatement/CapabilityStatementVFSClient"
* version = "0.0.1"
* name = "CapabilityStatementVFSClient"
* title = "脆家實作指引-用戶端能力聲明"
* status = #active
* experimental = true
* date = "2026-11-02"
* publisher = "衛生福利部社會及家庭署"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #json
* format[+] = #xml
* insert VFSNarrative(用戶端, 用戶端)
* rest.mode = #client
* insert VFSCommonRest
* insert VFSResourceDefinitions
