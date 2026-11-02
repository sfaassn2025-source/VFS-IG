Instance: vfs-search-revocation-provenance-example
InstanceOf: ProvenanceVFSRevocation
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>脆家撤尋紀錄範例</b></h3>
  <p><b>撤尋案件</b>：<a href="EpisodeOfCare-vfs-episode-of-care-example.html">EpisodeOfCare/vfs-episode-of-care-example</a></p>
  <p><b>撤尋時間</b>：2026-10-25T14:30:00+08:00</p>
  <p><b>系統記錄時間</b>：2026-10-25T14:35:00+08:00</p>
  <p><b>異動活動</b>：更新 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v3-DataOperation">DataOperation</a>#UPDATE）</span></p>
  <p><b>撤尋人員</b>：<a href="Practitioner-vfs-social-worker-example.html">Practitioner/vfs-social-worker-example</a></p>
</div>
"""
* target[0] = Reference(vfs-episode-of-care-example)
* occurredDateTime = "2026-10-25T14:30:00+08:00"
* recorded = "2026-10-25T14:35:00+08:00"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#UPDATE "update"
* agent[0].who = Reference(vfs-social-worker-example)
