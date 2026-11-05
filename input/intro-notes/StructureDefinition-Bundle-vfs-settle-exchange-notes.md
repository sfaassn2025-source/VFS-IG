{% include quickstart-note.md %}

此 Profile 用於脆弱家庭個案管理平台傳送安置案件申請時的交換資料包，固定使用 `Bundle.type = collection`。資料包包含待安置個案、相關關係人、提出申請的主責服務提供者，以及安置案件申請。

Bundle 僅作為交換封裝；安置案件申請本體以 `ServiceRequest` 表達，並由其 `subject` 與 `requester` 分別參照待安置個案及提出申請的主責服務提供者。

#### 可能可以支援以下查詢參數：

可參閱 [FHIR R4 Bundle 原生查詢參數](https://hl7.org/fhir/R4/bundle.html#search)。
