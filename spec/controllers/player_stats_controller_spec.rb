require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PlayerStatsController do

  # This should return the minimal set of attributes required to create a valid
  # PlayerStat. As you add validations to PlayerStat, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PlayerStatsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all player_stats as @player_stats" do
      player_stat = PlayerStat.create! valid_attributes
      get :index, {}, valid_session
      assigns(:player_stats).should eq([player_stat])
    end
  end

  describe "GET show" do
    it "assigns the requested player_stat as @player_stat" do
      player_stat = PlayerStat.create! valid_attributes
      get :show, {:id => player_stat.to_param}, valid_session
      assigns(:player_stat).should eq(player_stat)
    end
  end

  describe "GET new" do
    it "assigns a new player_stat as @player_stat" do
      get :new, {}, valid_session
      assigns(:player_stat).should be_a_new(PlayerStat)
    end
  end

  describe "GET edit" do
    it "assigns the requested player_stat as @player_stat" do
      player_stat = PlayerStat.create! valid_attributes
      get :edit, {:id => player_stat.to_param}, valid_session
      assigns(:player_stat).should eq(player_stat)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PlayerStat" do
        expect {
          post :create, {:player_stat => valid_attributes}, valid_session
        }.to change(PlayerStat, :count).by(1)
      end

      it "assigns a newly created player_stat as @player_stat" do
        post :create, {:player_stat => valid_attributes}, valid_session
        assigns(:player_stat).should be_a(PlayerStat)
        assigns(:player_stat).should be_persisted
      end

      it "redirects to the created player_stat" do
        post :create, {:player_stat => valid_attributes}, valid_session
        response.should redirect_to(PlayerStat.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved player_stat as @player_stat" do
        # Trigger the behavior that occurs when invalid params are submitted
        PlayerStat.any_instance.stub(:save).and_return(false)
        post :create, {:player_stat => {}}, valid_session
        assigns(:player_stat).should be_a_new(PlayerStat)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PlayerStat.any_instance.stub(:save).and_return(false)
        post :create, {:player_stat => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested player_stat" do
        player_stat = PlayerStat.create! valid_attributes
        # Assuming there are no other player_stats in the database, this
        # specifies that the PlayerStat created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PlayerStat.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => player_stat.to_param, :player_stat => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested player_stat as @player_stat" do
        player_stat = PlayerStat.create! valid_attributes
        put :update, {:id => player_stat.to_param, :player_stat => valid_attributes}, valid_session
        assigns(:player_stat).should eq(player_stat)
      end

      it "redirects to the player_stat" do
        player_stat = PlayerStat.create! valid_attributes
        put :update, {:id => player_stat.to_param, :player_stat => valid_attributes}, valid_session
        response.should redirect_to(player_stat)
      end
    end

    describe "with invalid params" do
      it "assigns the player_stat as @player_stat" do
        player_stat = PlayerStat.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PlayerStat.any_instance.stub(:save).and_return(false)
        put :update, {:id => player_stat.to_param, :player_stat => {}}, valid_session
        assigns(:player_stat).should eq(player_stat)
      end

      it "re-renders the 'edit' template" do
        player_stat = PlayerStat.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PlayerStat.any_instance.stub(:save).and_return(false)
        put :update, {:id => player_stat.to_param, :player_stat => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested player_stat" do
      player_stat = PlayerStat.create! valid_attributes
      expect {
        delete :destroy, {:id => player_stat.to_param}, valid_session
      }.to change(PlayerStat, :count).by(-1)
    end

    it "redirects to the player_stats list" do
      player_stat = PlayerStat.create! valid_attributes
      delete :destroy, {:id => player_stat.to_param}, valid_session
      response.should redirect_to(player_stats_url)
    end
  end

end
