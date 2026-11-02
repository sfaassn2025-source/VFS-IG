Instance: vfs-mother-example
InstanceOf: RelatedPersonVFSCaseExchange
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>脆家母親關係人範例</b></h3>
  <p><b>啟用狀態</b>：true；<b>個案</b>：<a href="Patient-vfs-case-patient-example.html">Patient/vfs-case-patient-example</a></p>
  <p><b>關係人編號</b>：RP-002 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#RI）</span>（系統：<code>https://example.org/vfs/related-person-number</code>）</p>
  <blockquote>
    <p><b>識別碼型別</b>：National Person Identifier <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#NNxxx）</span><br/><b>身分證字號（official）</b>：C223456789 （http://www.moi.gov.tw）</p>
  </blockquote>
  <p><b>與個案關係</b>：母親 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v3-RoleCode">RoleCode</a>#MTH）</span></p>
  <p><b>姓名</b>：王媽媽；<b>性別</b>：女性 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-administrative-gender.html">AdministrativeGender</a>#female）</span>；<b>出生日期</b>：1987-06-15；<b>聯絡電話</b>：0922333444；<b>聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span></p>
  <p><b>戶籍地址</b>：10048臺北市中正區重慶南路一段5號 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-vfs-address-classification-cs.html">TWVFS 地址分類</a>#registered）</span></p>
  <p><b>居住地址</b>：11557臺北市南港區重陽路 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/v3/AddressUse/cs.html">v3 AddressUse</a>#H）</span></p>
  <p><b>國籍</b>：臺灣 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://terminology.hl7.org/CodeSystem-ISO3166Part1.html">ISO3166Part1</a>#TWN）</span>；<b>族群身分</b>：一般 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://build.fhir.org/ig/sfaassn2025-source/base/CodeSystem-twss-ethnic-group.html">TWSS 族群身分代碼</a>#A）</span></p>
</div>
"""
* active = true
* patient = Reference(vfs-case-patient-example)
* identifier[relationNumber].use = #usual
* identifier[relationNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[relationNumber].type.coding.code = #RI
* identifier[relationNumber].system = "https://example.org/vfs/related-person-number"
* identifier[relationNumber].value = "RP-002"
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "C223456789"
* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* relationship.coding.code = #MTH
* name.text = "陳美麗"
* gender = #female
* birthDate = "1987-06-15"
* telecom[0].system = #phone
* telecom[0].value = "0922333444"
* address[registered].text = "10048臺北市中正區幸福里杭州南路一段15號"
* address[registered].extension[addressClassification].valueCodeableConcept.coding[0].system = "https://sfaa.gov.tw/twvfs/CodeSystem/vfs-address-classification-cs"
* address[registered].extension[addressClassification].valueCodeableConcept.coding[0].code = #registered
* address[registered].extension[addressClassification].valueCodeableConcept.coding[0].display = "戶籍地址"
* address[residence].text = "11557臺北市南港區三重里園區街3號"
* address[residence].extension[addressClassification].valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-AddressUse"
* address[residence].extension[addressClassification].valueCodeableConcept.coding[0].code = #H
* address[residence].extension[addressClassification].valueCodeableConcept.coding[0].display = "home address"
* extension[nationality].valueCodeableConcept.coding[0].system = "urn:iso:std:iso:3166"
* extension[nationality].valueCodeableConcept.coding[0].code = #TWN
* extension[ethnicGroup].valueCodeableConcept.coding[0].system = "https://sfaa.gov.tw/base/CodeSystem/twss-ethnic-group"
* extension[ethnicGroup].valueCodeableConcept.coding[0].code = #A
* extension[ethnicGroup].valueCodeableConcept.coding[0].display = "一般"
