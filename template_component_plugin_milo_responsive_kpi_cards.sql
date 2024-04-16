prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>69460117670416523381
,p_default_application_id=>183346
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SHESQ'
);
end;
/
 
prompt APPLICATION 183346 - SI Contractor Reporting - SHESQ
--
-- Application Export:
--   Application:     183346
--   Name:            SI Contractor Reporting - SHESQ
--   Date and Time:   09:06 Tuesday April 16, 2024
--   Exported By:     STEVE.MILES@NATIONALGRID.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 93478315641431025577
--   Manifest End
--   Version:         23.2.4
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/milo_responsive_kpi_cards
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(93478315641431025577)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'MILO.RESPONSIVE_KPI_CARDS'
,p_display_name=>'Responsive KPI Cards'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_css_file_urls=>'#PLUGIN_FILES#kpi-card#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div></div>',
'{else/}',
'  <div class="kpi-card" style="background:#BG_COLOR!STRIPHTML#; color:#FG_COLOR!STRIPHTML#">',
'    <span class="kpi-card-value">#CARD_VALUE!STRIPHTML#</span>',
'    <span class="kpi-card-text">#CARD_TEXT!STRIPHTML#</span>',
'    <span class="kpi-card-status">{if STATUS_TEXT%assigned/}<i class="fa #STATUS_ICON!STRIPHTML#" style="color:#STATUS_ICON_COLOR!STRIPHTML#;"></i>&nbsp;#STATUS_TEXT!STRIPHTML#{else/}&nbsp;{endif/}</span>',
'     <i class="fa #CARD_ICON!STRIPHTML# kpi-card-icon"></i>',
'  </div>',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>'<div class="kpi-card-col">#APEX$ROWS#</div>'
,p_report_row_template=>'<div class="kpi-card-row" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</div>'
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Creates simple KPI cards in a grid format'
,p_version_identifier=>'1.0'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  ''MediumSlateBlue'' AS BG_COLOR',
'    ,   ''White'' AS FG_COLOR',
'    ,   ''fa-shopping-cart'' AS CARD_ICON',
unistr('    ,   ''\00A31234'' AS CARD_VALUE'),
'    ,   ''Sales'' AS CARD_TEXT',
'    ,   ''MediumSeaGreen'' AS STATUS_ICON_COLOR',
'    ,   ''fa-arrow-up-alt'' AS STATUS_ICON',
'    ,   ''23%'' AS STATUS_TEXT',
'from dual',
'union all ',
'Select  ''#495057'' AS BG_COLOR',
'    ,   ''#efefef'' AS FG_COLOR',
'    ,   ''fa-shopping-cart'' AS CARD_ICON',
unistr('    ,   ''\00A31238'' AS CARD_VALUE'),
'    ,   ''Sales'' AS CARD_TEXT',
'    ,   ''Gray'' AS STATUS_ICON_COLOR',
'    ,   ''fa-arrow-up-alt'' AS STATUS_ICON',
'    ,   ''1%'' AS STATUS_TEXT',
'from dual',
'union all ',
'Select  ''linear-gradient(180deg, rgba(207,82,82,1) 0%, rgba(121,9,9,1) 80%)'' AS BG_COLOR',
'    ,   ''#fff'' AS FG_COLOR',
'    ,   ''fa-shopping-cart'' AS CARD_ICON',
unistr('    ,   ''\00A3765'' AS CARD_VALUE'),
'    ,   ''Sales'' AS CARD_TEXT',
'    ,   ''red'' AS STATUS_ICON_COLOR',
'    ,   ''fa-arrow-down-alt'' AS STATUS_ICON',
'    ,   ''23%'' AS STATUS_TEXT',
'from dual',
'union all ',
'Select  ''#ffc241'' AS BG_COLOR',
'    ,   ''#fff'' AS FG_COLOR',
'    ,   ''fa-shopping-cart'' AS CARD_ICON',
unistr('    ,   ''\00A31200'' AS CARD_VALUE'),
'    ,   ''Sales'' AS CARD_TEXT',
'    ,   ''White'' AS STATUS_ICON_COLOR',
'    ,   ''fa-arrows-h'' AS STATUS_ICON',
'    ,   ''-2%'' AS STATUS_TEXT',
'from dual'))
,p_files_version=>25
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(93478315914698025594)
,p_plugin_id=>wwv_flow_imp.id(93478315641431025577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'BG_COLOR'
,p_prompt=>'Background Color'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_default_value=>'MediumSlateBlue'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(93478316329371025595)
,p_plugin_id=>wwv_flow_imp.id(93478315641431025577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'FG_COLOR'
,p_prompt=>'Foreground Color'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_default_value=>'White'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(93485320408796610637)
,p_plugin_id=>wwv_flow_imp.id(93478315641431025577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'CARD_ICON'
,p_prompt=>'Card Icon'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_default_value=>'fa-shopping-cart'
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(93485320897659610638)
,p_plugin_id=>wwv_flow_imp.id(93478315641431025577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'CARD_VALUE'
,p_prompt=>'Card Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(93485321251621610638)
,p_plugin_id=>wwv_flow_imp.id(93478315641431025577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>70
,p_static_id=>'STATUS_ICON_COLOR'
,p_prompt=>'Status Icon Color'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(93484707879720102959)
,p_plugin_id=>wwv_flow_imp.id(93478315641431025577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'STATUS_ICON'
,p_prompt=>'Status Icon'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(93486850286339635602)
,p_plugin_id=>wwv_flow_imp.id(93478315641431025577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>80
,p_static_id=>'STATUS_TEXT'
,p_prompt=>'Status Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(93490747918822678469)
,p_plugin_id=>wwv_flow_imp.id(93478315641431025577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>50
,p_static_id=>'CARD_TEXT'
,p_prompt=>'Card Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E6B70692D636172642D636F6C207B0D0A2020646973706C61793A20677269643B0D0A2020677269642D74656D706C6174652D636F6C756D6E733A203166723B0D0A2020706C6163652D6974656D733A2063656E7465723B0D0A7D0D0A0D0A2E6B70692D';
wwv_flow_imp.g_varchar2_table(2) := '636172642D726F77207B0D0A2020646973706C61793A20626C6F636B3B20200D0A7D0D0A0D0A406D656469610D0A20286D696E2D77696474683A2031323030707829207B0D0A202020202E6B70692D636172642D636F6C207B0D0A202020202020202067';
wwv_flow_imp.g_varchar2_table(3) := '7269642D74656D706C6174652D636F6C756D6E733A203166722031667220316672203166723B0D0A202020207D0D0A7D0D0A0D0A406D656469610D0A20286D696E2D77696474683A2036353070782920616E6420286D61782D77696474683A2031313939';
wwv_flow_imp.g_varchar2_table(4) := '707829207B0D0A202020202E6B70692D636172642D636F6C207B0D0A2020202020202020677269642D74656D706C6174652D636F6C756D6E733A20316672203166723B0D0A202020207D0D0A7D0D0A0D0A2E6B70692D636172640D0A7B0D0A20206F7665';
wwv_flow_imp.g_varchar2_table(5) := '72666C6F773A2068696464656E3B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020626F782D736861646F773A203170782031707820337078207267626128302C302C302C302E3735293B3B0D0A202070616464696E673A2031656D3B';
wwv_flow_imp.g_varchar2_table(6) := '0D0A2020626F726465722D7261646975733A20302E33656D3B0D0A2020666F6E742D66616D696C793A2073616E732D73657269663B20200D0A202077696474683A2032363070783B0D0A20206D696E2D77696474683A2032363070783B0D0A20206D6172';
wwv_flow_imp.g_varchar2_table(7) := '67696E2D6C6566743A20302E35656D3B0D0A20206D617267696E2D746F703A20302E35656D3B0D0A20206A7573746966792D73656C663A2063656E7465723B0D0A7D0D0A0D0A2E6B70692D636172642D76616C7565207B0D0A2020646973706C61793A20';
wwv_flow_imp.g_varchar2_table(8) := '626C6F636B3B0D0A2020666F6E742D73697A653A20323030253B20200D0A2020666F6E742D7765696768743A20626F6C6465723B0D0A7D0D0A0D0A2E6B70692D636172642D74657874207B0D0A2020646973706C61793A20626C6F636B3B0D0A2020666F';
wwv_flow_imp.g_varchar2_table(9) := '6E742D73697A653A203730253B0D0A202070616464696E672D6C6566743A20302E32656D3B0D0A7D0D0A0D0A2E6B70692D636172642D737461747573207B0D0A2020646973706C61793A20626C6F636B3B0D0A20206D617267696E2D746F703A20302E37';
wwv_flow_imp.g_varchar2_table(10) := '3572656D3B0D0A2020666F6E742D73697A653A203730253B0D0A202070616464696E672D6C6566743A20302E32656D3B0D0A7D0D0A0D0A2E6B70692D636172642D69636F6E207B20200D0A2020666C6F61743A2072696768743B0D0A2020666F6E742D73';
wwv_flow_imp.g_varchar2_table(11) := '697A653A20363630252021696D706F7274616E743B0D0A2020706F736974696F6E3A206162736F6C7574652021696D706F7274616E743B0D0A2020746F703A203072656D3B0D0A202072696768743A202D302E3372656D3B0D0A20206F7061636974793A';
wwv_flow_imp.g_varchar2_table(12) := '202E31363B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(93478849401724541395)
,p_plugin_id=>wwv_flow_imp.id(93478315641431025577)
,p_file_name=>'kpi-card.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E6B70692D636172642D636F6C7B646973706C61793A677269643B677269642D74656D706C6174652D636F6C756D6E733A3166723B706C6163652D6974656D733A63656E7465727D2E6B70692D636172642D726F777B646973706C61793A626C6F636B7D';
wwv_flow_imp.g_varchar2_table(2) := '406D6564696120286D696E2D77696474683A313230307078297B2E6B70692D636172642D636F6C7B677269642D74656D706C6174652D636F6C756D6E733A3166722031667220316672203166727D7D406D6564696120286D696E2D77696474683A363530';
wwv_flow_imp.g_varchar2_table(3) := '70782920616E6420286D61782D77696474683A313139397078297B2E6B70692D636172642D636F6C7B677269642D74656D706C6174652D636F6C756D6E733A316672203166727D7D2E6B70692D636172647B6F766572666C6F773A68696464656E3B706F';
wwv_flow_imp.g_varchar2_table(4) := '736974696F6E3A72656C61746976653B626F782D736861646F773A3170782031707820337078207267626128302C302C302C2E3735293B70616464696E673A31656D3B626F726465722D7261646975733A2E33656D3B666F6E742D66616D696C793A7361';
wwv_flow_imp.g_varchar2_table(5) := '6E732D73657269663B77696474683A32363070783B6D696E2D77696474683A32363070783B6D617267696E2D6C6566743A2E35656D3B6D617267696E2D746F703A2E35656D3B6A7573746966792D73656C663A63656E7465727D2E6B70692D636172642D';
wwv_flow_imp.g_varchar2_table(6) := '76616C75657B646973706C61793A626C6F636B3B666F6E742D73697A653A323030253B666F6E742D7765696768743A626F6C6465727D2E6B70692D636172642D7374617475732C2E6B70692D636172642D746578747B646973706C61793A626C6F636B3B';
wwv_flow_imp.g_varchar2_table(7) := '666F6E742D73697A653A3730253B70616464696E672D6C6566743A2E32656D7D2E6B70692D636172642D7374617475737B6D617267696E2D746F703A2E373572656D7D2E6B70692D636172642D69636F6E7B666C6F61743A72696768743B666F6E742D73';
wwv_flow_imp.g_varchar2_table(8) := '697A653A3636302521696D706F7274616E743B706F736974696F6E3A6162736F6C75746521696D706F7274616E743B746F703A303B72696768743A2D2E3372656D3B6F7061636974793A2E31367D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(93505687395697376268)
,p_plugin_id=>wwv_flow_imp.id(93478315641431025577)
,p_file_name=>'kpi-card.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
