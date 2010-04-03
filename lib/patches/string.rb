class String
  def down_under
    self.strip.gsub(/\s/, "_").gsub(/\W/, "").underscore.downcase
  end

  def filename_sanitize
    returning self.strip do |name|
      # NOTE: File.basename doesn't work right with Windows paths on Unix
      # get only the filename, not the whole path
      name.gsub! /^.*(\\|\/)/, ''
   
      # Finally, replace all non alphanumeric, underscore or periods with underscore
      name.gsub! /[^\w\.\-]/, '_'
    end
  end
end
