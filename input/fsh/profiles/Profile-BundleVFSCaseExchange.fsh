Profile: BundleVFSSettleExchange
Parent: Bundle
Id: Bundle-vfs-settle-exchange
Title: "安置案件交換-Bundle VFS"
Description: "安置案件交換的 collection Bundle，彙集個案、關係人、主責人員、主責單位、通報與案件期間。TWSS Base IG 未定義此專案交換所需的 Bundle Profile，故繼承 FHIR R4 原生 Bundle 並補充本專案交換約束。"
* type = #collection
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS
* entry.resource 1..1 MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    patient 1..1 MS and
    relatedPerson 0..* MS and
    practitioner 1..* MS and
    organization 1..1 MS and
    caseReport 1..1 MS and
    episodeOfCare 1..1 MS and
    searchRevocationProvenance 0..1 MS
* entry[patient].resource only PatientVFSCaseExchange
* entry[relatedPerson].resource only RelatedPersonVFSCaseExchange
* entry[practitioner].resource only PractitionerVFSCaseExchange
* entry[organization].resource only OrganizationVFSCaseExchange
* entry[caseReport].resource only ServiceRequestVFSCaseReport
* entry[episodeOfCare].resource only EpisodeOfCareVFSCase
* entry[searchRevocationProvenance].resource only ProvenanceVFSRevocation

Profile: BundleVFSFromCRAExchange
Parent: Bundle
Id: Bundle-vfs-from-cra-exchange
Title: "育兒津貼回饋脆家-Bundle VFS"
Description: "育兒津貼系統回饋脆弱家庭個案管理平台資訊的 collection Bundle，包含兒童及至多兩名申請人。"
* type = #collection
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS
* entry.resource 1..1 MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    patient 1..1 MS and
    relatedPerson 0..2 MS
* entry[patient].resource only PatientVFSCaseExchange
* entry[relatedPerson].resource only RelatedPersonVFSCaseExchange

Profile: BundleVFSToCRAExchange
Parent: Bundle
Id: Bundle-vfs-to-cra-exchange
Title: "脆家傳送育兒津貼-Bundle VFS"
Description: "脆弱家庭個案管理平台傳送育兒津貼系統資訊的 collection Bundle，包含個案、父母關係人、通報、主責服務提供者與案件期間；撤尋時可另附撤尋紀錄。"
* type = #collection
* timestamp 1..1 MS
* entry 1..* MS
* entry.fullUrl 1..1 MS
* entry.resource 1..1 MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    patient 1..1 MS and
    relatedPerson 0..2 MS and
    practitioner 1..1 MS and
    organization 0..1 MS and
    caseReport 1..1 MS and
    episodeOfCare 1..1 MS and
    searchRevocationProvenance 0..1 MS
* entry[patient].resource only PatientVFSCaseExchange
* entry[relatedPerson].resource only RelatedPersonVFSCaseExchange
* entry[practitioner].resource only PractitionerVFSCaseExchange
* entry[organization].resource only OrganizationVFSCaseExchange
* entry[caseReport].resource only ServiceRequestVFSCaseReport
* entry[episodeOfCare].resource only EpisodeOfCareVFSCase
* entry[searchRevocationProvenance].resource only ProvenanceVFSRevocation
