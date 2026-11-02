Profile: PractitionerVFSCaseExchange
Parent: PractitionerTWSSBase
Id: Practitioner-vfs-case-exchange
Title: "脆弱家庭服務提供者-Practitioner VFS"
Description: "脆弱家庭及行方不明案件交換之主責社工或撤尋執行人員資料。"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains citizenDigitalCertificate 0..1 MS
* identifier[citizenDigitalCertificate].use = #official
* identifier[citizenDigitalCertificate].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[citizenDigitalCertificate].type.coding.code = #U
* identifier[citizenDigitalCertificate].type.text = "Citizen Digital Certificate"
* identifier[citizenDigitalCertificate].system = "https://moica.nat.gov.tw"
* identifier[citizenDigitalCertificate].value 1..1 MS
* identifier[citizenDigitalCertificate] ^short = "主責社工自然人憑證卡號"
* name MS
* telecom MS
