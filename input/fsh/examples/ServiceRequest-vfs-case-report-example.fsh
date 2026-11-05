Instance: vfs-case-report-example
InstanceOf: ServiceRequestVFSCaseReport
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>脆家個案通報範例</b></h3>
  <p><b>通報狀態</b>：啟用中 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-request-status.html">Request Status</a>#active）</span>；<b>通報意圖</b>：Order <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="https://hl7.org/fhir/R4/codesystem-request-intent.html">Request Intent</a>#order）</span></p>
  <p><b>通報個案</b>：<a href="Patient-vfs-case-patient-example.html">Patient/vfs-case-patient-example</a></p>
  <p><b>通報時間</b>：2026-10-20T09:30:00+08:00</p>
</div>
"""
* status = #active
* intent = #order
* subject = Reference(vfs-case-patient-example)
* extension[workflowEpisodeOfCare].valueReference = Reference(vfs-episode-of-care-example)
* authoredOn = "2026-10-20T09:30:00+08:00"
