Mapping: VFSFromCRAModelToBundleVFSFromCRAExchange
Id: vfs-from-cra-model-to-bundle
Title: "育兒津貼回饋脆家邏輯模型對應至育兒津貼回饋脆家-Bundle VFS"
Source: VFSFromCRAModel
Target: "https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/Bundle-vfs-from-cra-exchange"
* childIdCardNumber -> "Bundle.entry[patient].resource" "兒童個案資源"
* applicant1 -> "Bundle.entry[applicant].resource" "申請人1對應一筆關係人資源；Bundle slice 表達其為本次育兒津貼資料回饋的申請人"
* applicant2 -> "Bundle.entry[applicant].resource" "申請人2對應一筆關係人資源；Bundle slice 表達其為本次育兒津貼資料回饋的申請人"

Mapping: VFSToCRAModelToBundleVFSToCRAExchange
Id: vfs-to-cra-model-to-bundle
Title: "脆家傳送育兒津貼邏輯模型對應至脆家傳送育兒津貼-Bundle VFS"
Source: VFSToCRAModel
Target: "https://twssbase.sfaa.gov.tw/ig/vfs/StructureDefinition/Bundle-vfs-to-cra-exchange"
* childIdCardNumber -> "Bundle.entry[patient].resource" "兒童個案資源"
* fatherIdCardNumber -> "Bundle.entry[relatedPerson].resource" "父親關係人資源"
* motherIdCardNumber -> "Bundle.entry[relatedPerson].resource" "母親關係人資源"
* reportTime -> "Bundle.entry[caseReport].resource" "個案通報資源"
* searchRevocationTime -> "Bundle.entry[episodeOfCare].resource" "案件期間資源；撤尋時可另附 Provenance"
