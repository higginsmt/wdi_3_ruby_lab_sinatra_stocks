require 'yahoo_finance'
require 'pry'

# YahooFinance::get_quotes(YahooFinance::StandardQuote, 'AAPL') do |qt|
#     puts "QUOTING: #{qt.symbol}"
#     puts qt.to_s

# 	end

result = YahooFinance.quotes(['AAPL'], [:last_trade_price])

binding.pry