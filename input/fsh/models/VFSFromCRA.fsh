Logical: VFSFromCRAModel
Id: VFSFromCRAModel
Title: "未滿兩歲兒童育兒津貼資訊系統至脆弱家庭個案管理平台資料模型"
Description: "定義未滿兩歲兒童育兒津貼資訊系統傳送至脆弱家庭個案管理平台的交換欄位。兒童資料屬同一個個案；申請人以最多二筆關係人表達。"

* childIdCardNumber 1..1 Identifier "兒童身分證號"
* childName 1..1 HumanName "兒童姓名"
* contactAddress 0..1 Address "通訊地址"
* billingAddress 0..1 Address "公文送達地址"
* applicant 0..2 BackboneElement "申請人" "最多可填寫二位，分別表達申請人1與申請人2。"
* applicant.name 0..1 HumanName "申請人姓名"
* applicant.contactTel 0..1 ContactPoint "申請人聯絡電話"
* applicant.relationship 0..1 CodeableConcept "申請人與兒童關係"

Mapping: VFSFromCRAModelToPatient
Id: vfs-from-cra-model-to-patient
Title: "育兒津貼至脆家資料模型對應個案-Patient（使用VFS Profile）"
Source: VFSFromCRAModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/Patient-vfs-case-exchange"
* childName -> "Patient.name" "兒童姓名"
* childIdCardNumber -> "Patient.identifier[idCardNumber]" "兒童身分證號"
* contactAddress -> "Patient.address[correspondence].text" "通訊地址完整文字"
* billingAddress -> "Patient.address[officialService].text" "公文送達地址完整文字"

Mapping: VFSFromCRAModelToRelatedPerson
Id: vfs-from-cra-model-to-related-person
Title: "育兒津貼至脆家資料模型對應申請人-RelatedPerson（使用VFS Profile）"
Source: VFSFromCRAModel
Target: "https://sfaa.gov.tw/twvfs/StructureDefinition/RelatedPerson-vfs-case-exchange"
* applicant.name -> "RelatedPerson.name" "每一個 applicant 群組對應一筆 RelatedPerson"
* applicant.contactTel -> "RelatedPerson.telecom.where(system = 'phone')" "每一個 applicant 群組對應一筆 RelatedPerson"
* applicant.relationship -> "RelatedPerson.relationship" "申請人與兒童關係"
