Instance: vfs-social-worker-example
InstanceOf: PractitionerVFSCaseExchange
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>脆家服務提供者範例</b></h3>
  <p><b>啟用狀態</b>：true</p>
  <blockquote>
    <p><b>識別碼型別</b>：Citizen Digital Certificate <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#U）</span><br/><b>自然人憑證卡號（official）</b>：SOCIAL-WORKER-001 （https://moica.nat.gov.tw）</p>
  </blockquote>
  <p><b>姓名</b>：林社工</p>
  <p><b>聯絡電話</b>：0226531027（phone）</p>
</div>
"""
* active = true
* identifier[citizenDigitalCertificate].use = #official
* identifier[citizenDigitalCertificate].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[citizenDigitalCertificate].type.coding.code = #U
* identifier[citizenDigitalCertificate].system = "https://moica.nat.gov.tw"
* identifier[citizenDigitalCertificate].value = "SOCIAL-WORKER-001"
* name.text = "陳社工"
* telecom[0].system = #phone
* telecom[0].value = "0226531027"
