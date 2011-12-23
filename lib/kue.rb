require "kue/version"

class KueStore < ActiveRecord::Base
  set_table_name :kue_settings
  set_primary_key :key
     
  def self.[](key)
    begin
      entry = KueStore.find(key)
      YAML.load(entry.value)
    rescue ActiveRecord::RecordNotFound
      return nil
    end
  end
       
  def self.[]=(key, value)
    setting = KueStore.find_or_create_by_key(key)
    setting.value = value.to_yaml
    setting.save!
  end
  
  def self.exists?(key)
    !self[key].nil?
  end
end

