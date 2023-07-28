CREATE TABLE "RULES"(
                        "UUID" CHARACTER VARYING(40) NOT NULL,
                        "NAME" CHARACTER VARYING(200),
                        "PLUGIN_RULE_KEY" CHARACTER VARYING(200) NOT NULL,
                        "PLUGIN_KEY" CHARACTER VARYING(200),
                        "PLUGIN_CONFIG_KEY" CHARACTER VARYING(200),
                        "PLUGIN_NAME" CHARACTER VARYING(255) NOT NULL,
                        "SCOPE" CHARACTER VARYING(20) NOT NULL,
                        "PRIORITY" INTEGER,
                        "STATUS" CHARACTER VARYING(40),
                        "LANGUAGE" CHARACTER VARYING(20),
                        "DEF_REMEDIATION_FUNCTION" CHARACTER VARYING(20),
                        "DEF_REMEDIATION_GAP_MULT" CHARACTER VARYING(20),
                        "DEF_REMEDIATION_BASE_EFFORT" CHARACTER VARYING(20),
                        "GAP_DESCRIPTION" CHARACTER VARYING(4000),
                        "SYSTEM_TAGS" CHARACTER VARYING(4000),
                        "IS_TEMPLATE" BOOLEAN DEFAULT FALSE NOT NULL,
                        "DESCRIPTION_FORMAT" CHARACTER VARYING(20),
                        "RULE_TYPE" TINYINT,
                        "SECURITY_STANDARDS" CHARACTER VARYING(4000),
                        "IS_AD_HOC" BOOLEAN NOT NULL,
                        "IS_EXTERNAL" BOOLEAN NOT NULL,
                        "CREATED_AT" BIGINT,
                        "UPDATED_AT" BIGINT,
                        "TEMPLATE_UUID" CHARACTER VARYING(40),
                        "NOTE_DATA" CHARACTER LARGE OBJECT,
                        "NOTE_USER_UUID" CHARACTER VARYING(255),
                        "NOTE_CREATED_AT" BIGINT,
                        "NOTE_UPDATED_AT" BIGINT,
                        "REMEDIATION_FUNCTION" CHARACTER VARYING(20),
                        "REMEDIATION_GAP_MULT" CHARACTER VARYING(20),
                        "REMEDIATION_BASE_EFFORT" CHARACTER VARYING(20),
                        "TAGS" CHARACTER VARYING(4000),
                        "AD_HOC_NAME" CHARACTER VARYING(200),
                        "AD_HOC_DESCRIPTION" CHARACTER LARGE OBJECT,
                        "AD_HOC_SEVERITY" CHARACTER VARYING(10),
                        "AD_HOC_TYPE" TINYINT,
                        "EDUCATION_PRINCIPLES" CHARACTER VARYING(255),
                        "CLEAN_CODE_ATTRIBUTE" CHARACTER VARYING(40)
);
ALTER TABLE "RULES" ADD CONSTRAINT "PK_RULES" PRIMARY KEY("UUID");
CREATE UNIQUE INDEX "RULES_REPO_KEY" ON "RULES"("PLUGIN_RULE_KEY" NULLS FIRST, "PLUGIN_NAME" NULLS FIRST);
