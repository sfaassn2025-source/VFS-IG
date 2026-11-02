{% include quickstart-note.md %}

此 Profile 用於表達脆弱家庭或行方不明案件由主責單位承擔責任的案件期間。`patient`、`managingOrganization` 與 `careManager` 分別參照脆家個案、主責單位及主責服務提供者。

撤尋結案時，將 `status` 設為 `finished`，並以 `period.end` 記錄撤尋時間；實際執行撤尋的人員及紀錄時間另以脆家撤尋紀錄 Provenance 表達。

#### 可能可以支援以下查詢參數：

可參閱 [FHIR R4 EpisodeOfCare 原生查詢參數](https://hl7.org/fhir/R4/episodeofcare.html#search)。
