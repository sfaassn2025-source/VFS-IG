Profile: EpisodeOfCareVFSCase
Parent: EpisodeOfCareTWSSBase
Id: EpisodeOfCare-vfs-case
Title: "脆弱家庭案件-EpisodeOfCare VFS"
Description: "脆弱家庭或行方不明案件由主責單位承擔責任的案件期間。撤尋時以 period.end 記錄撤尋時間，並將 status 設為 finished。"
* patient only Reference(PatientVFSCaseExchange)
* managingOrganization only Reference(OrganizationVFSCaseExchange)
* careManager only Reference(PractitionerVFSCaseExchange)
* period.start MS
* period.end MS
* period.end ^short = "撤尋時間；僅於撤尋結案時填寫"
* careManager ^short = "主責社工"
