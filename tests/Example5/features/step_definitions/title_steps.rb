Given(/^I have entered a Title Number$/) do
  $structure = getstubjson("GR504812")
end

When(/^the object is returned$/) do
  $structure_hash = JSON.parse($structure)
end

Then(/^I can confirm the data$/) do
  ### LR APPN REF ###
  puts $structure_hash['application_reference'] + ' - application_reference'

  ### Geometry ###

  ## Map ##

  puts $structure_hash['geometry']['map']['type']
  puts $structure_hash['geometry']['map']['features']
  puts $structure_hash['geometry']['map']['properties']
  puts $structure_hash['geometry']['map']['crs']

  ## Extent ##

  puts $structure_hash['geometry']['extent']['type']
  puts $structure_hash['geometry']['extent']['geometry']
  puts $structure_hash['geometry']['extent']['properties']
  puts $structure_hash['geometry']['extent']['crs']

  ## Index ##

  puts $structure_hash['geometry']['index']['type']
  puts $structure_hash['geometry']['index']['geometry']
  puts $structure_hash['geometry']['index']['properties']
  puts $structure_hash['geometry']['index']['crs']

  ### Last Appn Timestamp ###

  puts $structure_hash['last_app_timestamp'] + ' - last_app_timestamp'

  ### Edition Date ###

  puts $structure_hash['edition_date'] + ' - edition_date'

  ### Class of Title ###

  puts $structure_hash['class'] + ' - class'

  ### Tenure of Title ###

  puts $structure_hash['tenure'] + ' - tenure'

  ### Unique Property Reference Number ###

  puts ("#{$structure_hash['uprns'][0]} - uprns")

  ### Title Number ###

  puts $structure_hash['title_number'] + ' - title_number'

  ## Entries ##

  puts $structure_hash['entries']

  ## Migration Errors ##

  puts $structure_hash['migration_errors']

  ### Owning DLR ###

  puts $structure_hash['dlr'] + ' - dlr'

  ### District of Title ###
  
  puts $structure_hash['districts'][0] + ' - districts'

#####################################################################################
#################################### Data Checks ####################################
#####################################################################################

### Appn Ref Validation ###

expect($structure_hash['application_reference']).to eq('E006DWW')

### Geometry ###

expect($structure_hash['geometry']['map']['type']).to eq('FeatureCollection')
expect($structure_hash['geometry']['map']['features'][0]['type']).to eq('Feature')
expect($structure_hash['geometry']['map']['features'][0]['geometry']['type']).to eq('LineString')
expect($structure_hash['geometry']['map']['features'][0]['geometry']['coordinates'][0][0]).to eq(383955.776)
expect($structure_hash['geometry']['map']['features'][0]['geometry']['coordinates'][0][1]).to eq(217487.15)
expect($structure_hash['geometry']['map']['features'][0]['geometry']['coordinates'][1][0]).to eq(383961.08)
expect($structure_hash['geometry']['map']['features'][0]['geometry']['coordinates'][1][1]).to eq(217500)
expect($structure_hash['geometry']['map']['features'][0]['properties']['graphic_type']).to eq('Poly Line')
expect($structure_hash['geometry']['map']['features'][0]['properties']['feature_id']).to eq(98)
expect($structure_hash['geometry']['map']['features'][0]['properties']['render_attributes']['render_level']).to eq('0')
expect($structure_hash['geometry']['map']['properties']['orientation_code']).to eq('P')
expect($structure_hash['geometry']['map']['properties']['print_size']).to eq('A4')
expect($structure_hash['geometry']['map']['properties']['print_size']).to eq('A4')
expect($structure_hash['geometry']['map']['properties']['scale']).to eq('1250 ')
expect($structure_hash['geometry']['map']['properties']['map_reference']).to eq('SO8317NE')
expect($structure_hash['geometry']['map']['properties']['stamp_code_1']).to eq(' ')
expect($structure_hash['geometry']['map']['properties']['stamp_code_2']).to eq(' ')
expect($structure_hash['geometry']['map']['properties']['stamp_code_3']).to eq(' ')
expect($structure_hash['geometry']['map']['properties']['stamp_code_4']).to eq(' ')
expect($structure_hash['geometry']['map']['properties']['stamp_code_5']).to eq(' ')
expect($structure_hash['geometry']['map']['properties']['stamp_text_1']).to eq(' ')
expect($structure_hash['geometry']['map']['properties']['stamp_text_2']).to eq(' ')
expect($structure_hash['geometry']['map']['properties']['stamp_text_3']).to eq(' ')
expect($structure_hash['geometry']['map']['properties']['stamp_text_4']).to eq(' ')
expect($structure_hash['geometry']['map']['properties']['stamp_text_5']).to eq(' ')
expect($structure_hash['geometry']['map']['crs']['type']).to eq('name')
expect($structure_hash['geometry']['map']['crs']['properties']['name']).to eq('urn:ogc:def:crs:EPSG::27700')

