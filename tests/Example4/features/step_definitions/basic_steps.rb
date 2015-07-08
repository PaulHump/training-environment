Given(/^I have entered a Title Number$/) do
  $structure = getstubjson("DT160760")
end

When(/^the object is returned$/) do
  $structure_hash = JSON.parse($structure)
end

Then(/^I can confirm the data$/) do
  ### LR APPN REF ###
  puts $structure_hash['application_reference'] + ' - application_reference'

  ### Geometry ###
  puts $structure_hash['geometry']['index']['type']
  puts $structure_hash['geometry']['index']['geometry']['type']
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][0][0]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][0][1]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][1][0]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][1][1]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][2][0]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][2][1]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][3][0]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][3][1]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][4][0]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][4][1]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][5][0]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][5][1]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][6][0]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][6][1]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][7][0]
  puts $structure_hash['geometry']['index']['geometry']['coordinates'][0][7][1]
  puts $structure_hash['geometry']['index']['properties']['graphic_type']
  puts $structure_hash['geometry']['index']['properties']['feature_id']
  puts $structure_hash['geometry']['index']['properties']['colour']
  puts $structure_hash['geometry']['index']['properties']['width']
  puts $structure_hash['geometry']['index']['properties']['render_attributes']['border_colour']
  puts $structure_hash['geometry']['index']['properties']['render_attributes']['border_width']
  puts $structure_hash['geometry']['index']['properties']['render_attributes']['exterior_edge_colour']
  puts $structure_hash['geometry']['index']['properties']['render_attributes']['exterior_edge_thickness']
  puts $structure_hash['geometry']['index']['properties']['render_attributes']['fill_colour']
  puts $structure_hash['geometry']['index']['properties']['render_attributes']['fill_style']
  puts $structure_hash['geometry']['index']['properties']['render_attributes']['render_level']
  puts $structure_hash['geometry']['index']['crs']['type']
  puts $structure_hash['geometry']['index']['crs']['properties']['name']

  ### Last Appn Timestamp ###
  puts $structure_hash['last_app_timestamp'] + ' - last_app_timestamp'
  ### Edition Date ###
  puts $structure_hash['edition_date'] + ' - edition_date'
  ### Class of Title ###
  puts $structure_hash['class'] + ' - class'
  ### Tenure of Title ###
  puts $structure_hash['tenure'] + ' - tenure'
  ### Owning DLR ###
  puts $structure_hash['dlr'] + ' - dlr'

  ### Unique Property Reference Number ###
  puts ("#{$structure_hash['uprns'][0]} - uprns")

  ### Title Number ###
  puts $structure_hash['title_number'] + ' - title_number'

  ### Entry No.1 ###
  puts $structure_hash['entries'][0]['entry_id'] + ' - Entry 1 entry_id'
  puts $structure_hash['entries'][0]['role_code'] + ' - Entry 1 role_code'
  puts $structure_hash['entries'][0]['language'] + ' - Entry 1 language'
  puts $structure_hash['entries'][0]['sub_register'] + ' - Entry 1 sub_register'
  puts $structure_hash['entries'][0]['full_text'] + ' - Entry 1 full_text'
  puts $structure_hash['entries'][0]['status'] + ' - Entry 1 status'
  puts $structure_hash['entries'][0]['entry_date'] + ' - Entry 1 entry_date'
  puts $structure_hash['entries'][0]['template_text'] + ' - Entry 1 template_text'
  puts $structure_hash['entries'][0]['infills'][0]['type'] + ' - Entry 1 Infill type'
  puts $structure_hash['entries'][0]['infills'][0]['address']['address_string'] + ' - Entry 1 Infill address_string'
  puts $structure_hash['entries'][0]['infills'][0]['address']['auto_uppercase_override']

  ### Entry No.2 ###
  puts $structure_hash['entries'][1]['entry_id'] + ' - Entry 2 entry_id'
  puts $structure_hash['entries'][1]['role_code'] + ' - Entry 2 role_code'
  puts $structure_hash['entries'][1]['language'] + ' - Entry 2 language'
  puts $structure_hash['entries'][1]['sub_register'] + ' - Entry 2 sub_register'
  puts $structure_hash['entries'][1]['full_text'] + ' - Entry 2 full_text'
  puts $structure_hash['entries'][1]['status'] + ' - Entry 2 status'
