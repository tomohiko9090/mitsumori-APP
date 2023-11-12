require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one) # fixturesからテストデータをロード この書き方でロードできる
    @other_user = users(:two) # fixturesからテストデータをロード
  end

  test "should get index" do
    # get ranking_url # rails5.0の書き方
    # get :index, [user_id: 1] # ×
    # get :index, user_id: 1 # ○ この書き方が正しい
    # get :index, user_id: @user.id  # ○ rails4.0ならいける
    # get :index, id: @user.id  # ○ idでもいける

    get ranking_url, params: { user: 1 }  # ○ paramsはあることが推奨されている
    assert_response :success
  end

  test "should get new" do
    get signup_url # これは、ruotesで作られる
    assert_response :success
  end

  # 1.ユーザーレコードが1つ増えること、2.リダイレクトされることの2つをテストしている
  test "should create user" do
    # 1.以下で登録してユーザー増えるかなテスト('User.count', 1)と同じ意味
    assert_difference('User.count') do
      post signup_url, params: { user: { name: 'Test User', email: 'test@example.com', password: 'password', password_confirmation: 'password' } }
    end

    # 2. tasks_pathにリダイレクトできるか検証
    assert_redirected_to tasks_path
  end

  test "should show user" do
    get :show, param{id: @user.id} # 4.0ならこれでいける
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_user_url(@user)
  #   assert_response :success
  # end

  # test "should update user" do
  #   patch user_url(@user), params: { user: { name: 'Updated User', email: 'update@example.com', password: 'newpassword', password_confirmation: 'newpassword' } }
  #   assert_redirected_to tasks_path
  # end
end
