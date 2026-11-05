{% include quickstart-note.md %}

此 Profile 用於未滿兩歲兒童育兒津貼資訊系統回饋脆弱家庭個案管理平台時的交換資料包，固定使用 `Bundle.type = collection`。資料包包含兒童個案及至多兩名申請人。

每筆 `applicant` entry 均以 `RelatedPerson` 表達該次育兒津貼資料回饋中的申請人；以 `RelatedPerson.patient` 參照兒童，並以 `RelatedPerson.relationship` 表達申請人與兒童的關係。

#### 可能可以支援以下查詢參數：

可參閱 [FHIR R4 Bundle 原生查詢參數](https://hl7.org/fhir/R4/bundle.html#search)。