expect($structure_hash['geometry']['extent']['type']).to eq('Feature')
expect($structure_hash['geometry']['extent']['geometry']['type']).to eq('Polygon')
expect($structure_hash['geometry']['extent']['geometry']['coordinates'][0][0][0]).to eq(383958.78)
expect($structure_hash['geometry']['extent']['geometry']['coordinates'][0][0][1]).to eq(217637.8)
expect($structure_hash['geometry']['extent']['properties']['graphic_type']).to eq('Bordered Polygon')
expect($structure_hash['geometry']['extent']['properties']['feature_id']).to eq(4013)
expect($structure_hash['geometry']['extent']['properties']['colour']).to eq(17)
expect($structure_hash['geometry']['extent']['properties']['width']).to eq(1000)
expect($structure_hash['geometry']['extent']['properties']['render_attributes']['border_colour']).to eq(17)
expect($structure_hash['geometry']['extent']['properties']['render_attributes']['border_width']).to eq(1000)
expect($structure_hash['geometry']['extent']['properties']['render_attributes']['exterior_edge_colour']).to eq(17)
expect($structure_hash['geometry']['extent']['properties']['render_attributes']['exterior_edge_thickness']).to eq(2)
expect($structure_hash['geometry']['extent']['properties']['render_attributes']['exterior_edge_thickness_units']).to eq('Pixels')
expect($structure_hash['geometry']['extent']['properties']['render_attributes']['fill_colour']).to eq(25)
expect($structure_hash['geometry']['extent']['properties']['render_attributes']['exterior_edge_thickness_units']).to eq('Pixels')
expect($structure_hash['geometry']['extent']['properties']['render_attributes']['fill_style']).to eq(0)
expect($structure_hash['geometry']['extent']['properties']['render_attributes']['render_level']).to eq('0')
expect($structure_hash['geometry']['extent']['crs']['type']).to eq('name')
expect($structure_hash['geometry']['extent']['crs']['properties']['name']).to eq('urn:ogc:def:crs:EPSG::27700')

expect($structure_hash['geometry']['index']['type']).to eq('Feature')
expect($structure_hash['geometry']['index']['geometry']['type']).to eq('Polygon')
expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][0][0]).to eq(383958.78)
expect($structure_hash['geometry']['index']['geometry']['coordinates'][0][0][1]).to eq(217637.8)
expect($structure_hash['geometry']['index']['properties']['graphic_type']).to eq('Bordered Polygon')
expect($structure_hash['geometry']['index']['properties']['feature_id']).to eq(4019)
expect($structure_hash['geometry']['index']['properties']['colour']).to eq(1)
expect($structure_hash['geometry']['index']['properties']['width']).to eq(0)
expect($structure_hash['geometry']['index']['properties']['render_attributes']['border_colour']).to eq(1)
expect($structure_hash['geometry']['index']['properties']['render_attributes']['border_width']).to eq(0)
expect($structure_hash['geometry']['index']['properties']['render_attributes']['exterior_edge_colour']).to eq(1)
expect($structure_hash['geometry']['index']['properties']['render_attributes']['exterior_edge_thickness']).to eq(2)
expect($structure_hash['geometry']['index']['properties']['render_attributes']['exterior_edge_thickness_units']).to eq('Pixels')
expect($structure_hash['geometry']['index']['properties']['render_attributes']['fill_colour']).to eq(25)
expect($structure_hash['geometry']['index']['properties']['render_attributes']['fill_style']).to eq(9)
expect($structure_hash['geometry']['index']['properties']['render_attributes']['render_level']).to eq('0')
expect($structure_hash['geometry']['index']['crs']['type']).to eq('name')
expect($structure_hash['geometry']['index']['crs']['properties']['name']).to eq('urn:ogc:def:crs:EPSG::27700')

### Last Appn Timestamp Validation ###

expect($structure_hash['last_app_timestamp']).to eq('2006-09-06T12:29:16+01:00')

### Edition Date Validation ###

expect($structure_hash['edition_date']).to eq('2006-09-06')

### Class of Title Validation ###

expect($structure_hash['class']).to eq('Absolute')

### Tenure of Title Validation ###

expect($structure_hash['tenure']).to eq('Freehold')

### Owning DLR Validation ###

expect($structure_hash['dlr']).to eq('Gloucester Office')

### Unique Property Reference Number Validation ###

expect("#{$structure_hash['uprns'][0]}").to eq('3412494')

### Title Number Validation ###

expect($structure_hash['title_number']).to eq('GR504812')

### Entry ###

expect($structure_hash['entries'][0]['entry_id']).to eq('2006-09-06 11:32:12.542705')
expect($structure_hash['entries'][0]['sub_register']).to eq('A')
expect($structure_hash['entries'][0]['status']).to eq('Current')
expect($structure_hash['entries'][0]['role_code']).to eq('RDES')
expect($structure_hash['entries'][0]['language']).to eq('en_GB')
expect($structure_hash['entries'][0]['full_text']).to eq('The several perpetual yearly rentcharges charged upon and issuing out of the several parts of the freehold land shown edged with red on the plan of the above Title filed at the registry. Short particulars of the rentcharges are contained in the Rentcharges Schedule hereto.')
expect($structure_hash['entries'][0]['entry_date']).to eq('2006-06-28')

### Migration Errors ###

expect($structure_hash['migration_errors'][0]['extractor']).to eq('Register Check')
expect($structure_hash['migration_errors'][0]['message_number']).to eq('RC1026')
expect($structure_hash['migration_errors'][0]['message']).to eq('Title is not synchronised')

expect($structure_hash['migration_errors'][1]['extractor']).to eq('Property Extractor')
expect($structure_hash['migration_errors'][1]['message_number']).to eq('PE1007')
expect($structure_hash['migration_errors'][1]['entry_id']).to eq('2006-09-06 11:32:12.542705')
expect($structure_hash['migration_errors'][1]['message']).to eq('No property address or property schedule found for title')

### District of Title Validation ###

expect($structure_hash['districts'][0]).to eq('GLOUCESTERSHIRE : GLOUCESTER')
end
