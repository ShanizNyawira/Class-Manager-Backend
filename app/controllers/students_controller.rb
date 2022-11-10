class StudentsController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/students" do
    students = Student.all
    students.to_json
  end

  get "/students/:id" do
    student = Student.find(params[:id])
    student.to_json
  end

  post "/students" do
    student = Student.create(name: params[:name], email: params[:email], age: params[:age])
    student.to_json
  end

  patch "/students/:id" do
    student = Student.find(params[:id])
    student.update(name: params[:name], email: params[:email], age: params[:age])
    student.to_json
  end

  delete "/students/:id" do
    student = Student.find(params[:id])
    student.destroy
    student.to_json
  end


end
