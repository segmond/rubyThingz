#!/usr/bin/ruby

tree_name = 'pine'
$car_name = "Ford"
@sea_name = 'Red Sea'
@@species = 'Dog'

p local_variables
p global_variables.include? :$car_name
p self.instance_variables
p Object.class_variables
