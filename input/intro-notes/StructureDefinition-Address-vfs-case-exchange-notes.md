{% include quickstart-note.md %}

此 Profile 為脆弱家庭個案管理平台交換使用的共用地址資料型別，沿用 TWSS Base Address 的結構化地址規則。每一筆地址以官方 `address-classification` Extension 的分類代碼識別其業務用途。

居住地址使用 HL7 v3 AddressUse `H`（home address），通訊地址使用 `PST`（postal address）；戶籍地址與公文送達地址則使用脆家 IG 定義的分類代碼。個案與關係人的地址分別依居住、通訊、戶籍及公文送達地址 Profile slice 表達。

#### 可能可以支援以下查詢參數：

Address 為資料型別，不支援獨立 RESTful 查詢；請依所屬 Resource 的查詢參數取得地址資料。
