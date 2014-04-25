# Sample code from Programing Ruby, page 255

require 'win32ole'

ie = WIN32OLE.new('InternetExplorer.Application')
ie.visible = true
ie.gohome
