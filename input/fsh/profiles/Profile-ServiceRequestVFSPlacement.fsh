Profile: ServiceRequestVFSPlacement
Parent: ServiceRequestTWSSBase
Id: ServiceRequest-vfs-placement
Title: "脆弱家庭安置案件申請-ServiceRequest VFS"
Description: "脆弱家庭個案管理平台向全國兒童少年安置及追蹤個案管理系統提出開啟安置案件請求時使用的 ServiceRequest Profile。subject 為待安置個案，requester 為提出請求的主責社工。"
* code = TWSSEpisodeOfCareType#child-placement "兒少安置及教養服務"
* subject only Reference(PatientVFSCaseExchange)
* subject 1..1 MS
* requester only Reference(PractitionerVFSCaseExchange)
* requester 1..1 MS
* performer only Reference(OrganizationVFSCaseExchange)
