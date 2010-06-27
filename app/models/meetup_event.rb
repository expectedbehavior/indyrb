class MeetupEvent < MeetupResource

  # Example:
  #  members_groups = MeetupGroup.for_member('437658')
  # def self.for_member(member_id, api_key = nil)
#     @api_key = "6b58b6c14245d6695599544a3a5a"

#     find_everything( :params => { :member_id => member_id } )  
#   end
  def self.find_next_event(options = {})
    options[:group_id] ||= MeetupGroup.find_first_by_urlname('indyrb')
    @api_key = "6b58b6c14245d6695599544a3a5a"
    find_everything( :params => { :group_id => options[:group_id] } ).first
  end 

  
end
