-- 1. CustomVRF_CRM_MNFreedomClubStatewideTargets_20181026.csv
CREATE TABLE SS_MAJORITY_STRAT.CUSTOMVRF_CRM_MNFREEDOMCLUBSTATEWIDETARGETS_20181026
(Address1 VARCHAR(256),
Address2 VARCHAR(256),
City VARCHAR(64),
State VARCHAR(2),
Zip5 VARCHAR(5));

COPY INTO SS_MAJORITY_STRAT.CUSTOMVRF_CRM_MNFREEDOMCLUBSTATEWIDETARGETS_20181026
FROM '@"PROD_DS_01"."PUBLIC"."DATA_OPS"/user/adops/3rdparty/majority_strategies/custom_crm_vrf/CustomVRF_CRM_MNFreedomClubStatewideTargets_20181026.csv'
file_format=(type = csv field_delimiter = ',' field_optionally_enclosed_by='"' skip_header = 1 null_if = ('NULL', 'null', '') 
empty_field_as_null = true trim_space = true ENCODING='ISO-8859-1' COMPRESSION = NONE) ON_ERROR = 'CONTINUE' ;
