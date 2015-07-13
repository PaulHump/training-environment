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

############# Data Checks #############

### Appn Ref Validation ###
expect($structure_hash['application_reference']).to eq('E006DWW')

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

### District of Title Validation ###
expect($structure_hash['districts'][0]).to eq('GLOUCESTERSHIRE : GLOUCESTER')
end
