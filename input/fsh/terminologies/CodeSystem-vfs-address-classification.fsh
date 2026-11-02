CodeSystem: VFSAddressClassificationCS
Id: vfs-address-classification-cs
Title: "TWVFS-地址分類"
Description: "脆弱家庭個案管理平台交換使用、且無法以 HL7 v3 AddressUse 表達的地址分類代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #registered "戶籍地址" "個人依法辦理戶籍登記的地址。"
* #official-service "公文送達地址" "個人指定作為行政公文或正式文書送達用途的地址。"

ValueSet: VFSAddressClassificationVS
Id: vfs-address-classification-vs
Title: "TWVFS-地址分類值集"
Description: "脆弱家庭個案管理平台交換使用的地址分類值集；優先沿用 HL7 v3 AddressUse，並補充戶籍地址及公文送達地址代碼。"
* ^version = "0.0.1"
* ^status = #active
* ^experimental = false
* include http://terminology.hl7.org/CodeSystem/v3-AddressUse#H "home address"
* include http://terminology.hl7.org/CodeSystem/v3-AddressUse#PST "postal address"
* include codes from system VFSAddressClassificationCS
