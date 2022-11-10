class CoursesController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/courses" do
    courses = Course.all
    courses.to_json
  end

  get "/courses/:id" do
    course = Course.find(params[:id])
    course.to_json
  end

  post "/courses" do
    course = Course.create(name: params[:course_name], course_code: params[:course_code], course_description: params[:course_description], teacher_id: params[:teacher_id], student_id: params[:student_id])
    course.to_json
  end

  patch "/courses/:id" do
    course = Course.find(params[:id])
    course.update(course_name: params[:course_name], course_code: params[:course_code], course_description: params[:course_description], teacher_id: params[:teacher_id], student_id: params[:student_id])
    course.to_json
  end

  delete "/courses/:id" do
    course = Course.find(params[:id])
    course.destroy
    course.to_json
  end


end
