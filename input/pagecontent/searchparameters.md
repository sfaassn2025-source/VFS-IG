以下列出本 IG 各 Resource 可能可以（MAY）支援的 FHIR R4 原生查詢參數。

### 對外服務之 API

#### 以 Resource 分類

##### Bundle
詳細定義請參考 [FHIR R4 Bundle 原生查詢參數](https://hl7.org/fhir/R4/bundle.html#search)。
- `_id` (token)
- `identifier` (token)
- `message` (reference)
- `timestamp` (date)
- `type` (token)

##### EpisodeOfCare
詳細定義請參考 [FHIR R4 EpisodeOfCare 原生查詢參數](https://hl7.org/fhir/R4/episodeofcare.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `care-manager` (reference)
- `date` (date)
- `identifier` (token)
- `organization` (reference)
- `patient` (reference)
- `status` (token)
- `type` (token)

##### Organization
詳細定義請參考 [FHIR R4 Organization 原生查詢參數](https://hl7.org/fhir/R4/organization.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `active` (token)
- `address` (string)
- `identifier` (token)
- `name` (string)
- `partof` (reference)
- `phonetic` (string)
- `type` (token)

##### Patient
詳細定義請參考 [FHIR R4 Patient 原生查詢參數](https://hl7.org/fhir/R4/patient.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `active` (token)
- `address` (string)
- `birthdate` (date)
- `family` (string)
- `gender` (token)
- `given` (string)
- `identifier` (token)
- `name` (string)
- `phone` (token)
- `telecom` (token)

##### Practitioner
詳細定義請參考 [FHIR R4 Practitioner 原生查詢參數](https://hl7.org/fhir/R4/practitioner.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `active` (token)
- `address` (string)
- `identifier` (token)
- `name` (string)
- `phonetic` (string)
- `telecom` (token)

##### Provenance
詳細定義請參考 [FHIR R4 Provenance 原生查詢參數](https://hl7.org/fhir/R4/provenance.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `agent` (reference)
- `agent-role` (token)
- `entity` (reference)
- `patient` (reference)
- `recorded` (date)
- `target` (reference)
- `when` (date)

##### RelatedPerson
詳細定義請參考 [FHIR R4 RelatedPerson 原生查詢參數](https://hl7.org/fhir/R4/relatedperson.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `active` (token)
- `address` (string)
- `birthdate` (date)
- `identifier` (token)
- `name` (string)
- `patient` (reference)
- `phone` (token)
- `relationship` (token)
- `telecom` (token)

##### ServiceRequest
詳細定義請參考 [FHIR R4 ServiceRequest 原生查詢參數](https://hl7.org/fhir/R4/servicerequest.html#search)。
- `_id` (token)
- `_lastUpdated` (date)
- `authored` (date)
- `category` (token)
- `code` (token)
- `identifier` (token)
- `occurrence` (date)
- `patient` (reference)
- `performer` (reference)
- `requester` (reference)
- `status` (token)
- `subject` (reference)
