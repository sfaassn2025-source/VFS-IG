<div class="bg-success" style="ol { counter-reset: item } li { display: block } li:before { content: counters（item, ">
</div>


### 專案介紹
<div  style="padding-left: 10px;"> 

<p>脆弱家庭個案管理服務實作指引(Vulnerable Families Case Management Service Base IG, VFS IG)採用HL7® FHIR® standard（Fast Healthcare Interoperability Resources）IG建置方法，在FHIR R4.0.1之標準基礎上，繼承<a href="https://build.fhir.org/ig/sfaassn2025-source/base/">臺灣社政領域基礎實作指引（TWSS Base IG）</a>，並透過 TWSS Base IG 延用TW Core IG V 0.3.2 (2024-12-12)的共通交換規則；本指引再進一步定義適用於「脆弱家庭個案管理服務實作指引(以下簡稱本專案)」資料需求的Resources（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..*、1..1或1..*）及資料類型（文字、日期時間、代碼等）等。</p>

</div>

### 專案背景

<div  style="padding-left: 10px;"> 

<p>衛生福利部社會及家庭署配合行政院核定之強化社會安全網計畫，建置脆弱家庭個案管理平台(下稱脆家平台)以收載全國脆弱家庭個案基本資料及服務輸送紀錄，強化服務推動及管理。鑒於脆弱家庭服務涉及多元且複雜議題，期透過跨部會資料交換機制，協助直轄市、縣(市)政府完整掌握服務家庭樣貌，以提供近便、多元的整合性服務。</p>

</div>

### 專案範圍

#### 使用案例(Use Case)
<div  style="padding-left: 10px;"> 
<p>以下資料流向圖主要說明本專案型IG涵蓋的交換情境，並不代表未來僅能依該方式交換；若有其他交換需求，仍可依實際業務需求另行設計。</p>

<h5>傳送需要被安置的個案資訊給全國兒童少年安置及追蹤個案管理系統</h5>
<ol>
	<li>社會福利服務中心社工人員確認服務個案有安置議題，並經團體決策會議決議安置後，於脆家平台頁面點選「開啟安置個案」按鈕，脆家平台將該名主責社工人員之自然人憑證卡號及該個案資料傳送至全國兒童少年安置及追蹤個案管理系統。</li>
	<li>全國兒童少年安置及追蹤個案管理系統將核對系統內是否存有該名主責社工人員自然人憑證卡號，如有，則接收個案基本資料。</li>
</ol>

<div style="justify-content: center;display: flex;"><img class="figure-img img-responsive img-rounded center-block" src="usecase-settle.png" alt="脆弱家庭個案管理平台與安置系統使用情境圖" style="width: 100%; max-width: 613px; height: auto;" /></div>
<div style="clear:both;"></div>

<h5>傳送行方不明的個案資訊給未滿2歲兒童育兒津貼資訊系統</h5>
<ol>
	<li>由脆家平台將行方不明個案資訊(含撤尋)傳送至未滿2歲兒童育兒津貼資訊系統。</li>
	<li>經未滿2歲兒童育兒津貼資訊系統查調後，由未滿2歲兒童育兒津貼資訊系統停止發放脆家平台行方不明個案已申請的育兒津貼，並重新發放撤尋的行方不明個案申請之育兒津貼。</li>
	<li>未滿2歲兒童育兒津貼資訊系統將定期回饋行方不明的兒童或其兄弟姐妹已申請育兒津貼的申請資料予脆家平台。</li>
</ol>

<div style="justify-content: center;display: flex;"><img class="figure-img img-responsive img-rounded center-block" src="usecase-cra.png" alt="脆弱家庭個案管理平台與育兒津貼系統使用情境圖" style="width: 100%; max-width: 618px; height: auto;" /></div>
<div style="clear:both;"></div>
</div>

#### 循序圖

<div  style="padding-left: 10px;"> 
<h5>傳送需要被安置的個案資訊給全國兒童少年安置及追蹤個案管理系統</h5>
<ol>
	<li>脆家平台傳送主責社工人員之自然人憑證卡號及該個案資料至全國兒童少年安置及追蹤個案管理系統。</li>
	<li>若傳送成功，全國兒童少年安置及追蹤個案管理系統回傳傳送成功訊息。</li>
	<li>若傳送失敗，全國兒童少年安置及追蹤個案管理系統回傳傳送失敗訊息。</li>
</ol>

<div style="justify-content: center;display: flex;"><img class="figure-img img-responsive img-rounded center-block" src="sequence-settle.png" alt="脆弱家庭個案管理平台與安置系統循序圖" style="width: 100%; max-width: 477px; height: auto;" /></div>
<div style="clear:both;"></div>

<h5>傳送行方不明的個案資訊給未滿2歲兒童育兒津貼資訊系統</h5>
<ol>
	<li>脆家平台傳送行方不明個案資訊(含撤尋)至未滿2歲兒童育兒津貼資訊系統。</li>
	<li>若傳送成功，未滿2歲兒童育兒津貼資訊系統回傳傳送成功訊息；若傳送失敗，回傳傳送失敗訊息。</li>
	<li>未滿2歲兒童育兒津貼資訊系統定期回饋行方不明的兒童或其兄弟姐妹已申請育兒津貼的申請資料。</li>
	<li>若取得成功，脆家平台回傳傳送成功訊息；若取得失敗，回傳傳送失敗訊息。</li>
