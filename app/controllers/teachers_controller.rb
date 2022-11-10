class TeachersController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/teachers" do
    teachers = Teacher.all
    teachers.to_json
  end

  get "/teachers/:id" do
    teacher = Teacher.find(params[:id])
    teacher.to_json
  end

  post "/teachers" do
    teacher = Teacher.create(name: params[:name], email: params[:email], phone_number: params[:phone_number])
    teacher.to_json
  end

  patch "/teachers/:id" do
    teacher = Teacher.find(params[:id])
    teacher.update(name: params[:name], email: params[:email], phone_number: params[:phone_number])
    teacher.to_json
  end


  delete "/teachers/:id" do
    teacher = Teacher.find(params[:id])
    teacher.destroy
    teacher.to_json
  end

end
