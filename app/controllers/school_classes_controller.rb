class SchoolClassesController < ApplicationController
	
	before_action :find_school_class, only: [:edit, :update, :show]

	def index

	end

	def show

	end

	def new
		@school_class = SchoolClass.new
	end

	def create
		@school_class = SchoolClass.create(params.require(:school_class))
		redirect_to(school_class_path(@school_class))
	end

	def edit

	end

	def update
		@school_class.update(params.require(:school_class))
		@school_class.save
		redirect_to(school_class_path(@school_class))
	end

	private

	def find_school_class
		@school_class = SchoolClass.find(params[:id])
	end
end
