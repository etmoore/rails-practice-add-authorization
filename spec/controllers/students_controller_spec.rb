require 'rails_helper'

describe StudentsController do
  describe '#index' do
    it 'redirects visitors to the login page' do
      get :index
      expect(response).to redirect_to(login_path)
    end

    it 'renders index for logged-in student' do
      student = Student.create! name: 'John', email: 'j@example.com', password: 'password'
      session[:student_id] = student.id
      get :index
      expect(response).to render_template('index')
    end
  end
end
