# frozen_string_literal: true

module JsonResponseHelper
  def json_response
    JSON.parse(response&.body) if response&.body
  end
end

RSpec.configure do |c|
  c.include JsonResponseHelper
end
