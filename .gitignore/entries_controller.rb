class EntriesController < ApplicationController

 def index
 	@entry = Entry.order("id")
	
 end

 def show
	
 end

 def new
 	@entry = Entry.new
 end

 def edit
 	@entry = Entry.find(params[:id])
	
 end

 def create
 	@entry = Entry.new(params[:entry])
 	@entry.save
 	@a = "旅行記を登録しました"
	
 end

 def update
 	@entry = Entry.find(params[:id])
 	@entry.assign_attributes(params[:entry])
 	@entry.save
 	@b = "編集が完了しました"
	
 end

 def destroy
 	@entry = Entry.find(params[:id])
 	@entry.destroy
 	@s  = "削除しました"
	
 end

end
