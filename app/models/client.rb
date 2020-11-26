class Client < ApplicationRecord
  has_many :pets, dependent: :destroy

  def count_pets
    Client.includes(:pets).references(:pets).where("pets.client_id = #{id}").count
  end

  def to_s
    name
  end
  
end
