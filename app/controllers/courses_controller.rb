class CoursesController < ApplicationController

    def index
        @courses = Course.includes(enrollments: :user).all
        render layout: false
    end



 

end
