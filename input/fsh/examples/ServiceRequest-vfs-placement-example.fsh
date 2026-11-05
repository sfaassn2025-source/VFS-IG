Instance: vfs-placement-request-example
InstanceOf: ServiceRequestVFSPlacement
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>脆弱家庭安置案件申請範例</b></h3>
  <p><b>服務請求分類</b>：兒少安置及教養服務 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="https://build.fhir.org/ig/sfaassn2025-source/base/CodeSystem-twss-episode-of-care-type.html">TWSS 案件服務類型</a>#child-placement）</span></p>
  <p><b>申請項目</b>：兒少安置及教養服務 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（<a href="https://build.fhir.org/ig/sfaassn2025-source/base/CodeSystem-twss-episode-of-care-type.html">TWSS 案件服務類型</a>#child-placement）</span></p>
  <p><b>待安置個案</b>：<a href="Patient-vfs-case-patient-example.html">Patient/vfs-case-patient-example</a></p>
  <p><b>主責社工</b>：<a href="Practitioner-vfs-social-worker-example.html">Practitioner/vfs-social-worker-example</a></p>
</div>
"""
* status = #active
* intent = #order
* category = TWSSEpisodeOfCareType#child-placement "兒少安置及教養服務"
* code = TWSSEpisodeOfCareType#child-placement "兒少安置及教養服務"
* subject = Reference(vfs-case-patient-example)
* requester = Reference(vfs-social-worker-example)
