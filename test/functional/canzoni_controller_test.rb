require 'test_helper'

class CanzoniControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Canzone.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Canzone.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Canzone.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to canzone_url(assigns(:canzone))
  end
  
  def test_edit
    get :edit, :id => Canzone.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Canzone.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Canzone.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Canzone.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Canzone.first
    assert_redirected_to canzone_url(assigns(:canzone))
  end
  
  def test_destroy
    canzone = Canzone.first
    delete :destroy, :id => canzone
    assert_redirected_to canzoni_url
    assert !Canzone.exists?(canzone.id)
  end
end
