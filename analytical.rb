#!/usr/bin/env ruby

m = 70.0
k = 10000.0
c = 100.0
tf = 5.0
dt = 0.01

(0..tf).step(dt) do |t| 
	puts Math.exp(- ((c / (2 * m)) * t)) * Math.cos((((k / m) - (c**2 / (4 * (m**2))))**0.5) * t)
end