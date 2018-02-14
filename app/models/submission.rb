class Submission
  include Mongoid::Document

  field :form_id
  field :data, type: Hash
end
