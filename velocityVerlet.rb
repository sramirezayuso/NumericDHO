#!/usr/bin/env ruby

m = 70
k = 10000
c = 100
tf = 5
dt = 0.01

r = 1
v = - (c/m/2)
a = (- (k * r) - (c * v)) / m

(0..tf).step(dt) do |x| 

    puts "#{r}, #{v}, #{a}"
	
	new_r = r + v * dt + a * dt * dt / 2
	new_a = (- (k * new_r) - (c * v)) / m
	new_v = v + (a + new_a) / 2 * dt

	r = new_r
	a = new_a
	v = new_v
end