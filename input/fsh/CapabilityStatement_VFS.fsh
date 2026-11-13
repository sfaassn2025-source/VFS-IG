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
* insert VFSResourceCapability(Bundle, https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/Bundle-vfs-settle-exchange)
* rest.resource[=].supportedProfile[0] = "https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/Bundle-vfs-from-cra-exchange"
* rest.resource[=].supportedProfile[+] = "https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/Bundle-vfs-to-cra-exchange"
* insert VFSNativeSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, token)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Bundle-identifier, token)

* insert VFSResourceCapability(EpisodeOfCare, https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/EpisodeOfCare-vfs-case)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, token)
* insert VFSNativeSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, reference)
* insert VFSNativeSearchParam(status, http://hl7.org/fhir/SearchParameter/EpisodeOfCare-status, token)

* insert VFSResourceCapability(Organization, https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/Organization-vfs-case-exchange)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Organization-identifier, token)
* insert VFSNativeSearchParam(name, http://hl7.org/fhir/SearchParameter/Organization-name, string)

* insert VFSResourceCapability(Patient, https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/Patient-vfs-case-exchange)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier, token)
* insert VFSNativeSearchParam(name, http://hl7.org/fhir/SearchParameter/Patient-name, string)
* insert VFSNativeSearchParam(birthdate, http://hl7.org/fhir/SearchParameter/individual-birthdate, date)

* insert VFSResourceCapability(Practitioner, https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/Practitioner-vfs-case-exchange)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Practitioner-identifier, token)
* insert VFSNativeSearchParam(name, http://hl7.org/fhir/SearchParameter/Practitioner-name, string)

* insert VFSResourceCapability(Provenance, https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/Provenance-vfs-search-revocation)
* insert VFSNativeSearchParam(agent, http://hl7.org/fhir/SearchParameter/Provenance-agent, reference)
* insert VFSNativeSearchParam(target, http://hl7.org/fhir/SearchParameter/Provenance-target, reference)

* insert VFSResourceCapability(RelatedPerson, https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/RelatedPerson-vfs-case-exchange)
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/RelatedPerson-identifier, token)
* insert VFSNativeSearchParam(patient, http://hl7.org/fhir/SearchParameter/RelatedPerson-patient, reference)
* insert VFSNativeSearchParam(relationship, http://hl7.org/fhir/SearchParameter/RelatedPerson-relationship, token)

* insert VFSResourceCapability(ServiceRequest, https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/ServiceRequest-vfs-case-report)
* rest.resource[=].supportedProfile[0] = "https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/ServiceRequest-vfs-placement"
* insert VFSNativeSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, token)
* insert VFSNativeSearchParam(subject, http://hl7.org/fhir/SearchParameter/ServiceRequest-subject, reference)
* insert VFSNativeSearchParam(status, http://hl7.org/fhir/SearchParameter/ServiceRequest-status, token)

RuleSet: VFSCommonRest
* rest.security.service[0] = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR
* rest.security.description = "安全性要求請參閱本 IG 的安全性頁面。"

Instance: CapabilityStatementVFSServer
InstanceOf: CapabilityStatement
Usage: #definition
Title: "脆家實作指引-伺服端能力聲明"
Description: "脆家實作指引伺服端應支援之 FHIR RESTful 功能。"
* url = "https://twssbase.sfaa.gov.tw/ig/vfs/CapabilityStatement/CapabilityStatementVFSServer"
* version = "0.1.0"
* name = "CapabilityStatementVFSServer"
* title = "脆家實作指引-伺服端能力聲明"
* status = #draft
* experimental = false
* date = "2026-11-02"
* publisher = "衛生福利部社會及家庭署"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* patchFormat = #application/json-patch+json
* implementationGuide = "https://twssbase.sfaa.gov.tw/ig/vfs/ImplementationGuide/tw.gov.mohw.sfaa.vfs"
* rest.mode = #server
* description = "衛生福利部社會及家庭署脆弱家庭個案管理平台實作指引伺服端能力聲明。"
* rest.documentation = "衛生福利部社會及家庭署脆弱家庭個案管理平台實作指引伺服端應以 FHIR RESTful API 提供本能力聲明所列資源，支援 JSON 格式與標準 HTTP 狀態碼，並確認新增實例的 meta.profile 符合脆弱家庭個案管理平台實作指引 Profiles。"
* insert VFSCommonRest
* insert VFSResourceDefinitions
* insert VFSNarrative(server, 伺服端)

Instance: CapabilityStatementVFSClient
InstanceOf: CapabilityStatement
Usage: #definition
Title: "脆家實作指引-用戶端能力聲明"
Description: "脆家實作指引用戶端應支援之 FHIR RESTful 功能。"
* url = "https://twssbase.sfaa.gov.tw/ig/vfs/CapabilityStatement/CapabilityStatementVFSClient"
* version = "0.1.0"
* name = "CapabilityStatementVFSClient"
* title = "脆家實作指引-用戶端能力聲明"
* status = #draft
* experimental = false
* date = "2026-11-02"
* publisher = "衛生福利部社會及家庭署"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* patchFormat = #application/json-patch+json
* implementationGuide = "https://twssbase.sfaa.gov.tw/ig/vfs/ImplementationGuide/tw.gov.mohw.sfaa.vfs"
* rest.mode = #client
* description = "衛生福利部社會及家庭署脆弱家庭個案管理平台實作指引用戶端能力聲明。"
* rest.documentation = "衛生福利部社會及家庭署脆弱家庭個案管理平台實作用戶端應依本能力聲明所列資源與 Profile 使用 FHIR RESTful API。"
* insert VFSCommonRest
* insert VFSResourceDefinitions
* insert VFSNarrative(client, 用戶端)
