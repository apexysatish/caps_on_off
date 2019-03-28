prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.03.31'
,p_release=>'19.1.0.00.13'
,p_default_workspace_id=>8757829710648876008
,p_default_application_id=>12029
,p_default_owner=>'HINDU_BUSSINESS'
);
end;
/
prompt --application/shared_components/plugins/item_type/apex_capson_capsoff_plugins
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(2252321243498685274)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'APEX.CAPSON.CAPSOFF.PLUGINS'
,p_display_name=>'CAPS_ON_OFF'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS:APEX_APPL_PAGE_IG_COLUMNS'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PROCEDURE   RENDER_CAPS_ON_OFF(',
'p_item in apex_plugin.t_item,',
'p_plugin in apex_plugin.t_plugin,',
'p_param in apex_plugin.t_item_render_param,',
'p_result in out nocopy apex_plugin.t_item_render_result',
')',
'AS',
'v_result          apex_plugin.t_page_item_render_result;',
'lv_id varchar2(100) := p_item.attribute_01;',
'lv_item_name varchar2(1000) := apex_plugin.get_input_name_for_page_item(TRUE);',
'l_result           APEX_PLUGIN.T_PAGE_ITEM_RENDER_RESULT;',
'',
'BEGIN',
'apex_css.add_file(p_name=> ''cap_on_off1'',p_directory=> p_plugin.file_prefix);',
'apex_javascript.add_library (p_name => ''cap_on_off'', p_directory => p_plugin.file_prefix, p_version => null, p_check_to_add_minified => TRUE);   ',
'sys.htp.prn(''<input'');',
'sys.htp.prn('' type="text"'');',
'sys.htp.prn('' id="'' || p_item.name || ''"'');',
'sys.htp.prn('' name="'' || p_item.name || ''"'');',
'sys.htp.prn('' class="apex-item-text ''|| p_item.element_css_classes || ''"'');',
'sys.htp.prn(case when p_item.is_required then '' required'' else null end);',
'sys.htp.prn('' size="'' || p_item.element_width || ''"'');',
'sys.htp.prn('' placeholder="'' || p_item.placeholder || ''"'');',
'sys.htp.prn('' value="'');',
'sys.htp.prn(p_param.value);',
'sys.htp.prn(''"'');',
'sys.htp.prn(''/>'');',
'--sys.htp.prn(''br/'');',
'sys.htp.prn(''<span id="error">Caps Lock is ON.</span>''); ',
'    ',
'-- apex_javascript.add_onload_code (p_code => ''isCapslock("''||p_item.name || ''")'');',
'',
'apex_javascript.add_onload_code (',
'    p_code => ''isCapslock(''||',
'                  ''"#''||p_item.name||''",''||',
'                  '');'');',
'',
'',
'END;',
'',
'',
'',
'',
''))
,p_api_version=>2
,p_render_function=>'RENDER_CAPS_ON_OFF'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:ESCAPE_OUTPUT:SOURCE:FORMAT_MASK_NUMBER:ELEMENT:WIDTH:HEIGHT:PLACEHOLDER:ICON'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'18.1'
,p_files_version=>12
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E206973436170736C6F636B28704974656D4E616D65297B0D0A090909090D0A202020766172206973536869667450726573736564203D2066616C73653B0D0A202020202020202020202020766172206973436170734F6E203D206E75';
wwv_flow_api.g_varchar2_table(2) := '6C6C3B0D0A2020202020202020202020202428704974656D4E616D65292E62696E6428226B6579646F776E222C2066756E6374696F6E20286529207B0D0A20202020202020202020202020202020766172206B6579436F6465203D20652E6B6579436F64';
wwv_flow_api.g_varchar2_table(3) := '65203F20652E6B6579436F6465203A20652E77686963683B0D0A20202020202020202020202020202020696620286B6579436F6465203D3D20313629207B0D0A20202020202020202020202020202020202020206973536869667450726573736564203D';
wwv_flow_api.g_varchar2_table(4) := '20747275653B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D293B0D0A2020202020202020202020202428704974656D4E616D65292E62696E6428226B65797570222C2066756E6374696F6E20286529207B0D0A20';
wwv_flow_api.g_varchar2_table(5) := '202020202020202020202020202020766172206B6579436F6465203D20652E6B6579436F6465203F20652E6B6579436F6465203A20652E77686963683B0D0A20202020202020202020202020202020696620286B6579436F6465203D3D20313629207B0D';
wwv_flow_api.g_varchar2_table(6) := '0A20202020202020202020202020202020202020206973536869667450726573736564203D2066616C73653B0D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020696620286B6579436F6465203D3D2032302920';
wwv_flow_api.g_varchar2_table(7) := '7B0D0A2020202020202020202020202020202020202020696620286973436170734F6E203D3D207472756529207B0D0A2020202020202020202020202020202020202020202020206973436170734F6E203D2066616C73653B0D0A090909090909242822';
wwv_flow_api.g_varchar2_table(8) := '236572726F7222292E6869646528293B0D0A20202020202020202020202020202020202020207D20656C736520696620286973436170734F6E203D3D2066616C736529207B0D0A2020202020202020202020202020202020202020202020206973436170';
wwv_flow_api.g_varchar2_table(9) := '734F6E203D20747275653B0D0A09090909090920242822236572726F7222292E73686F7728293B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D293B0D0A';
wwv_flow_api.g_varchar2_table(10) := '2020202020202020202020202428704974656D4E616D65292E62696E6428226B65797072657373222C2066756E6374696F6E20286529207B0D0A20202020202020202020202020202020766172206B6579436F6465203D20652E6B6579436F6465203F20';
wwv_flow_api.g_varchar2_table(11) := '652E6B6579436F6465203A20652E77686963683B0D0A20202020202020202020202020202020696620286B6579436F6465203E3D203635202626206B6579436F6465203C3D2039302026262021697353686966745072657373656429207B0D0A20202020';
wwv_flow_api.g_varchar2_table(12) := '202020202020202020202020202020206973436170734F6E203D20747275653B0D0A090909090920242822236572726F7222292E73686F7728293B0D0A202020202020202020202020202020207D20656C7365207B0D0A09090909090D0A202020202020';
wwv_flow_api.g_varchar2_table(13) := '2020202020202020202020202020242822236572726F7222292E6869646528293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D293B0D0A0D0A7D09090D0A0909';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(2429131496579816186)
,p_plugin_id=>wwv_flow_api.id(2252321243498685274)
,p_file_name=>'cap_on_off.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C7374796C6520747970653D22746578742F637373223E0D0A2020202020202020626F64790D0A20202020202020207B0D0A202020202020202020202020666F6E742D66616D696C793A20417269616C3B0D0A202020202020202020202020666F6E742D';
wwv_flow_api.g_varchar2_table(2) := '73697A653A20313070743B0D0A20202020202020207D0D0A2020202020202020236572726F72207B0D0A0909090909626F726465723A2031707820736F6C696420234634343333363B0D0A09090909096261636B67726F756E642D636F6C6F723A202346';
wwv_flow_api.g_varchar2_table(3) := '34343333363B0D0A0909090909646973706C61793A20696E6C696E652D626C6F636B3B0D0A09090909096D617267696E2D6C6566743A20313070783B0D0A09090909092F2A2070616464696E673A203370783B202A2F0D0A0909090909646973706C6179';
wwv_flow_api.g_varchar2_table(4) := '3A206E6F6E653B0D0A09090909096F726465723A20343B0D0A0909090909636F6C6F723A2077686974653B0D0A7D0D0A202020200D0A202020200D0A202020203C2F7374796C653E';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(2434619362460989243)
,p_plugin_id=>wwv_flow_api.id(2252321243498685274)
,p_file_name=>'cap_on_off1.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
