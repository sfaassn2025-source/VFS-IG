Instance: vfs-case-patient-example
InstanceOf: PatientVFSCaseExchange
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>脆家個案範例</b></h3>
  <p><b>啟用狀態</b>：true</p>
  <blockquote>
    <p><b>識別碼型別</b>：National Person Identifier <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#NNxxx）</span><br/><b>身分證字號（official）</b>：A123456789 （http://www.moi.gov.tw）</p>
  </blockquote>
  <p><b>姓名</b>：王小明；<b>性別</b>：男性 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-administrative-gender.html">AdministrativeGender</a>#male）</span>；<b>出生日期</b>：2015-06-01</p>
  <p><b>聯絡電話</b>：0912345678；<b>聯絡方式</b>：Phone <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/valueset-contact-point-system.html">ContactPointSystem</a>#phone）</span></p>
  <p><b>戶籍地址</b>：11558臺北市南港區新光里忠孝東路六段488號 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-vfs-address-classification-cs.html">TWVFS 地址分類</a>#registered）</span></p>
  <p><b>居住地址</b>：11557臺北市南港區重陽路 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/v3/AddressUse/cs.html">v3 AddressUse</a>#H）</span></p>
  <p><b>通訊地址</b>：10488臺北市中山區南京東路二段1號 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/v3/AddressUse/cs.html">v3 AddressUse</a>#PST）</span></p>
  <p><b>公文送達地址</b>：11070臺北市信義區松仁路100號 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="CodeSystem-vfs-address-classification-cs.html">TWVFS 地址分類</a>#official-service）</span></p>
  <p><b>國籍</b>：臺灣 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://terminology.hl7.org/CodeSystem-ISO3166Part1.html">ISO3166Part1</a>#TW）</span>；<b>族群身分</b>：一般 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://twssbase.sfaa.gov.tw/ig/base/CodeSystem-twss-ethnic-group.html">TWSS 族群身分代碼</a>#A）</span></p>
</div>
"""
* active = true
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"
* name[usual].use = #usual
* name[usual].text = "王小明"
* birthDate = "2015-06-01"
* gender = #male
* telecom[0].system = #phone
* telecom[0].value = "0912345678"
* address[registered].text = "11558臺北市南港區新光里忠孝東路六段488號"
* address[registered].extension[addressClassification].valueCodeableConcept.coding[0].system = "https://twssbase.sfaa.gov.tw/ig/vfs/CodeSystem/vfs-address-classification-cs"
* address[registered].extension[addressClassification].valueCodeableConcept.coding[0].code = #registered
* address[registered].extension[addressClassification].valueCodeableConcept.coding[0].display = "戶籍地址"
* address[residence].text = "11557臺北市南港區三重里園區街3號"
* address[residence].extension[addressClassification].valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-AddressUse"
* address[residence].extension[addressClassification].valueCodeableConcept.coding[0].code = #H
* address[residence].extension[addressClassification].valueCodeableConcept.coding[0].display = "home address"
* address[correspondence].text = "10488臺北市中山區南京東路二段1號"
* address[correspondence].extension[addressClassification].valueCodeableConcept.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-AddressUse"
* address[correspondence].extension[addressClassification].valueCodeableConcept.coding[0].code = #PST
* address[correspondence].extension[addressClassification].valueCodeableConcept.coding[0].display = "postal address"
* address[officialService].text = "11070臺北市信義區松仁路100號"
* address[officialService].extension[addressClassification].valueCodeableConcept.coding[0].system = "https://twssbase.sfaa.gov.tw/ig/vfs/CodeSystem/vfs-address-classification-cs"
* address[officialService].extension[addressClassification].valueCodeableConcept.coding[0].code = #official-service
* address[officialService].extension[addressClassification].valueCodeableConcept.coding[0].display = "公文送達地址"
* extension[nationality].extension[code].valueCodeableConcept.coding[0].system = "urn:iso:std:iso:3166"
* extension[nationality].extension[code].valueCodeableConcept.coding[0].code = #TW
* extension[ethnicGroup].valueCodeableConcept.coding[0].system = "https://twssbase.sfaa.gov.tw/ig/base/CodeSystem/twss-ethnic-group"
* extension[ethnicGroup].valueCodeableConcept.coding[0].code = #A
* extension[ethnicGroup].valueCodeableConcept.coding[0].display = "一般"
