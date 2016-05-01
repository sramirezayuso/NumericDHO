#!/usr/bin/env ruby

m = 70
k = 10000
c = 100
tf = 5
dt = 0.01

prev_r = 1
prev_v = - (c/m/2)
prev_a = (- (k * prev_r) - (c * prev_v)) / m

r = 0.99285
v = -1.4241785714285715
a = -141.8357142857143

(0.01..tf).step(dt) do |x| 

    puts "#{r}"
	
	new_r = r + (v * dt) + ((2.0/3.0) * a * dt * dt) - ((1.0/6.0) * prev_a * dt * dt)
	new_a = (- (k * new_r) - (c * v)) / m
	new_v = v + ((1.0/3.0) * new_a * dt) + ((5.0/6.0) * a * dt) - ((1.0/6.0) * prev_a * dt)

	prev_r = r
	prev_v = v
	prev_a = a

	r = new_r
	v = new_v
	a = new_a
end