#!/usr/bin/env ruby
require 'securerandom'

(0..10000).each do |i|
  variable_name = SecureRandom.hex(7)
  variable_stanza = <<-HCL
    variable "#{variable_name}" {
      type = number
      description = "#{i} Description of #{variable_name}"
    }
  HCL

print variable_stanza
end

