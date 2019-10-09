class CoursesController < Sinatra::Base
    set :views, 'app/views/courses'

    get "/courses" do
        @courses = Course.all
        erb :index
    end
end