#empty object  puts $structure_hash['entries'][1]['schedule'] + ' - Entry 2 schedule'

  ### Entry No.3 ###
  puts $structure_hash['entries'][2]['entry_id'] + ' - Entry 3 entry_id'
  puts $structure_hash['entries'][2]['language'] + ' - Entry 3 language'
  puts $structure_hash['entries'][2]['sub_register'] + ' - Entry 3 sub_register'
  puts $structure_hash['entries'][2]['full_text'] + ' - Entry 3 full_text'
  puts $structure_hash['entries'][2]['status'] + ' - Entry 3 status'
  puts $structure_hash['entries'][2]['template_text'] + ' - Entry 3 template_text'

  ### Entry No.4 ###
  puts $structure_hash['entries'][3]['entry_id'] + ' - Entry 4 entry_id'
  puts $structure_hash['entries'][3]['draft_entry_version']
  puts $structure_hash['entries'][3]['role_code'] + ' - Entry 4 role_code'
  puts $structure_hash['entries'][3]['language'] + ' - Entry 4 language'
  puts $structure_hash['entries'][3]['sub_register'] + ' - Entry 4 sub_register'
  puts $structure_hash['entries'][3]['full_text']  + ' - Entry 4 full_text'
  puts $structure_hash['entries'][3]['status']  + ' - Entry 4 status'
  puts $structure_hash['entries'][3]['template_text'] + ' - Entry 4 template_text'
  puts $structure_hash['entries'][3]['draft_entry_code'] + ' - Entry 4 draft_entry_code'

  ### Entry No.5 ###
  puts $structure_hash['entries'][4]['entry_id'] + ' - Entry 5 entry_id'
  puts $structure_hash['entries'][4]['role_code'] + ' - Entry 5 role_code'
  puts $structure_hash['entries'][4]['language'] + ' - Entry 5 language'
  puts $structure_hash['entries'][4]['sub_register'] + ' - Entry 5 sub_register'
  puts $structure_hash['entries'][4]['full_text'] + ' - Entry 5 full_text'
  puts $structure_hash['entries'][4]['status'] + ' - Entry 5 status'
  puts $structure_hash['entries'][4]['entry_date'] + ' - Entry 5 entry_date'
  puts $structure_hash['entries'][4]['template_text'] + ' - Entry 5 template_text'
  puts $structure_hash['entries'][4]['infills'][0]['type'] + ' - Entry 5 Infill type'
  puts $structure_hash['entries'][4]['infills'][0]['proprietors'][0]['addresses'][0]['postal_county']
  puts $structure_hash['entries'][4]['infills'][0]['proprietors'][0]['addresses'][0]['address_string']
  puts $structure_hash['entries'][4]['infills'][0]['proprietors'][0]['addresses'][0]['address_type']
  puts $structure_hash['entries'][4]['infills'][0]['proprietors'][0]['addresses'][0]['auto_uppercase_override']
  puts $structure_hash['entries'][4]['infills'][0]['proprietors'][0]['name']['surname']
  puts $structure_hash['entries'][4]['infills'][0]['proprietors'][0]['name']['forename']
  puts $structure_hash['entries'][4]['infills'][0]['proprietors'][0]['name']['name_category']
  puts $structure_hash['entries'][4]['infills'][0]['proprietors'][0]['name']['auto_uppercase_override']

  ### Entry No.6 ###
  puts $structure_hash['entries'][5]['entry_id'] + ' - Entry 6 entry_id'
  puts $structure_hash['entries'][5]['draft_entry_version']
  puts $structure_hash['entries'][5]['role_code'] + ' - Entry 6 role_code'
  puts $structure_hash['entries'][5]['language'] + ' - Entry 6 language'
  puts $structure_hash['entries'][5]['sub_register'] + ' - Entry 6 sub_register'
  puts $structure_hash['entries'][5]['full_text'] + ' - Entry 6 full_text'
  puts $structure_hash['entries'][5]['status'] + ' - Entry 6 status'
  puts $structure_hash['entries'][5]['entry_date'] + ' - Entry 6 entry_date'
  puts $structure_hash['entries'][5]['template_text'] + ' - Entry 6 template_text'
  puts $structure_hash['entries'][5]['draft_entry_code']
  puts $structure_hash['entries'][5]['infills'][0]['text']
  puts $structure_hash['entries'][5]['infills'][0]['date']
  puts $structure_hash['entries'][5]['infills'][0]['type']

  ### Entry No.7 ###
  puts $structure_hash['entries'][6]['entry_id'] + ' - Entry 6 entry_id'
  puts $structure_hash['entries'][6]['role_code'] + ' - Entry 6 role_code'
  puts $structure_hash['entries'][6]['language'] + ' - Entry 6 language'
  puts $structure_hash['entries'][6]['sub_register'] + ' - Entry 6 sub_register'
  puts $structure_hash['entries'][6]['full_text'] + ' - Entry 6 full_text'
  puts $structure_hash['entries'][6]['status'] + ' - Entry 6 status'
  puts $structure_hash['entries'][6]['entry_date'] + ' - Entry 6 entry_date'
  puts $structure_hash['entries'][6]['template_text'] + ' - Entry 6 template_text'
  puts $structure_hash['entries'][6]['infills'][0]['type'] + ' - Entry 6 Infill type'
  puts $structure_hash['entries'][6]['infills'][0]['proprietors'][0]['addresses'][0]['address_string']
  puts $structure_hash['entries'][6]['infills'][0]['proprietors'][0]['addresses'][0]['address_type']
  puts $structure_hash['entries'][6]['infills'][0]['proprietors'][0]['addresses'][0]['auto_uppercase_override']
  puts $structure_hash['entries'][6]['infills'][0]['proprietors'][0]['name']['name_category']
  puts $structure_hash['entries'][6]['infills'][0]['proprietors'][0]['name']['auto_uppercase_override']
  puts $structure_hash['entries'][6]['infills'][0]['proprietors'][0]['name']['non_private_individual_name']

  ### Migration Errors ###
  puts $structure_hash['migration_errors'][0]['extractor'] + ' = Register check'
  puts $structure_hash['migration_errors'][0]['message_number'] + ' = RC1024'
  puts $structure_hash['migration_errors'][0]['message'] + ' = Title has investigation codes'

  puts $structure_hash['migration_errors'][1]['extractor'] + ' = Property Extractor'
  puts $structure_hash['migration_errors'][1]['message_number'] + ' = PE1012'
  puts $structure_hash['migration_errors'][1]['entry_id'] + ' = 2005-12-21 10:06:20.110635'
  puts $structure_hash['migration_errors'][1]['message'] + ' = Address not deconstructed in Intelligent Register for title'

  puts $structure_hash['migration_errors'][2]['extractor'] + ' = Register Conversion'
  puts $structure_hash['migration_errors'][2]['message_number'] + ' = RT1055'
  puts $structure_hash['migration_errors'][2]['entry_id'] + ' = 2005-12-21 10:06:20.202265'
  puts $structure_hash['migration_errors'][2]['message'] + ' = Investigation code: K - Schedule data cannot be deconstructed'

  puts $structure_hash['migration_errors'][3]['extractor'] + ' = Schedule Extractor'
  puts $structure_hash['migration_errors'][3]['message_number'] + ' = SE1046'
  puts $structure_hash['migration_errors'][3]['entry_id'] + ' = 2005-12-21 10:06:20.202265'
  puts $structure_hash['migration_errors'][3]['message'] + ' = No deeds found for schedule entry 2005-12-21 10:06:20.202265'

  puts $structure_hash['migration_errors'][4]['extractor'] + ' = Register Conversion'
  puts $structure_hash['migration_errors'][4]['message_number'] + ' = RT1055'
  puts $structure_hash['migration_errors'][4]['entry_id'] + ' = 2005-12-21 10:06:20.234105'
  puts $structure_hash['migration_errors'][4]['message'] + ' = Investigation code: C - No role code assigned to the register entry'

  ### District of Title ###
  puts $structure_hash['districts'][0] + ' - districts'

  ################################# VALIDATION CHECKS #################################

  ### Appn Ref Validation ###
  expect($structure_hash['application_reference']).to eq('UPD0018')

  ### Geometry Validation ###
  expect($structure_hash['geometry']['index']['type']).to eq('Feature')
  expect($structure_hash['geometry']['index']['geometry']['type']).to eq('Polygon')
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][0][0]).to eq(368002.61)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][0][1]).to eq(78944.65)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][1][0]).to eq(368002.58)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][1][1]).to eq(78948.25)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][2][0]).to eq(367991.851)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][2][1]).to eq(78948.443)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][3][0]).to eq(367991.75)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][3][1]).to eq(78942.85)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][4][0]).to eq(367991.73)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][4][1]).to eq(78942.1)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][5][0]).to eq(367998.35)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][5][1]).to eq(78941.95)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][6][0]).to eq(368002.638)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][6][1]).to eq(78941.901)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][7][0]).to eq(368002.61)
  expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][7][1]).to eq(78944.65)
  expect($structure_hash['geometry']['index']['properties']['graphic_type']).to eq('Bordered Polygon')
  expect($structure_hash['geometry']['index']['properties']['feature_id']).to eq(4019)
  expect($structure_hash['geometry']['index']['properties']['colour']).to eq(1)
  expect($structure_hash['geometry']['index']['properties']['width']).to eq(0)
  expect($structure_hash['geometry']['index']['properties']['render_attributes']['border_colour']).to eq(1)
  expect($structure_hash['geometry']['index']['properties']['render_attributes']['border_width']).to eq(0)
  expect($structure_hash['geometry']['index']['properties']['render_attributes']['exterior_edge_colour']).to eq(1)
  expect($structure_hash['geometry']['index']['properties']['render_attributes']['exterior_edge_thickness']).to eq(2)
  expect($structure_hash['geometry']['index']['properties']['render_attributes']['fill_colour']).to eq(25)
  expect($structure_hash['geometry']['index']['properties']['render_attributes']['fill_style']).to eq(9)
  expect($structure_hash['geometry']['index']['properties']['render_attributes']['render_level']).to eq('0')
  expect($structure_hash['geometry']['index']['crs']['type']).to eq('name')
  expect($structure_hash['geometry']['index']['crs']['properties']['name']).to eq('urn:ogc:def:crs:EPSG::27700')

  ### Last Appn Timestamp Validation ###
  expect($structure_hash['last_app_timestamp']).to eq('2005-12-21T00:00:01+00:00')

  ### Edition Date Validation ###
  expect($structure_hash['edition_date']).to eq('2005-12-21')

  ### Class of Title Validation ###
  expect($structure_hash['class']).to eq('Good')

  ### Tenure of Title Validation ###
  expect($structure_hash['tenure']).to eq('Leasehold')

  ### Owning DLR Validation ###
  expect($structure_hash['dlr']).to eq('Weymouth Office')

  ### Unique Property Reference Number Validation ###
  expect("#{$structure_hash['uprns'][0]}").to eq('26241363')

  ### Title Number Validation ###
  expect($structure_hash['title_number']).to eq('DT160760')

  ### Entry No.1 Validation ###
  expect($structure_hash['entries'][0]['entry_id']).to eq('2005-12-21 10:06:20.110635')
  expect($structure_hash['entries'][0]['role_code']).to eq('RDES')
  expect($structure_hash['entries'][0]['language']).to eq('en_GB')
  expect($structure_hash['entries'][0]['sub_register']).to eq('A')
  expect($structure_hash['entries'][0]['full_text']).to eq('The Leasehold land shown edged with red on the plan of the above Title filed at the Registry and being 13 Maiden Street, Weymouth.')
  expect($structure_hash['entries'][0]['status']).to eq('Current')
  expect($structure_hash['entries'][0]['entry_date']).to eq('1986-10-24')
  expect($structure_hash['entries'][0]['template_text']).to eq('The Leasehold land shown edged with red on the plan of the above Title filed at the Registry and being *AD*')
  expect($structure_hash['entries'][0]['infills'][0]['type']).to eq('Address')
  expect($structure_hash['entries'][0]['infills'][0]['address']['address_string']).to eq('13 Maiden Street, Weymouth')
  expect($structure_hash['entries'][0]['infills'][0]['address']['auto_uppercase_override']).to eq(true)

  ### Entry No.2 Validation ###
  expect($structure_hash['entries'][1]['entry_id']).to eq('2005-12-21 10:06:20.202265')
  expect($structure_hash['entries'][1]['role_code']).to eq('RSLP')
  expect($structure_hash['entries'][1]['language']).to eq('en_GB')
  expect($structure_hash['entries'][1]['sub_register']).to eq('A')
  expect($structure_hash['entries'][1]['full_text']).to eq("Short particulars of the lease(s) (or under-lease(s)) under which the land is held:\rDATE    :    About 15 April 1641\rTERM    :    1000 years from 15 April 1641\rRENT    :    Unknown\rPARTIES :    1.Unknown\r             2.Unknown\r             3.Unknown\rNOTE: Neither the original lease nor a certified copy or examined\rabstract thereof was produced on first registration.")
  expect($structure_hash['entries'][1]['status']).to eq('Current')
