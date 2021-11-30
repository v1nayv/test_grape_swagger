module Servicing
  module V1
    class BankAccounts < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api

      namespace '/customers/:customer_id' do
        resource :bank_accounts do
          desc 'Return list of bank accounts'
          get do
            {
              results: [
                {
                  uuid: '8ac7d3d0-9860-4e40-bcc1-5efa06b629a5',
                  bank_name: 'Capital One',
                  account_type: 'Checking',
                  routing_number: '012233325',
                  account_number: '124343423',
                  created_at: '2021-02-03',
                  bank_zip: '66234',
                  bank_state: 'IL',
                  bank_city: 'Chicago',
                  account_number_last_4: '3423',
                  bad_account: 'N'
                },
                {
                  uuid: 'c7721b94-17e0-494a-8749-256c94b11744',
                  bank_name: 'Wells Fargo',
                  account_type: 'Checking',
                  routing_number: '012233325',
                  account_number: '124343423',
                  created_at: '2021-02-03',
                  bank_zip: '66234',
                  bank_state: 'IL',
                  bank_city: 'Chicago',
                  account_number_last_4: '3423',
                  bad_account: 'Y'
                }
              ]
            }
          end
        end
      end
    end
  end
end