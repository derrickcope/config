# settings for device drivers

### Begin group: DEFAULT
 
# format map
# Ordered list of formats the device will accept
format_map = cPickle.loads('\x80\x02]q\x01(X\x05\x00\x00\x00kepubq\x02X\x04\x00\x00\x00epubq\x03X\x03\x00\x00\x00pdfq\x04X\x03\x00\x00\x00txtq\x05X\x03\x00\x00\x00cbzq\x06X\x03\x00\x00\x00cbrq\x07e.')
 
# use subdirs
# Place files in sub-directories if the device supports them
use_subdirs = True
 
# read metadata
# Read metadata from files on device
read_metadata = True
 
# use author sort
# Use author sort instead of author
use_author_sort = False
 
# save template
# Template to control how books are saved
save_template = u'{author_sort}/{title} - {authors}'
 
# extra customization
# Extra customization
extra_customization = cPickle.loads('\x80\x02]q\x01.')
 
# manage collections
manage_collections = True
 
# collections columns
collections_columns = u''
 
# create collections
create_collections = False
 
# delete empty collections
delete_empty_collections = False
 
# ignore collections names
ignore_collections_names = u''
 
# upload covers
upload_covers = True
 
# keep cover aspect
keep_cover_aspect = False
 
# upload grayscale
upload_grayscale = False
 
# show archived books
show_archived_books = False
 
# show previews
show_previews = False
 
# show recommendations
show_recommendations = False
 
# update series
update_series = True
 
# update device metadata
update_device_metadata = True
 
# modify css
modify_css = False
 
# override kobo replace existing
override_kobo_replace_existing = True
 
# support newer firmware
support_newer_firmware = False
 
# debugging title
debugging_title = u''
 
# driver version
driver_version = u'2.3.3'
 


