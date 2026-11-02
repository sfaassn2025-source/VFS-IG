Instance: vfs-responsible-organization-example
InstanceOf: OrganizationVFSCaseExchange
Usage: #example
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <h3><b>脆家主責單位範例</b></h3>
  <p><b>機構代碼</b>：VFS-001 <span style="background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki">（ <a href="http://terminology.hl7.org/CodeSystem/v2-0203">Identifier Type Codes</a>#PRN）</span>（系統：<code>https://example.org/vfs/organization-code</code>）</p>
  <p><b>啟用狀態</b>：true</p>
  <p><b>機構名稱</b>：衛生福利部社會及家庭署</p>
</div>
"""
* active = true
* identifier[organizationCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[organizationCode].type.coding.code = #PRN
* identifier[organizationCode].system = "https://example.org/vfs/organization-code"
* identifier[organizationCode].value = "VFS-001"
* name = "衛生福利部社會及家庭署"
