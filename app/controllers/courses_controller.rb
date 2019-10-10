class CoursesController < ApplicationController
    set :views, 'app/views/courses'

    #index
    get "/courses" do
        @courses = Course.all
        erb :index
    end

    #show
    get "/courses/:id" do
        @course = Course.find(params[:id])
        erb :show
    end

    #edit
    get "/courses/:id/edit" do
        @course = Course.find(params[:id])
        erb :edit
    end

    #update
    patch "/courses/:id" do
        binding.pry
        @course = Course.find(params[:id])
        @course.name = params[:name]
        @course.professor = params[:professor]
        @course.credits = params[:credits]
        @course.save
        redirect "/courses/#{@course.id}"
    end

end