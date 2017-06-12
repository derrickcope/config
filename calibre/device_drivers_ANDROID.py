# settings for device drivers

### Begin group: DEFAULT
 
# format map
# Ordered list of formats the device will accept
format_map = cPickle.loads('\x80\x02]q\x01(U\x04epubq\x02U\x03pdfq\x03e.')
 
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
save_template = '{author_sort}/{title} - {authors}'
 
# extra customization
# Extra customization
extra_customization = cPickle.loads('\x80\x02]q\x01(U?eBooks/import, wordplayer/calibretransfer, Books, sdcard/ebooksq\x02U\x00e.')
 


