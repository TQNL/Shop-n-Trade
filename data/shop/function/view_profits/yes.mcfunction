execute store success score #test view_shop_profit_scores_toggle run scoreboard objectives setdisplay sidebar snt_total_profits
execute if score #test view_shop_profit_scores_toggle matches 0 run scoreboard objectives setdisplay sidebar
scoreboard players reset #test view_shop_profit_scores_toggle
