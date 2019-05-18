class Document < ApplicationRecord
  belongs_to :user ,optional:  true

  has_attached_file :document_attached,
                    #:styles => {
                        #:thumb => "100x100#",
                        #:small  => "150x150>",
                        #:medium => "500x500" },
                    default_url: "/images/:style/missing.png",
                    :url =>"/image/:class/:id/:style/:basename.:extension",
               :path => ":rails_root/public/image/:class/:id/:style/:basename.:extension"

      # validates_attachment_content_type :document_attached, content_type: /\Aimage\/.*\z/

  VALID_IMAGE_TYPES=['application/pdf','image/gif','image/jpeg','image/jpg','application/msword','application/vnd.openxmlformats-officedocument.wordprocessingml.document','application/zip','application/vnd.openxmlformats-officedocument.presentationml.presentation']

  validates_attachment :document_attached,content_type:{content_type: VALID_IMAGE_TYPES,:message=>"file can be of jpg,jpeg,gif,pdf,zip,document"}
  validates_attachment_size :document_attached,:less_than=>25.megabytes,:message=>"Size cant be greater then 25"



end
