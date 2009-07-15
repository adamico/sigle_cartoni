require 'test_helper'

class CartoniControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Cartone.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Cartone.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Cartone.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to cartone_url(assigns(:cartone))
  end
  
  def test_edit
    get :edit, :id => Cartone.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Cartone.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Cartone.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Cartone.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Cartone.first
    assert_redirected_to cartone_url(assigns(:cartone))
  end
  
  def test_destroy
    cartone = Cartone.first
    delete :destroy, :id => cartone
    assert_redirected_to cartoni_url
    assert !Cartone.exists?(cartone.id)
  end
end
