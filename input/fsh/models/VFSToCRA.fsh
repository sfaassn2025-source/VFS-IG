Logical: VFSToCRAModel
Id: VFSToCRAModel
Title: "脆弱家庭個案管理平台至未滿兩歲兒童育兒津貼資訊系統資料模型"
Description: "定義脆弱家庭個案管理平台傳送至未滿兩歲兒童育兒津貼資訊系統的交換欄位。撤尋為案件生命週期事件，撤尋時間記錄於 EpisodeOfCare，實際操作人員則以 Provenance 參照。"

* childName 1..1 HumanName "兒童姓名"
* childIdCardNumber 1..1 Identifier "兒童身分證號"
* childBirthDate 0..1 date "兒童生日民國年月日"
* fatherName 0..1 HumanName "父姓名"
* fatherIdCardNumber 0..1 Identifier "父身分證號"
* motherName 0..1 HumanName "母姓名"
* motherIdCardNumber 0..1 Identifier "母身分證號"
* reportTime 1..1 dateTime "通報時間"
* searchRevocationTime 0..1 dateTime "撤尋時間"
* responsibleSocialWorkerName 1..1 HumanName "主責社工姓名"
* responsibleSocialWorkerUnit 0..1 string "主責社工單位"
* responsibleSocialWorkerContactTel 0..1 ContactPoint "主責社工電話"
* searchRevocationStaffName 0..1 HumanName "撤尋人員姓名"

Mapping: VFSToCRAModelToPatient
Id: vfs-to-cra-model-to-patient
Title: "脆家至育兒津貼資料模型對應個案-Patient（使用VFS Profile）"
Source: VFSToCRAModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/Patient-vfs-case-exchange"
* childName -> "Patient.name" "兒童姓名"
* childIdCardNumber -> "Patient.identifier[idCardNumber]" "兒童身分證號"
* childBirthDate -> "Patient.birthDate" "兒童出生日期"

Mapping: VFSToCRAModelToRelatedPerson
Id: vfs-to-cra-model-to-related-person
Title: "脆家至育兒津貼資料模型對應父母-RelatedPerson（使用VFS Profile）"
Source: VFSToCRAModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/RelatedPerson-vfs-case-exchange"
* fatherName -> "RelatedPerson.where(relationship.coding.code = 'FTH').name" "父姓名"
* fatherIdCardNumber -> "RelatedPerson.where(relationship.coding.code = 'FTH').identifier[idCardNumber]" "父身分證號"
* motherName -> "RelatedPerson.where(relationship.coding.code = 'MTH').name" "母姓名"
* motherIdCardNumber -> "RelatedPerson.where(relationship.coding.code = 'MTH').identifier[idCardNumber]" "母身分證號"

Mapping: VFSToCRAModelToServiceRequest
Id: vfs-to-cra-model-to-service-request
Title: "脆家至育兒津貼資料模型對應個案通報-ServiceRequest（使用VFS Profile）"
Source: VFSToCRAModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/ServiceRequest-vfs-case-report"
* reportTime -> "ServiceRequest.authoredOn" "通報時間"

Mapping: VFSToCRAModelToServiceRequestEpisodeOfCareReference
Id: vfs-to-cra-model-to-service-request-episode-of-care-reference
Title: "脆家傳送育兒津貼之通報與行方不明案件關聯"
Source: VFSToCRAModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/ServiceRequest-vfs-case-report"
* -> "ServiceRequest.extension[workflowEpisodeOfCare].valueReference -> EpisodeOfCare" "個案通報所屬行方不明案件"

Mapping: VFSToCRAModelToPractitioner
Id: vfs-to-cra-model-to-practitioner
Title: "脆家至育兒津貼資料模型對應主責社工-Practitioner（使用VFS Profile）"
Source: VFSToCRAModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/Practitioner-vfs-case-exchange"
* responsibleSocialWorkerName -> "Practitioner.name" "主責社工姓名"
* responsibleSocialWorkerContactTel -> "Practitioner.telecom.where(system = 'phone')" "主責社工電話"

Mapping: VFSToCRAModelToEpisodeOfCare
Id: vfs-to-cra-model-to-episode-of-care
Title: "脆家至育兒津貼資料模型對應個案服務案件-EpisodeOfCare VFS"
Source: VFSToCRAModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/EpisodeOfCare-vfs-case"
* responsibleSocialWorkerUnit -> "EpisodeOfCare.managingOrganization" "主責社工單位；Reference 至 Organization VFS"
* responsibleSocialWorkerName -> "EpisodeOfCare.careManager" "主責社工；Reference 至 Practitioner VFS"
* searchRevocationTime -> "EpisodeOfCare.period.end" "撤尋時間"

Mapping: VFSToCRAModelToSearchRevocationProvenance
Id: vfs-to-cra-model-to-search-revocation-provenance
Title: "脆家至育兒津貼資料模型對應撤尋紀錄-Provenance VFS"
Source: VFSToCRAModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/Provenance-vfs-search-revocation"
* searchRevocationTime -> "Provenance.occurredDateTime" "撤尋時間；使用脆弱家庭撤尋紀錄-Provenance VFS"
* searchRevocationStaffName -> "Provenance.agent.who -> Practitioner.name" "撤尋人員透過 Provenance.agent.who 參照 Practitioner VFS，姓名由被參照的 Practitioner.name 表達"

