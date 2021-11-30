module Servicing
  class Base < Grape::API
    mount ::Servicing::V1::BankAccounts
    add_swagger_documentation :base_path => '/api'
  end
end