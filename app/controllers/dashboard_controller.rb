class DashboardController < ApplicationController
  def index
    @sales_count_last_year = Sale.group_by_month(:date, range: 12.months.ago.midnight..Time.now).order(date: :asc).sum(:price)

    @sales_quantity_last_year = Sale.group_by_month(:date, range: 12.months.ago.midnight..Time.now).order(date: :asc).count

    @sales_average_last_year = Sale.group_by_month(:date, range: 12.months.ago.midnight..Time.now).order(date: :asc).sum(:price)

    @sales_by_origin = Sale.group(:origin).sum(:price)

    @sales_by_blend = Sale.group(:name).sum(:price)
  end
end
