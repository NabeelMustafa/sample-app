class BudgetsController < ApplicationController
    before_action :load_kind_events

    def new
        @budget = Budget.new
    end

    def create
        @budget = Budget.new(budget_params)
        params[:customer_santander].nil? ? params[:customer_santander] = false : params[:customer_santander] = true
        if @budget.save
            begin
                BudgetMailer.budget_email(@budget).deliver_now
            rescue Errno::ECONNRESET => e
                Rails.logger.info "#{e.message}"
            end
            redirect_to successes_path
        else
            render json: @budget.errors, status: :unprocessable_entity
        end
    end

    private

    def budget_params
        params.require(:budget).permit(:customer_kind, :name, :email, :phone, :kind_event_id, :date_event, :invited_number, :description, :customer_santander)
    end

    def load_kind_events
        @kind_events = KindEvent.all.map{|kind_event| [kind_event.description, kind_event.id]}
    end

end