</ol>

<div style="justify-content: center;display: flex;"><img class="figure-img img-responsive img-rounded center-block" src="sequence-cra.png" alt="脆弱家庭個案管理平台與育兒津貼系統循序圖" style="width: 100%; max-width: 386px; height: auto;" /></div>
<div style="clear:both;"></div>
</div>

#### 系統間 FHIR 資料交換方向
<div style="padding-left: 10px;">
<p>以下說明各系統間使用 FHIR 進行資料交換的方向。</p>

<div class="panel panel-default">
  <div class="panel-heading"><strong>安置案件交換</strong></div>
  <div class="panel-body">
    <div class="row" style="display: flex; align-items: center;">
      <div class="col-sm-5 text-center"><strong>全國兒童少年安置及追蹤個案管理系統</strong><br/><span class="label label-info">FHIR Client</span></div>
      <div class="col-sm-2 text-center" style="font-size: 18px;"><code>GET</code> &rarr;</div>
      <div class="col-sm-5 text-center"><strong>脆弱家庭個案資料提供端</strong><br/><span class="label label-success">FHIR API</span></div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading"><strong>行方不明案件資料提供</strong></div>
  <div class="panel-body">
    <div class="row" style="display: flex; align-items: center;">
      <div class="col-sm-5 text-center"><strong>未滿兩歲兒童育兒津貼資訊系統</strong><br/><span class="label label-info">FHIR Client</span></div>
      <div class="col-sm-2 text-center" style="font-size: 18px;"><code>GET</code> &rarr;</div>
      <div class="col-sm-5 text-center"><strong>脆弱家庭個案資料提供端</strong><br/><span class="label label-success">FHIR API</span></div>
    </div>
  </div>
</div>

<div class="panel panel-default">
  <div class="panel-heading"><strong>育兒津貼申請資料回饋</strong></div>
  <div class="panel-body">
    <div class="row" style="display: flex; align-items: center;">
      <div class="col-sm-5 text-center"><strong>脆弱家庭個案管理平台</strong><br/><span class="label label-info">FHIR Client</span></div>
      <div class="col-sm-2 text-center" style="font-size: 18px;"><code>GET</code> &rarr;</div>
      <div class="col-sm-5 text-center"><strong>未滿兩歲兒童育兒津貼資料提供端</strong><br/><span class="label label-success">FHIR API</span></div>
    </div>
  </div>
</div>
</div>

<p>行方不明案件資料提供與育兒津貼申請資料回饋為獨立的資料交換情境；圖中的 <code>GET</code> 僅表示資料取得方向。</p>



### 如何閱讀這個實作指引(IG)
<div  style="padding-left: 10px;"> 
<p>本IG之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
<div style="clear:both;"></div>

<ul>
	<li><strong><a href="index.html">應用說明</a></strong>：本IG介紹及背景說明。</li>
	<li><strong><a href="vision.html">視覺化邏輯模型</a></strong>：本IG邏輯模型架構視覺化圖。</li>
	<li><strong><a href="artifacts.html">規範文件</a></strong>
	<ul>
		<li><strong><a href="capabilitystatements.html">能力聲明</a>
			</strong>：應用本IG於建置業務目的使用的FHIR Server時，該FHIR Server必須及建議應該支援的資料存取功能。
		</li>
		<li><strong><a href="searchparameters.html">查詢參數</a>
			</strong>：本IG使用的FHIR R4原生查詢參數及各 Resource 的查詢說明。
		</li>
		<li><strong><a href="models.html">邏輯模型</a>
			</strong>：本IG的所有邏輯模型(Logical Models)，邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用本IG的哪個Profiles的哪個資料項目(element)。
		</li>
    	<li><strong><a href="profiles-and-extensions.html">FHIR Profiles</a></strong>：
        	<ul>
          		<li>本IG的所有Profiles之定義與範例。</li>
          		<li>各資料項目不同實作強制程度的Terminology。</li>
        	</ul>
      	</li>
		<li><strong><a href="terminologies.html">專門術語</a>
			</strong>：本IG所使用的專門術語，包括代碼系統（Code Systems）及值集（Value Sets）。
		</li>
	</ul>
	</li>
	<li><strong><a href="examples.html">範例</a></strong>：本IG所定義Profiles之範例檔。</li>
	<li><strong><a href="downloads.html">定義與範例檔下載</a></strong>：實作者若不偏好使用FHIR RESTful API驗證資料是否符合Profiles，可直接下載所需的格式驗證檔，包括XML、JSON及Turtle三種格式，亦可於此下載完整範例檔。</li>
	<li><strong><a href="security.html">安全性</a></strong>：主要說明採用本IG網站進行實作時，有關資料存取授權的作法。</li>
	<li><strong><a href="history.html">版本異動</a></strong>：若本IG網站的版本有所異動，皆可透過<a href="history.html">異動說明頁</a>瞭解版本間的異動差異。</li>
</ul>
</div>

### 作者與貢獻者
