gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

class Contact < ActiveRecord::Base
  def full_name

    field :first_name, as: :string
    field :last_name,  as: :string
    field :email,      as: :string
    field :note,       as: :text

    fullname = "#{first_name} #{last_name}"
    fullname
  end
end

Contact.auto_upgrade!
