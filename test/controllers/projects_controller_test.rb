require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  context 'GET projects#show' do
    setup { get :show, :id => 1 }
    should render_template('show')
    should respond_with(200)
  end
end
