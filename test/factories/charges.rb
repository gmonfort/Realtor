# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :charge do |f|
  f.name "MyString"
  f.code "MyString"
  f.amount "9.99"
  f.kind 1
end