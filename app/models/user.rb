class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         def github_student_url
          # The School ID GitHub gave you
          school_id = "your-school-id"
          
          # The secret key GitHub gave you
          secret_key = "secret-key"
          
          # The ID of the student in your database
          student_id = id.to_s
          
          # Generate the signature
          signature = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha256'), secret_key, school_id + student_id)
          
          "https://education.github.com/student/verify?school_id=#{school_id}&student_id=#{student_id}&signature=#{signature}"
        end
    
end
