Profile: PatientVFSCaseExchange
Parent: PatientTWSSBase
Id: Patient-vfs-case-exchange
Title: "脆弱家庭個案-Patient VFS"
Description: "脆弱家庭及行方不明案件交換之個案資料；繼承 TWSS Base 個案共通交換規則。"
* identifier[idCardNumber] 1..1 MS
* name[usual] 1..1 MS
* name[usual].text 1..1 MS
* birthDate MS
* gender MS
* telecom MS
* address MS
* address ^slicing.discriminator.type = #profile
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address.extension contains http://hl7.org/fhir/StructureDefinition/address-classification named addressClassification 0..1 MS
* address.extension[addressClassification].valueCodeableConcept from VFSAddressClassificationVS (required)
* address contains residence 0..1 MS and correspondence 0..1 MS and registered 0..1 MS and officialService 0..1 MS
* address[residence] ^short = "居住地址"
* address[residence] only AddressVFSResidence
* address[correspondence] ^short = "通訊地址"
* address[correspondence] only AddressVFSCorrespondence
* address[registered] ^short = "戶籍地址"
* address[registered] only AddressVFSRegistered
* address[officialService] ^short = "公文送達地址"
* address[officialService] only AddressVFSOfficialService
* extension[nationality] MS
* extension[ethnicGroup] MS
* identifier[idCardNumber] ^short = "身分證號"
* name ^short = "姓名"
* birthDate ^short = "生日"
* telecom ^short = "聯絡方式"
* address ^short = "戶籍、居住、通訊或公文送達地址；以官方 address-classification Extension 的分類代碼區分"
