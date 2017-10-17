class MembersController < ApplicationController
	
	def index
		@member = Member.order("id")
	end

	def show
		@member  = Member.find(params[:id])
	end

	def new
		@member = Member.new
	end

	def edit
		@member = Member.find(params[:id])
	end

	def create
		@member = Member.new(params[:member])
		@member.save
		@a = "登録が完了しました！"
	end

	def update
		@member = Member.find(params[:id])
		@member.assign_attributes(params[:member])
		@member.save
		@b = "データを更新しました"

	end

	def destroy
		@member = Member.find(params[:id])
		@member.destroy
		@c = "削除しました"
	end




	end
