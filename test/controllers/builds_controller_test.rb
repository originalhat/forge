require 'test_helper'

class BuildsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @build = builds(:one)
  end

  test "should get index" do
    get builds_url
    assert_response :success
  end

  test "should get new" do
    get new_build_url
    assert_response :success
  end

  test "should create build" do
    assert_difference('Build.count') do
      post builds_url, params: { build: { branch: @build.branch, created_at: @build.created_at, finished_at: @build.finished_at, message: @build.message, scheduled_at: @build.scheduled_at, started_at: @build.started_at, state: @build.state, uuid: @build.uuid } }
    end

    assert_redirected_to build_url(Build.last)
  end

  test "should show build" do
    get build_url(@build)
    assert_response :success
  end

  test "should get edit" do
    get edit_build_url(@build)
    assert_response :success
  end

  test "should update build" do
    patch build_url(@build), params: { build: { branch: @build.branch, created_at: @build.created_at, finished_at: @build.finished_at, message: @build.message, scheduled_at: @build.scheduled_at, started_at: @build.started_at, state: @build.state, uuid: @build.uuid } }
    assert_redirected_to build_url(@build)
  end

  test "should destroy build" do
    assert_difference('Build.count', -1) do
      delete build_url(@build)
    end

    assert_redirected_to builds_url
  end
end
