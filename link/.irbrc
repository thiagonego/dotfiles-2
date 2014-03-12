require 'rubygems'
require 'interactive_editor'
require 'ap'

IRB::Irb.class_eval do
  def output_value
    ap @context.last_value
  end
end


begin
  require "pry"
  Pry.start
  exit
rescue LoadError => e
  warn "=> Unable to load pry"
end