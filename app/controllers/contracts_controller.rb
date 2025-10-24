class ContractsController < ApplicationController
  before_action :create_partners, only: [:create]
  def create
    @contract = Contract.create(partners: [@partner_one, @partner_two])

    if @contract.save
      render json: @contract.as_json(include: :partners)
    else
      render json: { errors: { contract: @contract.errors.full_messages } }, status: :unprocessable_entity
    end
  end

  private

  def create_partners
    @partner_one = Partner.create(contract_params[:partner_one])
    @partner_two = Partner.create(contract_params[:partner_two])

    return if @partner_one.save && @partner_two.save

    errors = {}
    errors.merge!({ partner_one: @partner_one.errors.full_messages }) if @partner_one.errors.any?
    errors.merge!({ partner_two: @partner_two.errors.full_messages }) if @partner_two.errors.any?
    render json: { errors: }, status: :unprocessable_entity
  end

  def contract_params
    params.require(:contract).permit(:serial_number, partner_one: %i[name promise_id],
                                                     partner_two: %i[name promise_id])
  end
end
