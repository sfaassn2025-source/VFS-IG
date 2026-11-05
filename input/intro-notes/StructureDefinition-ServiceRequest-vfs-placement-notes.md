{% include quickstart-note.md %}

此 Profile 用於脆弱家庭個案管理平台經團體決策會議決議安置後，向全國兒童少年安置及追蹤個案管理系統提出開啟安置案件申請。`subject` 參照待安置個案，`requester` 參照提出申請的主責社工；交換內容包含受理機構時，`performer` 可參照該機構。

本 Profile 不使用 `EpisodeOfCare.referralRequest`。該元素用於既有案件的轉介請求；本情境由本筆 `ServiceRequest` 表達安置系統開啟案件的請求。

#### 可能可以支援以下查詢參數：

可參閱 [FHIR R4 ServiceRequest 原生查詢參數](https://hl7.org/fhir/R4/servicerequest.html#search)。
