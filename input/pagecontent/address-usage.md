### 地址使用說明

脆家案件交換以 `Patient.address` 或 `RelatedPerson.address` 的獨立 Address 項目記錄戶籍、居住、通訊及公文送達地址。每一筆 Address 使用官方 [`address-classification`](http://hl7.org/fhir/StructureDefinition/address-classification) Extension 的分類代碼，並對應至 Profile 的具名 Address slice。完整地址文字填於 `Address.text`；來源具備結構化內容時，仍依 TWSS Base IG 的 Address 規則填寫縣市、鄉鎮市區、村里、路段號及郵遞區號。

| 業務欄位 | FHIR 表達 | 判讀原則 |
| --- | --- | --- |
| 戶籍地址 | `address[registered].text` | 使用脆家地址分類代碼 `registered`，表示依法登記的戶籍所在地。FHIR R4 原生欄位沒有戶籍地址語意；不可使用 `old`，因為 `old` 表示該地址已不再使用。 |
| 居住地址 | `address[residence].text` | 使用 HL7 v3 AddressUse `H`（home address）分類，表示目前實際居住、可聯繫或提供服務的地址。 |
| 通訊地址 | `address[correspondence].text` | 使用 HL7 v3 AddressUse `PST`（postal address）分類，表示一般聯絡或信件寄送地址。 |
| 公文送達地址 | `address[officialService].text` | 使用脆家地址分類代碼 `official-service`，表示行政公文或正式文書送達地址。不可使用 `Address.use = billing`，因其代表帳單用途地址。 |

同一人可同時有四類地址；即使地址文字相同，也應保留各自的 Address 項目。每一類地址在同一人資料中最多一筆；Profile 仍保留其他未切片 `Address` 的擴充空間。
