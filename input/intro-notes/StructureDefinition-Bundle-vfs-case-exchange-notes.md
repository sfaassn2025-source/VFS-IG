{% include quickstart-note.md %}

此 Profile 用於脆弱家庭或行方不明案件的交換資料包，固定使用 `Bundle.type = collection`，並彙集同一案件所需的個案、關係人、主責服務提供者、主責單位、通報、案件期間及撤尋紀錄。

Bundle 為交換封裝，不代表單一業務事件；各 entry 的 Resource 類型與基數依本 Profile 的 slice 約束填寫。

#### 可能可以支援以下查詢參數：

可參閱 [FHIR R4 Bundle 原生查詢參數](https://hl7.org/fhir/R4/bundle.html#search)。
