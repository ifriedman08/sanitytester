class TestsController < ApplicationController
  def new
    @test = Test.new
  end

  def create
    @test = Test.new

    if @test.save
      redirect_to '/tests/' + @test.id
    else
      flash.now[:errors] = @test.errors.full_messages
      render "new"
    end
  end

  def edit
    @test = Test.find(params[:id])
  end

  def update
    @test = Test.find(params[:id])

    if @test.update(test_params)
      redirect_to '/tests/' + @test.id
    else
      flash.now[:errors] = @test.errors.full_messages
      render "edit"
    end
  end

  def show
    @test = Test.find(params[:id])
  end

  def index
    @tests = Test.all
  end

  def destroy
    @test = Test.find(params[:id])
    @test.destroy
    render :index
  end

  def test_params
    params.require(:test).permit(:title, :pageUrl, :username, :email, :specFileUrl)
  end
end
