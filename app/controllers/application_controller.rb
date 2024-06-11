class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def exercise1
    # 【要件】
    #  1. 注文されていないすべての料理を@foodsに代入すること
    #  2. left_outer_joinsを使うこと
    #  3. 以下のコードに続ける形で記述すること
    @foods = Food.left_outer_joins(:orders).where(orders: { id: nil })
  end

  def exercise2
    # 【要件】
    #  1. 注文されていない料理を提供しているすべてのお店が@shopsに代入されていること
    @shops = Shop.left_outer_joins()

  end

  def exercise3
    # 【要件】
    #  1. 配達先の一番多い住所が@addressに代入されていること
    #  2. @addressにorders_countと呼びかけると注文の数を返すこと

  end

  def exercise4
    # 【要件】
    #  1. 一番お金を使っている顧客が@customerに代入されていること
    #  2. @customerにfoods_price_sumと呼びかけると合計金額を返すこと

  end

end
