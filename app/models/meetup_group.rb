class MeetupGroup < MeetupResource

  def self.find_first_by_urlname(urlname)
    @api_key = "6b58b6c14245d6695599544a3a5a"#api_key.blank? ? MEETUP_API_KEY : api_key 

    find_everything( :params => { :group_urlname => urlname } ).first
  end 

  
end
