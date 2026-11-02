Profile: ServiceRequestVFSCaseReport
Parent: ServiceRequestCaseReportTWSSBase
Id: ServiceRequest-vfs-case-report
Title: "脆弱家庭個案通報-ServiceRequest VFS"
Description: "脆弱家庭或行方不明個案之通報請求；通報時間使用 ServiceRequest.authoredOn。"
* subject only Reference(PatientVFSCaseExchange)
* subject 1..1 MS
* authoredOn 1..1 MS
* authoredOn ^short = "通報時間"
