# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

GameType.create(:name=>"正式賽")
GameType.create(:name=>"表演賽")
GameType.create(:name=>"賽外賽")
Status.create(:name=>"賽況轉播中！")
Status.create(:name=>"賽事進行中！")
Status.create(:name=>"即將開打")
Status.create(:name=>"已結束")
Status.create(:name=>"停賽")
Status.create(:name=>"因雨停賽")
Home.create(:id=>0,:school=>"未定")
Home.create(:id=>113,:school=>"交通大學")
Home.create(:id=>114,:school=>"清華大學")
Home.create(:id=>200,:school=>"平手")
