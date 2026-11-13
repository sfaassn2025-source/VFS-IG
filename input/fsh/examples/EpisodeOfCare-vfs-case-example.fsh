Instance: vfs-episode-of-care-example
InstanceOf: EpisodeOfCareVFSCase
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>脆家案件範例</b></h3>
  <p><b>案件狀態</b>：已結束 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-episode-of-care-status.html">EpisodeOfCare Status</a>#finished）</span></p>
  <p><b>案件類型</b>：收養 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://twssbase.sfaa.gov.tw/ig/base/CodeSystem-twss-case-type.html">TWSS 案件類型</a>#A）</span></p>
  <p><b>個案</b>：<a href="Patient-vfs-case-patient-example.html">Patient/vfs-case-patient-example</a></p>
  <p><b>主責單位</b>：<a href="Organization-vfs-responsible-organization-example.html">Organization/vfs-responsible-organization-example</a></p>
  <p><b>個案管理服務提供者</b>：<a href="Practitioner-vfs-social-worker-example.html">Practitioner/vfs-social-worker-example</a></p>
  <p><b>案件期間</b>：2026-10-20T09:30:00+08:00 至 2026-10-25T14:30:00+08:00</p>
</div>
"""
* status = #finished
* type[caseType].coding.system = "https://twssbase.sfaa.gov.tw/ig/base/CodeSystem/twss-case-type"
* type[caseType].coding.code = #A
* patient = Reference(vfs-case-patient-example)
* managingOrganization = Reference(vfs-responsible-organization-example)
* careManager = Reference(vfs-social-worker-example)
* period.start = "2026-10-20T09:30:00+08:00"
* period.end = "2026-10-25T14:30:00+08:00"
