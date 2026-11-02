{% include quickstart-note.md %}

此 Profile 用於交換個案的父母、申請人或其他關係人資料，並以 `patient` 參照所屬個案。父親與母親可分別以 `relationship` 的 RoleCode `FTH` 與 `MTH` 表達。

關係人編號為 TWSS Base RelatedPerson Profile 的必填技術識別碼；來源系統應提供或建立可穩定重複使用的值。地址以官方 `address-classification` Extension 的分類代碼切分為戶籍、居住、通訊及公文送達地址。

#### 可能可以支援以下查詢參數：

可參閱 [FHIR R4 RelatedPerson 原生查詢參數](https://hl7.org/fhir/R4/relatedperson.html#search)。
