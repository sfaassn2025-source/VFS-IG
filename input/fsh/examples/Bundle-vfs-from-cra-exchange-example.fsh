Instance: vfs-from-cra-exchange-bundle-example
InstanceOf: BundleVFSFromCRAExchange
Usage: #example
* type = #collection
* timestamp = "2026-10-20T09:30:00+08:00"
* entry[patient].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/Patient/vfs-case-patient-example"
* entry[patient].resource = vfs-case-patient-example
* entry[applicant][0].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/RelatedPerson/vfs-father-example"
* entry[applicant][0].resource = vfs-father-example
* entry[applicant][1].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/RelatedPerson/vfs-mother-example"
* entry[applicant][1].resource = vfs-mother-example

Instance: vfs-to-cra-exchange-bundle-example
InstanceOf: BundleVFSToCRAExchange
Usage: #example
* type = #collection
* timestamp = "2026-10-20T09:30:00+08:00"
* entry[patient].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/Patient/vfs-case-patient-example"
* entry[patient].resource = vfs-case-patient-example
* entry[relatedPerson][0].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/RelatedPerson/vfs-father-example"
* entry[relatedPerson][0].resource = vfs-father-example
* entry[relatedPerson][1].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/RelatedPerson/vfs-mother-example"
* entry[relatedPerson][1].resource = vfs-mother-example
* entry[practitioner].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/Practitioner/vfs-social-worker-example"
* entry[practitioner].resource = vfs-social-worker-example
* entry[organization].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/Organization/vfs-responsible-organization-example"
* entry[organization].resource = vfs-responsible-organization-example
* entry[caseReport].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/ServiceRequest/vfs-case-report-example"
* entry[caseReport].resource = vfs-case-report-example
* entry[episodeOfCare].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/EpisodeOfCare/vfs-episode-of-care-example"
* entry[episodeOfCare].resource = vfs-episode-of-care-example
* entry[searchRevocationProvenance].fullUrl = "https://twssbase.sfaa.gov.tw/ig/vfs/Provenance/vfs-search-revocation-provenance-example"
* entry[searchRevocationProvenance].resource = vfs-search-revocation-provenance-example

