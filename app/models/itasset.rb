class Itasset < ApplicationRecord
  belongs_to :store
  belongs_to :dtype

  validates :store_id, :presence => true
  validates :mgmtno, presence: true, uniqueness: true
  validates_numericality_of :store_id
  validates_format_of :ipaddr,  :with => /\A(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\z/,
    :message => "Only IP address format allowed", :allow_blank => true 
  validates_format_of :gwaddr, :with => /\A(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\z/,
    :message => "Only IP address format allowed", :allow_blank => true 
  validates_format_of :macwire, :with => /\A([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})\z/,
    :message => "Only IP address format allowed", :allow_blank => true 
  validates_format_of :macwireless, :with => /\A([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})\z/,
    :message => "Only IP address format allowed", :allow_blank => true 


end
