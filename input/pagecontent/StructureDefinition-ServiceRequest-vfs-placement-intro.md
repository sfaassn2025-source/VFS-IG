脆弱家庭個案管理平台經團體決策會議決議安置後，向全國兒童少年安置及追蹤個案管理系統提出開啟安置案件請求時使用的 Profile。

- `ServiceRequest.subject`：待安置個案。
- `ServiceRequest.requester`：提出安置案件申請的主責社工。
- `ServiceRequest.performer`：如交換內容包含受理機構，可參照受理安置案件申請的機構；未交換時，由受理端 API 或 Endpoint 設定識別。

本 Profile 不使用 `EpisodeOfCare.referralRequest`。該元素用於既有案件的轉介請求；本情境是安置系統接收開啟安置案件的請求，故以此 ServiceRequest 作為交換主體。
