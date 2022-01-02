PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'openmiko','0001_initial','2022-01-02 23:06:20.848983');
INSERT INTO django_migrations VALUES(2,'openmiko','0002_auto_20211130_0053','2022-01-02 23:06:20.902414');
INSERT INTO django_migrations VALUES(3,'openmiko','0003_session_user','2022-01-02 23:06:20.921835');
CREATE TABLE IF NOT EXISTS "openmiko_aestrategy" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
INSERT INTO openmiko_aestrategy VALUES(1,'IMPISP_AE_STRATEGY_SPLIT_BALANCED','normal mode',0);
INSERT INTO openmiko_aestrategy VALUES(2,'IMPISP_AE_STRATEGY_SPLIT_INTEGRATION_PRIORITY','',1);
INSERT INTO openmiko_aestrategy VALUES(3,'IMPISP_AE_STRATEGY_BUTT','',2);
CREATE TABLE IF NOT EXISTS "openmiko_antiflickerattr" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_antifogattr" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_colorfxmode" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
INSERT INTO openmiko_colorfxmode VALUES(1,'IMPISP_COLORFX_MODE_AUTO','auto mode',0);
INSERT INTO openmiko_colorfxmode VALUES(2,'IMPISP_COLORFX_MODE_BW','black and white',1);
INSERT INTO openmiko_colorfxmode VALUES(3,'IMPISP_COLORFX_MODE_SEPIA','sepia',2);
INSERT INTO openmiko_colorfxmode VALUES(4,'IMPISP_COLORFX_MODE_NEGATIVE','negative',3);
INSERT INTO openmiko_colorfxmode VALUES(5,'IMPISP_COLORFX_MODE_VIVID','vivid',9);
CREATE TABLE IF NOT EXISTS "openmiko_coreawbstatsmode" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_coreexposuremode" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_coreexposureunit" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_corewhitebalancemode" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_drcmode" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_meshshadingscale" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_runningmode" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_scenemode" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
INSERT INTO openmiko_scenemode VALUES(1,'IMPISP_SCENE_MODE_AUTO','auto mode',0);
INSERT INTO openmiko_scenemode VALUES(2,'IMPISP_SCENE_MODE_BEACH_SNOW','beach and snow mode',2);
INSERT INTO openmiko_scenemode VALUES(3,'IMPISP_SCENE_MODE_CANDLE_LIGHT','candle light mode',3);
INSERT INTO openmiko_scenemode VALUES(4,'IMPISP_SCENE_MODE_DAWN_DUSK','dawn/dusk mode',4);
INSERT INTO openmiko_scenemode VALUES(5,'IMPISP_SCENE_MODE_FALL_COLORS','fall colors mode',5);
INSERT INTO openmiko_scenemode VALUES(6,'IMPISP_SCENE_MODE_FIREWORKS','fireworks mode',6);
INSERT INTO openmiko_scenemode VALUES(7,'IMPISP_SCENE_MODE_LANDSCAPE','landscape mode',7);
INSERT INTO openmiko_scenemode VALUES(8,'IMPISP_SCENE_MODE_NIGHT','night mode',8);
INSERT INTO openmiko_scenemode VALUES(9,'IMPISP_SCENE_MODE_PARTY_INDOOR','indoor party mode',9);
INSERT INTO openmiko_scenemode VALUES(10,'IMPISP_SCENE_MODE_SPORTS','sports mode',11);
INSERT INTO openmiko_scenemode VALUES(11,'IMPISP_SCENE_MODE_SUNSET','sunset mode',12);
INSERT INTO openmiko_scenemode VALUES(12,'IMPISP_SCENE_MODE_TEXT','text mode',13);
INSERT INTO openmiko_scenemode VALUES(13,'IMPISP_SCENE_MODE_NIGHT_PORTRAIT','night portrait mode',14);
CREATE TABLE IF NOT EXISTS "openmiko_tempermode" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_tuningmode" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_tuningopsmode" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_tuningopstype" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(64) NOT NULL, "description" text NOT NULL, "enum" integer NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_cameraprofile" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "ae_strategy_id" bigint NULL REFERENCES "openmiko_aestrategy" ("id") DEFERRABLE INITIALLY DEFERRED, "anti_flicker_attr_id" bigint NULL REFERENCES "openmiko_antiflickerattr" ("id") DEFERRABLE INITIALLY DEFERRED, "anti_fog_attr_id" bigint NULL REFERENCES "openmiko_antifogattr" ("id") DEFERRABLE INITIALLY DEFERRED, "color_fx_mode_id" bigint NULL REFERENCES "openmiko_colorfxmode" ("id") DEFERRABLE INITIALLY DEFERRED, "core_awb_stats_mode_id" bigint NULL REFERENCES "openmiko_coreawbstatsmode" ("id") DEFERRABLE INITIALLY DEFERRED, "core_exposure_mode_id" bigint NULL REFERENCES "openmiko_coreexposuremode" ("id") DEFERRABLE INITIALLY DEFERRED, "core_exposure_unit_id" bigint NULL REFERENCES "openmiko_coreexposureunit" ("id") DEFERRABLE INITIALLY DEFERRED, "core_white_balance_mode_id" bigint NULL REFERENCES "openmiko_corewhitebalancemode" ("id") DEFERRABLE INITIALLY DEFERRED, "drc_mode_id" bigint NULL REFERENCES "openmiko_drcmode" ("id") DEFERRABLE INITIALLY DEFERRED, "mesh_shading_scale_id" bigint NULL REFERENCES "openmiko_meshshadingscale" ("id") DEFERRABLE INITIALLY DEFERRED, "running_mode_id" bigint NULL REFERENCES "openmiko_runningmode" ("id") DEFERRABLE INITIALLY DEFERRED, "scene_mode_id" bigint NULL REFERENCES "openmiko_scenemode" ("id") DEFERRABLE INITIALLY DEFERRED, "temper_mode_id" bigint NULL REFERENCES "openmiko_tempermode" ("id") DEFERRABLE INITIALLY DEFERRED, "tuning_mode_id" bigint NULL REFERENCES "openmiko_tuningmode" ("id") DEFERRABLE INITIALLY DEFERRED, "tuning_ops_mode_id" bigint NULL REFERENCES "openmiko_tuningopsmode" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO openmiko_cameraprofile VALUES(1,1,NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL);
CREATE TABLE IF NOT EXISTS "openmiko_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "email" varchar(256) NOT NULL, "password" varchar(256) NOT NULL);
CREATE TABLE IF NOT EXISTS "openmiko_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL, "user_id" bigint NOT NULL REFERENCES "openmiko_user" ("id") DEFERRABLE INITIALLY DEFERRED);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',3);
INSERT INTO sqlite_sequence VALUES('openmiko_aestrategy',3);
INSERT INTO sqlite_sequence VALUES('openmiko_scenemode',13);
INSERT INTO sqlite_sequence VALUES('openmiko_colorfxmode',5);
INSERT INTO sqlite_sequence VALUES('openmiko_cameraprofile',1);
CREATE INDEX "openmiko_cameraprofile_ae_strategy_id_5d3020d3" ON "openmiko_cameraprofile" ("ae_strategy_id");
CREATE INDEX "openmiko_cameraprofile_anti_flicker_attr_id_d24d067d" ON "openmiko_cameraprofile" ("anti_flicker_attr_id");
CREATE INDEX "openmiko_cameraprofile_anti_fog_attr_id_fe779ee1" ON "openmiko_cameraprofile" ("anti_fog_attr_id");
CREATE INDEX "openmiko_cameraprofile_color_fx_mode_id_c8875a91" ON "openmiko_cameraprofile" ("color_fx_mode_id");
CREATE INDEX "openmiko_cameraprofile_core_awb_stats_mode_id_65b70166" ON "openmiko_cameraprofile" ("core_awb_stats_mode_id");
CREATE INDEX "openmiko_cameraprofile_core_exposure_mode_id_de98e267" ON "openmiko_cameraprofile" ("core_exposure_mode_id");
CREATE INDEX "openmiko_cameraprofile_core_exposure_unit_id_a0f60ed3" ON "openmiko_cameraprofile" ("core_exposure_unit_id");
CREATE INDEX "openmiko_cameraprofile_core_white_balance_mode_id_d70584a2" ON "openmiko_cameraprofile" ("core_white_balance_mode_id");
CREATE INDEX "openmiko_cameraprofile_drc_mode_id_317f69ab" ON "openmiko_cameraprofile" ("drc_mode_id");
CREATE INDEX "openmiko_cameraprofile_mesh_shading_scale_id_768c9eb5" ON "openmiko_cameraprofile" ("mesh_shading_scale_id");
CREATE INDEX "openmiko_cameraprofile_running_mode_id_bb343425" ON "openmiko_cameraprofile" ("running_mode_id");
CREATE INDEX "openmiko_cameraprofile_scene_mode_id_36a079de" ON "openmiko_cameraprofile" ("scene_mode_id");
CREATE INDEX "openmiko_cameraprofile_temper_mode_id_6bef68f4" ON "openmiko_cameraprofile" ("temper_mode_id");
CREATE INDEX "openmiko_cameraprofile_tuning_mode_id_e9bc3df5" ON "openmiko_cameraprofile" ("tuning_mode_id");
CREATE INDEX "openmiko_cameraprofile_tuning_ops_mode_id_22317ecd" ON "openmiko_cameraprofile" ("tuning_ops_mode_id");
CREATE INDEX "openmiko_session_expire_date_754bee5a" ON "openmiko_session" ("expire_date");
CREATE INDEX "openmiko_session_user_id_44b081b4" ON "openmiko_session" ("user_id");
COMMIT;
