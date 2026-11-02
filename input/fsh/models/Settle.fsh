Logical: SettleModel
Id: SettleModel
Title: "衛生福利部社會及家庭署脆弱家庭管理(TWVFS)傳送至安置系統資料模型"
Description: """
衛生福利部社會及家庭署脆弱家庭管理(TWVFS)資料模型，此邏輯模型為定義衛生福利部社會及家庭署脆弱家庭管理傳送至安置系統情境下使用的所有資料欄位。
為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」
瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目（element）。亦可配合
[視覺化邏輯模型圖]進行欄位對應。
"""
//* ^version = "0.0.1"

* socialWorkerInfo 1..1 BackboneElement "主責社工資訊"
* socialWorkerInfo.citizenDigitalCertificate 1..1 Identifier "主責社工Citizen Digital Certificate卡號"

* caseInfo 1..1 BackboneElement "個案資訊"
* caseInfo.name 1..1 HumanName "姓名"
* caseInfo.birthDate 0..1 date "出生日期"
* caseInfo.tel 0..1 string "聯絡電話(市話)"
* caseInfo.idCardNumber 1..1 Identifier "身分證字號"
* caseInfo.householdAddress 0..1 string "戶籍地址"
* caseInfo.gender 0..1 code "性別"
* caseInfo.residenceAddress 0..1 string "居住地址"
* caseInfo.nationality 0..1 CodeableConcept "國籍"
* caseInfo.ethnicGroup 0..1 CodeableConcept "族群身分"

* familyInfo 0..1 BackboneElement "家庭資訊"
* familyInfo.fatherName 0..1 HumanName "父親姓名"
* familyInfo.motherName 0..1 HumanName "母親姓名"
* familyInfo.fatherGender 0..1 code "父親性別"
* familyInfo.fatherBirthDate 0..1 date "父親出生日期"
* familyInfo.fatherIdCardNumber 0..1 Identifier "父親身分證號"
* familyInfo.fatherResidenceAddress 0..1 string "父親居住地址"
* familyInfo.fatherHouseholdAddress 0..1 string "父親戶籍地址"
* familyInfo.fatherContactTel 0..1 string "父親聯絡電話"
* familyInfo.fatherNationality 0..1 CodeableConcept "父親國籍"
* familyInfo.fatherAborigine 0..1 boolean "父親是否為原住民"
* familyInfo.motherGender 0..1 code "母親性別"
* familyInfo.motherBirthDate 0..1 date "母親出生日期"
* familyInfo.motherIdCardNumber 0..1 Identifier "母親身分證號"
* familyInfo.motherResidenceAddress 0..1 string "母親居住地址"
* familyInfo.motherHouseholdAddress 0..1 string "母親戶籍地址"
* familyInfo.motherContactTel 0..1 string "母親聯絡電話"
* familyInfo.motherNationality 0..1 CodeableConcept "母親國籍"
* familyInfo.motherAborigine 0..1 boolean "母親是否為原住民"


Mapping: SettleModelToBundleVFSSettleExchange
Id: settlemodel-to-bundle-vfs-case-exchange
Title: "脆弱家庭管理傳送至安置系統資料模型對應Bundle TWVFS Profile"
Source: SettleModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/Bundle-vfs-settle-exchange"
* -> "Bundle" "transaction交換資料包"
* socialWorkerInfo -> "Bundle.entry.resource.ofType(Practitioner)" "主責社工人員資料"
* caseInfo -> "Bundle.entry.resource.ofType(Patient)" "個案資料"
* familyInfo -> "Bundle.entry.resource.ofType(RelatedPerson)" "家庭或關係人資料"


Mapping: SettleModelToPractitionerVFSCaseExchange
Id: settlemodel-to-practitioner-vfs-case-exchange
Title: "脆弱家庭管理傳送至安置系統資料模型對應Practitioner TWVFS Profile"
Source: SettleModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/Practitioner-vfs-case-exchange"
* socialWorkerInfo -> "Practitioner" "主責社工人員資料"
* socialWorkerInfo.citizenDigitalCertificate -> "Practitioner.identifier[citizenDigitalCertificate]" "主責社工自然人憑證卡號"

