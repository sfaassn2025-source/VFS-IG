Profile: RelatedPersonVFSCaseExchange
Parent: RelatedPersonTWSSBase
Id: RelatedPerson-vfs-case-exchange
Title: "脆弱家庭關係人-RelatedPerson VFS"
Description: "脆弱家庭及行方不明案件交換之父母或其他關係人資料；以 relationship 區分父親與母親。"
* patient only Reference(PatientVFSCaseExchange)
* identifier[idCardNumber] MS
* relationship MS
* name MS
* gender MS
* birthDate MS
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
* relationship ^short = "與個案關係；父親使用 FTH，母親使用 MTH"
* identifier[relationNumber] ^short = "關係人編號（TWSS Base 必填技術識別碼）"
* identifier[relationNumber] ^definition = "關係人編號為 TWSS Base RelatedPerson Profile 的必填技術識別碼，非脆家交換欄位；來源系統應提供或建立同一關係人可穩定重複使用的識別值。"
* address ^short = "戶籍、居住、通訊或公文送達地址；以官方 address-classification Extension 的分類代碼區分"
