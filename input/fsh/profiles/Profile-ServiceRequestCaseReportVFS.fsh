Profile: ServiceRequestVFSCaseReport
Parent: ServiceRequestCaseReportTWSSBase
Id: ServiceRequest-vfs-case-report
Title: "脆弱家庭個案通報-ServiceRequest VFS"
Description: "脆弱家庭或行方不明個案之通報請求；通報時間使用 ServiceRequest.authoredOn，並以 workflow-episodeOfCare Extension 關聯通報所屬的行方不明案件。"
* subject only Reference(PatientVFSCaseExchange)
* subject 1..1 MS
* authoredOn 1..1 MS
* extension contains http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare named workflowEpisodeOfCare 1..1 MS
* extension[workflowEpisodeOfCare].valueReference only Reference(EpisodeOfCareVFSCase)
* extension[workflowEpisodeOfCare] ^short = "通報所屬行方不明案件"
* authoredOn ^short = "通報時間"
