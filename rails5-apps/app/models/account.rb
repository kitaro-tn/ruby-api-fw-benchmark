class Account < ApplicationRecord
  def self.get_dummy(limit=100)
    JSON.parse(File.read(Rails.root.join('db', "sample_#{limit}.json")))
  end
end
