require 'test_helper'

class SourceKeywordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @source_keyword = source_keywords(:one)
  end

  test "should get index" do
    get source_keywords_url
    assert_response :success
  end

  test "should get new" do
    get new_source_keyword_url
    assert_response :success
  end

  test "should create source_keyword" do
    assert_difference('SourceKeyword.count') do
      post source_keywords_url, params: { source_keyword: { keyword_id: @source_keyword.keyword_id, source_id: @source_keyword.source_id } }
    end

    assert_redirected_to source_keyword_url(SourceKeyword.last)
  end

  test "should show source_keyword" do
    get source_keyword_url(@source_keyword)
    assert_response :success
  end

  test "should get edit" do
    get edit_source_keyword_url(@source_keyword)
    assert_response :success
  end

  test "should update source_keyword" do
    patch source_keyword_url(@source_keyword), params: { source_keyword: { keyword_id: @source_keyword.keyword_id, source_id: @source_keyword.source_id } }
    assert_redirected_to source_keyword_url(@source_keyword)
  end

  test "should destroy source_keyword" do
    assert_difference('SourceKeyword.count', -1) do
      delete source_keyword_url(@source_keyword)
    end

    assert_redirected_to source_keywords_url
  end
end
