# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :rental do |f|
  f.rent "9.99"
  f.mode 1
  f.start_date "2011-04-26"
  f.end_date "2011-04-26"
end