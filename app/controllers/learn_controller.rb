class LearnController < ApplicationController
  def index
  end
  def create
    my_ask = params[:ask]
    my_answer = params[:answer]
    Talk.create(ask: my_ask, answer: my_answer)
    redirect_to '/learn'
  end
  def data
    @talks = Talk.all
    render layout: false
  end
  def destroy
    pp = Talk.find(params[:id])
    pp.destroy
    redirect_to '/data'
  end
  def edit
    @talks=Talk.find(params[:id])
  end

end
