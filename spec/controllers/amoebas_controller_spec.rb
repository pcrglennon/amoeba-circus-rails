require 'rails_helper'

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

RSpec.describe AmoebasController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Amoeba. As you add validations to Amoeba, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    juggling = Talent.create(:name => "Juggling")
    {:name => "Bob", :generation => 1, :talent => juggling}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AmoebasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all amoebas as @amoebas" do
      amoeba = Amoeba.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:amoebas)).to eq([amoeba])
    end
  end

  describe "GET show" do
    it "assigns the requested amoeba as @amoeba" do
      amoeba = Amoeba.create! valid_attributes
      get :show, {:id => amoeba.to_param}, valid_session
      expect(assigns(:amoeba)).to eq(amoeba)
    end
  end

  describe "GET new" do
    it "assigns a new amoeba as @amoeba" do
      get :new, {}, valid_session
      expect(assigns(:amoeba)).to be_a_new(Amoeba)
    end
  end

  describe "GET edit" do
    it "assigns the requested amoeba as @amoeba" do
      amoeba = Amoeba.create! valid_attributes
      get :edit, {:id => amoeba.to_param}, valid_session
      expect(assigns(:amoeba)).to eq(amoeba)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Amoeba" do
        expect {
          post :create, {:amoeba => valid_attributes}, valid_session
        }.to change(Amoeba, :count).by(1)
      end

      it "assigns a newly created amoeba as @amoeba" do
        post :create, {:amoeba => valid_attributes}, valid_session
        expect(assigns(:amoeba)).to be_a(Amoeba)
        expect(assigns(:amoeba)).to be_persisted
      end

      it "redirects to the created amoeba" do
        post :create, {:amoeba => valid_attributes}, valid_session
        expect(response).to redirect_to(Amoeba.last)
      end
    end

  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        acrobat = Talent.create(:name => "Acrobat")
        {:name => "Bobby", :talent => acrobat}
      }

      it "updates the requested amoeba" do
        amoeba = Amoeba.create! valid_attributes
        put :update, {:id => amoeba.to_param, :amoeba => new_attributes}, valid_session
        amoeba.reload
      end

      it "assigns the requested amoeba as @amoeba" do
        amoeba = Amoeba.create! valid_attributes
        put :update, {:id => amoeba.to_param, :amoeba => valid_attributes}, valid_session
        expect(assigns(:amoeba)).to eq(amoeba)
      end

      it "redirects to the amoeba" do
        amoeba = Amoeba.create! valid_attributes
        put :update, {:id => amoeba.to_param, :amoeba => valid_attributes}, valid_session
        expect(response).to redirect_to(amoeba)
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested amoeba" do
      amoeba = Amoeba.create! valid_attributes
      expect {
        delete :destroy, {:id => amoeba.to_param}, valid_session
      }.to change(Amoeba, :count).by(-1)
    end

    it "redirects to the amoebas list" do
      amoeba = Amoeba.create! valid_attributes
      delete :destroy, {:id => amoeba.to_param}, valid_session
      expect(response).to redirect_to(amoebas_url)
    end
  end

end
