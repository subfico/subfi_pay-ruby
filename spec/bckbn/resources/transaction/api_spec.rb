# frozen_string_literal: true

require "spec_helper"

RSpec.describe Bckbn::Transaction do
  let(:access_token) { Faker::Lorem.word }
  let(:worldpay_merchant_id) { Faker::Lorem.word }
  let(:source_ip_address) { Faker::Internet.ip_v4_address }
  let(:idempotency_key) { Faker::Internet.hash }
  let(:api_version) { "1.0.0" }
  let(:api_base) { "https://localhost:8080" }
  let(:log_level) { :debug }
  let(:headers) do
    {
      "Content-Type" => "application/json",
      "Authorization" => "Bearer #{access_token}",
      "X-Api-Version" => api_version,
      "X-Worldpay-Merchant-Id" => worldpay_merchant_id,
      "X-Source-Ip-Address" => source_ip_address
    }
  end

  describe "::authorization" do
    let(:path) { "/transactions/authorization" }
    let(:body) do
      {
        "id": "12345",
        "report_group": "ABC Division",
        "amount": 5000,
        "bill_to_address": {
          "name": "John Doe",
          "address_line_1": "123 Main St",
          "city": "Boston",
          "state": "MA",
          "country": "US",
          "zip": "12345",
          "email": "jsmith@someaddress.com",
          "phone": "555-123-4567"
        },
        "card": {
          "type": "MC",
          "number": "1234567890123456",
          "exp_date": "1223",
          "card_validation_num": "123"
        },
        "order_id": "5234234",
        "order_source": "ecommerce",
        "partial": false
      }
    end

    context "when 200" do
      context "with global config" do
        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.worldpay_merchant_id = worldpay_merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/authorization_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Transaction.authorization(body)

          expect(res).to be_a(Bckbn::Transaction::AuthorizationResponse)
          expect(res.id).to eq("08f0e7f7-996b-4508-8a77-745096bb4aeb")
          expect(res.report_group).to eq("Default Report Group")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("84080277052330652")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2023-08-23T20:42:52")
          expect(res.post_date).to eq("2023-08-23")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("authorization")
          expect(res.logs).to_not be_empty
        end
      end

      context "with per request config and idempotency_key" do
        let(:ik_headers) do
          headers.merge("X-Idempotency-Key" => idempotency_key)
        end

        before do
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base

          stub_request(:post, api_base + path)
            .with(headers: ik_headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/authorization_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            worldpay_merchant_id: worldpay_merchant_id,
            source_ip_address: source_ip_address,
            log_level: log_level,
            idempotency_key: idempotency_key
          }
        end

        it "returns response object" do
          res = Bckbn::Transaction.authorization(body, config)

          expect(res).to be_a(Bckbn::Transaction::AuthorizationResponse)
          expect(res.id).to eq("08f0e7f7-996b-4508-8a77-745096bb4aeb")
          expect(res.report_group).to eq("Default Report Group")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("84080277052330652")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2023-08-23T20:42:52")
          expect(res.post_date).to eq("2023-08-23")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("authorization")
          expect(res.logs).to_not be_empty
        end
      end
    end

    context "when 400" do
      before do
        Bckbn.access_token = access_token
        Bckbn.api_version = api_version
        Bckbn.api_base = api_base
        Bckbn.worldpay_merchant_id = worldpay_merchant_id
        Bckbn.source_ip_address = source_ip_address
        Bckbn.log_level = log_level

        stub_request(:post, api_base + path)
          .with(headers: headers, body: body.to_json)
          .to_return(
            body: fixture("transactions/authorization_400.json"),
            status: 400
          )
      end

      it "returns error object" do
        expect do
          Bckbn::Transaction.authorization(body)
        end.to raise_error(
          Bckbn::Connection::HttpBadRequest,
          /["Key: 'AuthorizationRequest.Card.Type' Error:Field validation for 'Type' failed on the 'oneof' tag"]/
        )
      end
    end

    context "when 504" do
      before do
        Bckbn.access_token = access_token
        Bckbn.api_version = api_version
        Bckbn.api_base = api_base
        Bckbn.worldpay_merchant_id = worldpay_merchant_id
        Bckbn.source_ip_address = source_ip_address
        Bckbn.log_level = log_level

        stub_request(:post, api_base + path)
          .with(headers: headers, body: body.to_json)
          .to_return(body: "{}", status: 504)
      end

      it "returns error object" do
        expect do
          Bckbn::Transaction.authorization(body)
        end.to raise_error(Bckbn::Connection::HttpGatewayTimeout)
      end
    end
  end

  describe "::capture" do
    let(:path) { "/transactions/capture" }
    let(:body) do
      {
        id: "12345",
        report_group: "ABC Division",
        litle_txn_id: "13254123434",
        partial: false
      }
    end

    context "when 200" do
      context "with global config" do
        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.worldpay_merchant_id = worldpay_merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/capture_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Transaction.capture(body)

          expect(res).to be_a(Bckbn::Transaction::CaptureResponse)
          expect(res.id).to eq("12345")
          expect(res.report_group).to eq("ABC Division")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("333022418696654768")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2023-08-22T14:46:16.013")
          expect(res.post_date).to eq("")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("capture")
          expect(res.logs).to_not be_empty
        end
      end

      context "with per request config" do
        before do
          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/capture_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            api_version: api_version,
            api_base: api_base,
            worldpay_merchant_id: worldpay_merchant_id,
            source_ip_address: source_ip_address,
            log_level: log_level
          }
        end

        it "returns response object" do
          res = Bckbn::Transaction.capture(body, config)

          expect(res).to be_a(Bckbn::Transaction::CaptureResponse)
          expect(res.id).to eq("12345")
          expect(res.report_group).to eq("ABC Division")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("333022418696654768")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2023-08-22T14:46:16.013")
          expect(res.post_date).to eq("")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("capture")
          expect(res.logs).to_not be_empty
        end
      end
    end
  end

  describe "::credit" do
    let(:path) { "/transactions/credit" }
    let(:body) do
      {
        "id": "12345",
        "report_group": "ABC Division",
        "litle_txn_id": "13254123434",
        "amount": 5000
      }
    end

    context "when 200" do
      context "with global config" do
        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.worldpay_merchant_id = worldpay_merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/credit_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Transaction.credit(body)

          expect(res).to be_a(Bckbn::Transaction::CreditResponse)
          expect(res.id).to eq "12345"
          expect(res.report_group).to eq "RG12"
          expect(res.litle_txn_id).to eq "84568457"
          expect(res.response).to eq "000"
          expect(res.response_time).to eq "2017-04-01T10:24:31"
          expect(res.message).to eq "Approved"
          expect(res.type).to eq("credit")
          expect(res.logs).to_not be_empty
        end
      end

      context "with per request config" do
        before do
          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/credit_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            api_version: api_version,
            api_base: api_base,
            worldpay_merchant_id: worldpay_merchant_id,
            source_ip_address: source_ip_address,
            log_level: log_level
          }
        end

        it "returns response object" do
          res = Bckbn::Transaction.credit(body, config)

          expect(res).to be_a(Bckbn::Transaction::CreditResponse)
          expect(res.id).to eq "12345"
          expect(res.report_group).to eq "RG12"
          expect(res.litle_txn_id).to eq "84568457"
          expect(res.response).to eq "000"
          expect(res.response_time).to eq "2017-04-01T10:24:31"
          expect(res.message).to eq "Approved"
          expect(res.type).to eq "credit"
          expect(res.logs).to_not be_empty
        end
      end
    end
  end

  describe "::sale" do
    let(:path) { "/transactions/sale" }

    context "when 200" do
      context "with global config" do
        let(:body) do
          {
            "id": "12345",
            "report_group": "ABC Division",
            "amount": 5000,
            "bill_to_address": {
              "name": "John Doe",
              "address_line_1": "123 Main St",
              "city": "Boston",
              "state": "MA",
              "country": "US",
              "zip": "12345",
              "email": "jsmith@someaddress.com",
              "phone": "555-123-4567"
            },
            "card": {
              "type": "MC",
              "number": "1234567890123456",
              "exp_date": "1223",
              "card_validation_num": "123"
            },
            "order_id": "5234234",
            "order_source": "ecommerce",
            "partial": false
          }
        end

        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.worldpay_merchant_id = worldpay_merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/sale_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Transaction.sale(body)

          expect(res).to be_a(Bckbn::Transaction::SaleResponse)
          expect(res.id).to eq("08f0e7f7-996b-4508-8a77-745096bb4aeb")
          expect(res.report_group).to eq("Default Report Group")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("83992306262569970")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2023-08-22T21:00:08")
          expect(res.post_date).to eq("2023-08-22")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("sale")
        end
      end

      context "with per request config" do
        let(:body) do
          {
            "id": "12345",
            "report_group": "ABC Division",
            "amount": 5000,
            "bill_to_address": {
              "name": "John Doe",
              "address_line_1": "123 Main St",
              "city": "Boston",
              "state": "MA",
              "country": "US",
              "zip": "12345",
              "email": "jsmith@someaddress.com",
              "phone": "555-123-4567"
            },
            "card": {
              "type": "MC",
              "number": "1234567890123456",
              "exp_date": "1223",
              "card_validation_num": "123"
            },
            "order_id": "5234234",
            "order_source": "ecommerce",
            "partial": false
          }
        end

        let(:config) do
          {
            access_token: access_token,
            api_version: api_version,
            api_base: api_base,
            worldpay_merchant_id: worldpay_merchant_id,
            source_ip_address: source_ip_address
          }
        end

        before do
          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/sale_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Transaction.sale(body, config)

          expect(res).to be_a(Bckbn::Transaction::SaleResponse)
          expect(res.id).to eq("08f0e7f7-996b-4508-8a77-745096bb4aeb")
          expect(res.report_group).to eq("Default Report Group")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("83992306262569970")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2023-08-22T21:00:08")
          expect(res.post_date).to eq("2023-08-22")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("sale")
        end
      end

      context "with applepay" do
        let(:body) do
          {
            "id": "12345",
            "report_group": "ABC Division",
            "amount": 5000,
            "bill_to_address": {
              "name": "John Doe",
              "address_line_1": "123 Main St",
              "city": "Boston",
              "state": "MA",
              "country": "US",
              "zip": "12345",
              "email": "jsmith@someaddress.com",
              "phone": "555-123-4567"
            },
            "cardholder_authentication": {
              "authentication_value": "666"
            },
            "card": {
              "type": "MC",
              "number": "1234567890123456",
              "exp_date": "1223",
              "card_validation_num": "123"
            },
            "order_id": "5234234",
            "order_source": "applepay",
            "partial": false
          }
        end

        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.worldpay_merchant_id = worldpay_merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/sale_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Transaction.sale(body)

          expect(res).to be_a(Bckbn::Transaction::SaleResponse)
          expect(res.id).to eq("08f0e7f7-996b-4508-8a77-745096bb4aeb")
          expect(res.report_group).to eq("Default Report Group")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("83992306262569970")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2023-08-22T21:00:08")
          expect(res.post_date).to eq("2023-08-22")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("sale")
        end
      end

      context "with no address" do
        let(:body) do
          {
            "id": "12345",
            "report_group": "ABC Division",
            "amount": 5000,
            "bill_to_address": {
              "name": "John Doe",
              "address_line_1": nil,
              "city": nil,
              "state": nil,
              "country": nil,
              "zip": nil,
              "email": nil,
              "phone": nil
            },
            "card": {
              "type": "MC",
              "number": "1234567890123456",
              "exp_date": "1223",
              "card_validation_num": "123"
            },
            "order_id": "5234234",
            "order_source": "ecommerce",
            "partial": false
          }
        end

        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.worldpay_merchant_id = worldpay_merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/sale_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Transaction.sale(body)

          expect(res).to be_a(Bckbn::Transaction::SaleResponse)
          expect(res.id).to eq("08f0e7f7-996b-4508-8a77-745096bb4aeb")
          expect(res.report_group).to eq("Default Report Group")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("83992306262569970")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2023-08-22T21:00:08")
          expect(res.post_date).to eq("2023-08-22")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("sale")
        end
      end
    end
  end

  describe "::void" do
    let(:path) { "/transactions/void" }
    let(:body) do
      {
        id: "12345",
        report_group: "ABC Division",
        litle_txn_id: "13254123434"
      }
    end

    context "when 200" do
      context "with global config" do
        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.worldpay_merchant_id = worldpay_merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/void_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Transaction.void(body)

          expect(res).to be_a(Bckbn::Transaction::VoidResponse)
          expect(res.id).to eq "12345"
          expect(res.report_group).to eq "Void Division"
          expect(res.litle_txn_id).to eq "1100026202"
          expect(res.response).to eq "000"
          expect(res.response_time).to eq "2017-06-16T19:43:38"
          expect(res.post_date).to eq "2017-06-16"
          expect(res.message).to eq "Approved"
          expect(res.type).to eq "void"
        end
      end

      context "with per request config" do
        before do
          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/void_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            api_version: api_version,
            api_base: api_base,
            worldpay_merchant_id: worldpay_merchant_id,
            source_ip_address: source_ip_address
          }
        end

        it "returns response object" do
          res = Bckbn::Transaction.void(body, config)

          expect(res).to be_a(Bckbn::Transaction::VoidResponse)
          expect(res.id).to eq "12345"
          expect(res.report_group).to eq "Void Division"
          expect(res.litle_txn_id).to eq "1100026202"
          expect(res.response).to eq "000"
          expect(res.response_time).to eq "2017-06-16T19:43:38"
          expect(res.post_date).to eq "2017-06-16"
          expect(res.message).to eq "Approved"
          expect(res.type).to eq "void"
        end
      end
    end
  end

  describe "::echeck_credit" do
    let(:path) { "/transactions/echeck_credit" }
    let(:body) do
      {
        id: "12345",
        report_group: "ABC Division",
        litle_txn_id: "13254123434",
        amount: 5000
      }
    end

    context "when 200" do
      context "with global config" do
        before do
          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/echeck_credit_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            api_version: api_version,
            api_base: api_base,
            worldpay_merchant_id: worldpay_merchant_id,
            source_ip_address: source_ip_address
          }
        end

        it "returns response object" do
          res = Bckbn::Transaction.echeck_credit(body, config)

          expect(res).to be_a(Bckbn::Transaction::EcheckCreditResponse)
          expect(res.id).to eq("AX54321678")
          expect(res.report_group).to eq("RG27")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("84568456")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2017-04-01T10:24:31")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("echeck_credit")
        end
      end

      context "with per request config" do
        before do
          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/echeck_credit_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            api_version: api_version,
            api_base: api_base,
            worldpay_merchant_id: worldpay_merchant_id,
            source_ip_address: source_ip_address
          }
        end

        it "returns response object" do
          res = Bckbn::Transaction.echeck_credit(body, config)

          expect(res).to be_a(Bckbn::Transaction::EcheckCreditResponse)
          expect(res.id).to eq("AX54321678")
          expect(res.report_group).to eq("RG27")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("84568456")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2017-04-01T10:24:31")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("echeck_credit")
        end
      end
    end
  end

  describe "::echeck_sale" do
    let(:path) { "/transactions/echeck_sale" }
    let(:body) do
      {
        "id": "12345",
        "report_group": "ABC Division",
        "amount": 5000,
        "bill_to_address": {
          "name": "John Doe",
          "address_line_1": "123 Main St",
          "city": "Boston",
          "state": "MA",
          "country": "US",
          "zip": "12345",
          "email": "jsmith@someaddress.com",
          "phone": "555-123-4567"
        },
        "echeck": {
          "acc_type": "Checking",
          "acc_num": "5186005800001012",
          "routing_num": "000010101",
          "check_num": nil
        },
        "order_id": "5234234",
        "order_source": "ecommerce"
      }
    end

    context "when 200" do
      context "with global config" do
        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.worldpay_merchant_id = worldpay_merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/echeck_sale_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Transaction.echeck_sale(body)
          expect(res).to be_a(Bckbn::Transaction::EcheckSaleResponse)
          expect(res.id).to eq("AX54321678")
          expect(res.report_group).to eq("ABC Division")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("84568456")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2016-09-01T10:24:31")
          expect(res.post_date).to eq("")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("echeck_sale")
        end
      end

      context "with per request config" do
        before do
          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/echeck_sale_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            api_version: api_version,
            api_base: api_base,
            worldpay_merchant_id: worldpay_merchant_id,
            source_ip_address: source_ip_address
          }
        end

        it "returns response object" do
          res = Bckbn::Transaction.echeck_sale(body, config)

          expect(res).to be_a(Bckbn::Transaction::EcheckSaleResponse)
          expect(res.id).to eq("AX54321678")
          expect(res.report_group).to eq("ABC Division")
          expect(res.customer_id).to eq("")
          expect(res.litle_txn_id).to eq("84568456")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2016-09-01T10:24:31")
          expect(res.post_date).to eq("")
          expect(res.message).to eq("Approved")
          expect(res.account_updater).to eq(nil)
          expect(res.type).to eq("echeck_sale")
        end
      end
    end

    context "when 400" do
      before do
        Bckbn.access_token = access_token
        Bckbn.api_version = api_version
        Bckbn.api_base = api_base
        Bckbn.worldpay_merchant_id = worldpay_merchant_id
        Bckbn.source_ip_address = source_ip_address
        Bckbn.log_level = :error

        stub_request(:post, api_base + path)
          .to_return(
            body: fixture("transactions/echeck_sale_400.json"),
            status: 400
          )
      end

      it "returns error object" do
        expect do
          Bckbn::Transaction.echeck_sale(body)
        end.to raise_error(
          Bckbn::Connection::HttpBadRequest,
          /["Key: 'EcheckSaleRequest.BillToAddress.Zip' Error:Field validation for 'Zip' failed on the 'max' tag"]/
        )
      end

      it "has logs" do
        Bckbn::Transaction.echeck_sale(body)
      rescue StandardError => e
        expect(e.message).to_not be_empty
        expect(e.logs).to_not be_empty
      end
    end
  end

  describe "::echeck_void" do
    let(:path) { "/transactions/echeck_void" }
    let(:body) do
      {
        id: "12345",
        report_group: "ABC Division",
        litle_txn_id: "13254123434"
      }
    end

    context "when 200" do
      context "with global config" do
        before do
          Bckbn.access_token = access_token
          Bckbn.api_version = api_version
          Bckbn.api_base = api_base
          Bckbn.worldpay_merchant_id = worldpay_merchant_id
          Bckbn.source_ip_address = source_ip_address
          Bckbn.log_level = log_level

          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/echeck_void_200.json"),
              status: 200
            )
        end

        it "returns response object" do
          res = Bckbn::Transaction.echeck_void(body)

          expect(res).to be_a(Bckbn::Transaction::EcheckVoidResponse)
          expect(res.id).to eq("101")
          expect(res.report_group).to eq("001601")
          expect(res.litle_txn_id).to eq("21200000026600")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2017-06-17T21:20:50")
          expect(res.post_date).to eq("")
          expect(res.message).to eq("Approved")
          expect(res.type).to eq("echeck_void")
        end
      end

      context "with per request config" do
        before do
          stub_request(:post, api_base + path)
            .with(headers: headers, body: body.to_json)
            .to_return(
              body: fixture("transactions/echeck_void_200.json"),
              status: 200
            )
        end

        let(:config) do
          {
            access_token: access_token,
            api_version: api_version,
            api_base: api_base,
            worldpay_merchant_id: worldpay_merchant_id,
            source_ip_address: source_ip_address
          }
        end

        it "returns response object" do
          res = Bckbn::Transaction.echeck_void(body, config)

          expect(res).to be_a(Bckbn::Transaction::EcheckVoidResponse)
          expect(res.id).to eq("101")
          expect(res.report_group).to eq("001601")
          expect(res.litle_txn_id).to eq("21200000026600")
          expect(res.response).to eq("000")
          expect(res.response_time).to eq("2017-06-17T21:20:50")
          expect(res.post_date).to eq("")
          expect(res.message).to eq("Approved")
          expect(res.type).to eq("echeck_void")
        end
      end
    end
  end
end
