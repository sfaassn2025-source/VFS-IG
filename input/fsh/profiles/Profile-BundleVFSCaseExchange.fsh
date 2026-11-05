Profile: BundleVFSSettleExchange
Parent: Bundle
Id: Bundle-vfs-settle-exchange
Title: "安置案件交換-Bundle VFS"
Description: "安置案件交換的 collection Bundle，彙集待安置個案、關係人、提出申請的主責社工與安置案件申請。TWSS Base IG 未定義此專案交換所需的 Bundle Profile，故繼承 FHIR R4 原生 Bundle 並補充本專案交換約束。"
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
    practitioner 1..1 MS and
    placementRequest 1..1 MS
* entry[patient].resource only PatientVFSCaseExchange
* entry[relatedPerson].resource only RelatedPersonVFSCaseExchange
* entry[practitioner].resource only PractitionerVFSCaseExchange
* entry[placementRequest].resource only ServiceRequestVFSPlacement

Profile: BundleVFSFromCRAExchange
Parent: Bundle
Id: Bundle-vfs-from-cra-exchange
Title: "育兒津貼回饋脆家-Bundle VFS"
Description: "育兒津貼系統回饋脆弱家庭個案管理平台資訊的 collection Bundle，包含兒童及至多兩名申請人。每筆 applicant entry 為該次育兒津貼資料回饋中的申請人，並以 RelatedPerson.patient 連結兒童及以 RelatedPerson.relationship 表達其與兒童的關係。"
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
    applicant 0..2 MS
* entry[patient].resource only PatientVFSCaseExchange
* entry[applicant].resource only RelatedPersonVFSCaseExchange

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