Mapping: SettleModelToPatientVFSCaseExchange
Id: settlemodel-to-patient-vfs-case-exchange
Title: "脆弱家庭管理傳送至安置系統資料模型對應Patient（使用VFS Profile）"
Source: SettleModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/Patient-vfs-case-exchange"
* caseInfo -> "Patient" "個案資料"
* caseInfo.name -> "Patient.name" "姓名"
* caseInfo.birthDate -> "Patient.birthDate" "出生日期"
* caseInfo.tel -> "Patient.telecom.where(system = 'phone')" "聯絡電話"
* caseInfo.idCardNumber -> "Patient.identifier[idCardNumber].value" "身分證字號"
* caseInfo.householdAddress -> "Patient.address[registered].text" "戶籍地址"
* caseInfo.gender -> "Patient.gender" "性別"
* caseInfo.residenceAddress -> "Patient.address[residence].text" "居住地址"
* caseInfo.nationality -> "Patient.extension[nationality]" "個案國籍"
* caseInfo.ethnicGroup -> "Patient.extension[ethnicGroup]" "族群身分"

Mapping: SettleModelToRelatedPersonVFSCaseExchange
Id: settlemodel-to-relatedperson-vfs-case-exchange
Title: "脆弱家庭管理傳送至安置系統資料模型對應RelatedPerson（使用VFS Profile）"
Source: SettleModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/RelatedPerson-vfs-case-exchange"
* familyInfo -> "RelatedPerson" "父母或家庭關係人資料"
* familyInfo.fatherName -> "RelatedPerson.where(relationship.coding.code = 'FTH').name" "父親姓名"
* familyInfo.motherName -> "RelatedPerson.where(relationship.coding.code = 'MTH').name" "母親姓名"
* familyInfo.fatherGender -> "RelatedPerson.where(relationship.coding.code = 'FTH').gender" "父親性別"
* familyInfo.fatherBirthDate -> "RelatedPerson.where(relationship.coding.code = 'FTH').birthDate" "父親出生日期"
* familyInfo.fatherIdCardNumber -> "RelatedPerson.where(relationship.coding.code = 'FTH').identifier[idCardNumber].value" "父親身分證號"
* familyInfo.fatherResidenceAddress -> "RelatedPerson.where(relationship.coding.code = 'FTH').address[residence].text" "父親居住地址"
* familyInfo.fatherHouseholdAddress -> "RelatedPerson.where(relationship.coding.code = 'FTH').address[registered].text" "父親戶籍地址"
* familyInfo.fatherContactTel -> "RelatedPerson.where(relationship.coding.code = 'FTH').telecom.where(system = 'phone')" "父親聯絡電話"
* familyInfo.fatherNationality -> "RelatedPerson.where(relationship.coding.code = 'FTH').extension[nationality]" "父親國籍"
* familyInfo.fatherAborigine -> "RelatedPerson.where(relationship.coding.code = 'FTH').extension[ethnicGroup].valueCodeableConcept" "父親是否為原住民；值為 true 時填 TWSS-族群身分 #B（原住民），值為 false 時不填族群身分 Extension"
* familyInfo.motherGender -> "RelatedPerson.where(relationship.coding.code = 'MTH').gender" "母親性別"
* familyInfo.motherBirthDate -> "RelatedPerson.where(relationship.coding.code = 'MTH').birthDate" "母親出生日期"
* familyInfo.motherIdCardNumber -> "RelatedPerson.where(relationship.coding.code = 'MTH').identifier[idCardNumber].value" "母親身分證號"
* familyInfo.motherResidenceAddress -> "RelatedPerson.where(relationship.coding.code = 'MTH').address[residence].text" "母親居住地址"
* familyInfo.motherHouseholdAddress -> "RelatedPerson.where(relationship.coding.code = 'MTH').address[registered].text" "母親戶籍地址"
* familyInfo.motherContactTel -> "RelatedPerson.where(relationship.coding.code = 'MTH').telecom.where(system = 'phone')" "母親聯絡電話"
* familyInfo.motherNationality -> "RelatedPerson.where(relationship.coding.code = 'MTH').extension[nationality]" "母親國籍"
* familyInfo.motherAborigine -> "RelatedPerson.where(relationship.coding.code = 'MTH').extension[ethnicGroup].valueCodeableConcept" "母親是否為原住民；值為 true 時填 TWSS-族群身分 #B（原住民），值為 false 時不填族群身分 Extension"
