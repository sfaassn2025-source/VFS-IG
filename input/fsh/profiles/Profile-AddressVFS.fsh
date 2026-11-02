Profile: AddressVFS
Parent: AddressTWSSBase
Id: Address-vfs-case-exchange
Title: "脆家地址-Address VFS"
Description: "脆弱家庭個案管理平台交換使用的地址資料型別。沿用 TWSS Base Address 結構，並以官方 Address Classification Extension 的分類代碼區分居住、通訊、戶籍及公文送達地址。"
* extension contains http://hl7.org/fhir/StructureDefinition/address-classification named addressClassification 0..1 MS
* extension[addressClassification].valueCodeableConcept from VFSAddressClassificationVS (required)
* extension[addressClassification] ^short = "地址分類"

Profile: AddressVFSResidence
Parent: AddressVFS
Id: Address-vfs-residence
Title: "居住地址-Address VFS"
Description: "脆家個案或關係人的居住地址。"
* extension[addressClassification] 1..1
* extension[addressClassification].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-AddressUse#H "home address"

Profile: AddressVFSCorrespondence
Parent: AddressVFS
Id: Address-vfs-correspondence
Title: "通訊地址-Address VFS"
Description: "脆家個案或關係人的通訊地址。"
* extension[addressClassification] 1..1
* extension[addressClassification].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-AddressUse#PST "postal address"

Profile: AddressVFSRegistered
Parent: AddressVFS
Id: Address-vfs-registered
Title: "戶籍地址-Address VFS"
Description: "脆家個案或關係人的戶籍地址。"
* extension[addressClassification] 1..1
* extension[addressClassification].valueCodeableConcept = VFSAddressClassificationCS#registered "戶籍地址"

Profile: AddressVFSOfficialService
Parent: AddressVFS
Id: Address-vfs-official-service
Title: "公文送達地址-Address VFS"
Description: "脆家個案或關係人的公文送達地址。"
* extension[addressClassification] 1..1
* extension[addressClassification].valueCodeableConcept = VFSAddressClassificationCS#official-service "公文送達地址"