#empty object  puts $structure_hash['entries'][1]['schedule'] + ' - Entry 2 schedule'

  ### Entry No.3 Validation ###
  expect($structure_hash['entries'][2]['entry_id']).to eq('2005-12-21 10:06:20.234105')
  expect($structure_hash['entries'][2]['language']).to eq('en_GB')
  expect($structure_hash['entries'][2]['sub_register']).to eq('A')
  expect($structure_hash['entries'][2]['full_text']).to eq('The lease also includes other land.')
  expect($structure_hash['entries'][2]['status']).to eq('Current')
  expect($structure_hash['entries'][2]['template_text']).to eq('The lease also includes other land')

  ### Entry No.4 Validation ###
  expect($structure_hash['entries'][3]['entry_id']).to eq('2005-12-21 10:06:20.311905')
  expect($structure_hash['entries'][3]['draft_entry_version']).to eq(1)
  expect($structure_hash['entries'][3]['role_code']).to eq('RAEA')
  expect($structure_hash['entries'][3]['language']).to eq('en_GB')
  expect($structure_hash['entries'][3]['sub_register']).to eq('A')
  expect($structure_hash['entries'][3]['full_text']).to eq('Unless otherwise mentioned the title includes any legal easements granted by the registered lease(s) but is subject to any rights that it reserves, so far as those easements and rights exist and benefit or affect the registered land.')
  expect($structure_hash['entries'][3]['status']).to eq('Current')
  expect($structure_hash['entries'][3]['template_text']).to eq('Unless otherwise mentioned the title includes any legal easements granted by the registered lease(s) but is subject to any rights that it reserves, so far as those easements and rights exist and benefit or affect the registered land.')
  expect($structure_hash['entries'][3]['draft_entry_code']).to eq('AG303')

  ### Entry No.5 Validation ###
  expect($structure_hash['entries'][4]['entry_id']).to eq('2005-12-21 10:06:20.136175')
  expect($structure_hash['entries'][4]['role_code']).to eq('RPRO')
  expect($structure_hash['entries'][4]['language']).to eq('en_GB')
  expect($structure_hash['entries'][4]['sub_register']).to eq('B')
  expect($structure_hash['entries'][4]['full_text']).to eq('PROPRIETOR: %MICHAEL PETER DEJONGE% of 4 Georgina Close, Broadwey, Weymouth, *Dorset*.')
  expect($structure_hash['entries'][4]['status']).to eq('Current')
  expect($structure_hash['entries'][4]['entry_date']).to eq('1988-08-10')
  expect($structure_hash['entries'][4]['template_text']).to eq('PROPRIETOR: *RP*')
  expect($structure_hash['entries'][4]['infills'][0]['type']).to eq('Proprietor')
  expect($structure_hash['entries'][4]['infills'][0]['proprietors'][0]['addresses'][0]['postal_county']).to eq('Dorset')
  expect($structure_hash['entries'][4]['infills'][0]['proprietors'][0]['addresses'][0]['address_string']).to eq('4 Georgina Close, Broadwey, Weymouth, Dorset')
  expect($structure_hash['entries'][4]['infills'][0]['proprietors'][0]['addresses'][0]['address_type']).to eq('UK')
  expect($structure_hash['entries'][4]['infills'][0]['proprietors'][0]['addresses'][0]['auto_uppercase_override']).to eq(true)
  expect($structure_hash['entries'][4]['infills'][0]['proprietors'][0]['name']['surname']).to eq('DEJONGE')
  expect($structure_hash['entries'][4]['infills'][0]['proprietors'][0]['name']['forename']).to eq('MICHAEL PETER')
  expect($structure_hash['entries'][4]['infills'][0]['proprietors'][0]['name']['name_category']).to eq('PRIVATE INDIVIDUAL')
  expect($structure_hash['entries'][4]['infills'][0]['proprietors'][0]['name']['auto_uppercase_override']).to eq(true)

  ### Entry No.6 Validation ###
  expect($structure_hash['entries'][5]['entry_id']).to eq('2005-12-21 10:06:20.157225')
  expect($structure_hash['entries'][5]['draft_entry_version']).to eq(1)
  expect($structure_hash['entries'][5]['role_code']).to eq('CCHA')
  expect($structure_hash['entries'][5]['language']).to eq('en_GB')
  expect($structure_hash['entries'][5]['sub_register']).to eq('C')
  expect($structure_hash['entries'][5]['full_text']).to eq('REGISTERED CHARGE dated 1 June 1988 to secure the moneys including the further advances therein mentioned.')
  expect($structure_hash['entries'][5]['status']).to eq('Current')
  expect($structure_hash['entries'][5]['entry_date']).to eq('1988-08-10')
  expect($structure_hash['entries'][5]['template_text']).to eq('REGISTERED CHARGE dated *CD* to secure the moneys including the further advances therein mentioned.')
  expect($structure_hash['entries'][5]['draft_entry_code']).to eq('CHFAD')
  expect($structure_hash['entries'][5]['infills'][0]['text']).to eq('1 June 1988')
  expect($structure_hash['entries'][5]['infills'][0]['date']).to eq('1988-06-01')
  expect($structure_hash['entries'][5]['infills'][0]['type']).to eq('DATE')

  ### Entry No.7 Validation ###
  expect($structure_hash['entries'][6]['entry_id']).to eq('2005-12-21 10:06:20.184365')
  expect($structure_hash['entries'][6]['role_code']).to eq('CCHR')
  expect($structure_hash['entries'][6]['language']).to eq('en_GB')
  expect($structure_hash['entries'][6]['sub_register']).to eq('C')
  expect($structure_hash['entries'][6]['full_text']).to eq('Proprietor: #LLOYDS BANK PLC# of 92 St. Mary Street, Weymouth, Dorset, DT4 8PA.')
  expect($structure_hash['entries'][6]['status']).to eq('Current')
  expect($structure_hash['entries'][6]['entry_date']).to eq('1988-08-10')
  expect($structure_hash['entries'][6]['template_text']).to eq('Proprietor: *RP*')
  expect($structure_hash['entries'][6]['infills'][0]['type']).to eq('Charge Proprietor')
  expect($structure_hash['entries'][6]['infills'][0]['proprietors'][0]['addresses'][0]['address_string']).to eq('92 St. Mary Street, Weymouth, Dorset, DT4 8PA')
  expect($structure_hash['entries'][6]['infills'][0]['proprietors'][0]['addresses'][0]['address_type']).to eq('UNKNOWN')
  expect($structure_hash['entries'][6]['infills'][0]['proprietors'][0]['addresses'][0]['auto_uppercase_override']).to eq(true)
  expect($structure_hash['entries'][6]['infills'][0]['proprietors'][0]['name']['name_category']).to eq('LIMITED COMPANY OR PUBLIC LIMITED COMPANY')
  expect($structure_hash['entries'][6]['infills'][0]['proprietors'][0]['name']['auto_uppercase_override']).to eq(true)
  expect($structure_hash['entries'][6]['infills'][0]['proprietors'][0]['name']['non_private_individual_name']).to eq('LLOYDS BANK PLC')

  ### Migration Errors Validation ###
  expect($structure_hash['migration_errors'][0]['extractor']).to eq('Register Check')
  expect($structure_hash['migration_errors'][0]['message_number']).to eq('RC1024')
  expect($structure_hash['migration_errors'][0]['message']).to eq('Title has investigation codes')

  expect($structure_hash['migration_errors'][1]['extractor']).to eq('Property Extractor')
  expect($structure_hash['migration_errors'][1]['message_number']).to eq('PE1012')
  expect($structure_hash['migration_errors'][1]['entry_id']).to eq('2005-12-21 10:06:20.110635')
  expect($structure_hash['migration_errors'][1]['message']).to eq('Address not deconstructed in Intelligent Register for title')

  expect($structure_hash['migration_errors'][2]['extractor']).to eq('Register Conversion')
  expect($structure_hash['migration_errors'][2]['message_number']).to eq('RT1055')
  expect($structure_hash['migration_errors'][2]['entry_id']).to eq('2005-12-21 10:06:20.202265')
  expect($structure_hash['migration_errors'][2]['message']).to eq('Investigation code: K - Schedule data cannot be deconstructed')

  expect($structure_hash['migration_errors'][3]['extractor']).to eq('Schedule Extractor')
  expect($structure_hash['migration_errors'][3]['message_number']).to eq('SE1046')
  expect($structure_hash['migration_errors'][3]['entry_id']).to eq('2005-12-21 10:06:20.202265')
  expect($structure_hash['migration_errors'][3]['message']).to eq('No deeds found for schedule entry 2005-12-21 10:06:20.202265')

  expect($structure_hash['migration_errors'][4]['extractor']).to eq('Register Conversion')
  expect($structure_hash['migration_errors'][4]['message_number']).to eq('RT1055')
  expect($structure_hash['migration_errors'][4]['entry_id']).to eq('2005-12-21 10:06:20.234105')
  expect($structure_hash['migration_errors'][4]['message']).to eq('Investigation code: C - No role code assigned to the register entry')

  ### District of Title Validation ###
  expect($structure_hash['districts'][0]).to eq('DORSET : WEYMOUTH AND PORTLAND')
end
