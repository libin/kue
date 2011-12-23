require "kue/version"

module Kue
  class KueStore < ActiveRecord::Base
    set_table_name :kue_settings
    set_primary_key :key
     
    def self.[](key)
      entry = Kue.find(key)
      entry.nil? ? nil : YAML.load(entry.value)
    end
       
    def self.[]=(key, value)
      setting = Kue.find_or_create_by_key(key)
      setting.value = value.to_yaml
      setting.save!
    end
  end
end
