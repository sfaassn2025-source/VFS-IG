{% include quickstart-note.md %}

此 Profile 用於記錄脆弱家庭行方不明案件的撤尋活動。`target` 參照撤尋的脆家案件 EpisodeOfCare，`occurredDateTime` 表達撤尋時間，`agent.who` 參照實際執行撤尋的服務提供者。

本 Profile 未繼承 TWSS Base Provenance Profile，原因為本情境必須以服務提供者表達實際撤尋人員，與共通資料建立或修改歷程的參照需求不同。

#### 可能可以支援以下查詢參數：

可參閱 [FHIR R4 Provenance 原生查詢參數](https://hl7.org/fhir/R4/provenance.html#search)。
