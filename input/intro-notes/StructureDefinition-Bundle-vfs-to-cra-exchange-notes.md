{% include quickstart-note.md %}

此 Profile 用於脆弱家庭個案管理平台傳送行方不明案件資訊至未滿兩歲兒童育兒津貼資訊系統時的交換資料包，固定使用 `Bundle.type = collection`。資料包包含個案、父母關係人、主責服務提供者、主責單位、個案通報及行方不明案件期間；撤尋時可另附撤尋紀錄。

行方不明案件本體以 `EpisodeOfCare` 表達，個案通報以 `ServiceRequest` 表達，並透過官方 `workflow-episodeOfCare` Extension 關聯至該案件。

#### 可能可以支援以下查詢參數：

可參閱 [FHIR R4 Bundle 原生查詢參數](https://hl7.org/fhir/R4/bundle.html#search)。
