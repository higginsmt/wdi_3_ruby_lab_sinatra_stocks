require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'yahoo_finance'

get '/:ticker' do |ticker|
	@ticker = ticker
	result = YahooFinance.quotes([@ticker.to_s], [:last_trade_price, :volume, :pe_ratio])
	@price = result[0].last_trade_price
	@volume = result[0].volume
	@pe_ratio = result[0].pe_ratio
	erb :ticker
end
