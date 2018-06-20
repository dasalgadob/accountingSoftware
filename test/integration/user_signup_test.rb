require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    doc = create( :document_type)
    @persona = FactoryBot.create( :person, document_type: doc )
  end

  test "invalid signup information" do
    get signup_path
    # Se valida que no hubo un cambio
    assert_no_difference 'User.count' do
      post users_path, params: { user: {
        username: "test1",
        password: "123456",
        password_confirmation: "123457",
        person_id: 1
      }

      }
    end
    assert_template 'users/new'  
    assert_select 'div#error_explanation'
  end

  test "valid signup_information" do
    get signup_path

    assert_difference 'User.count', 1 do
      post users_path, params: { user: {
        username: "test1",
        password: "123456",
        password_confirmation: "123456",
        person_id: @persona.id
        }
      }
    end  
  end  

end
