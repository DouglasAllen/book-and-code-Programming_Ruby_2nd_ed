# Sample code from Programing Ruby, page 200

system 'ruby -r rbconfig -e "p Config::CONFIG["datadir"]"'

d = "datadir"

loc_ri = RbConfig::CONFIG[d]

puts loc_ri
