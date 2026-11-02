Profile: ProvenanceVFSRevocation
Parent: Provenance
Id: Provenance-vfs-search-revocation
Title: "脆弱家庭撤尋紀錄-Provenance VFS"
Description: "脆弱家庭行方不明案件之撤尋紀錄；記錄撤尋發生時間及實際執行撤尋的人員。未繼承 TWSS Base Provenance Profile，原因為本情境的 agent.who 必須參照服務提供者，而非資料建立或修改單位。"
* target 1..1 MS
* target only Reference(EpisodeOfCareVFSCase)
* target ^short = "撤尋的案件"
* occurred[x] 1..1 MS
* occurred[x] only dateTime
* occurred[x] ^short = "撤尋時間"
* recorded 1..1 MS
* recorded ^short = "撤尋紀錄登錄時間"
* activity 1..1 MS
* activity ^short = "撤尋資料異動活動"
* agent 1..1 MS
* agent.role from http://terminology.hl7.org/ValueSet/v3-PurposeOfUse|3.1.0
* agent.who 1..1 MS
* agent.who only Reference(PractitionerVFSCaseExchange)
* agent.who ^short = "撤尋人員"
