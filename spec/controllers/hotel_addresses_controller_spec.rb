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

describe HotelAddressesController do

  # This should return the minimal set of attributes required to create a valid
  # HotelAddress. As you add validations to HotelAddress, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all hotel_addresses as @hotel_addresses" do
      hotel_address = HotelAddress.create! valid_attributes
      get :index
      assigns(:hotel_addresses).should eq([hotel_address])
    end
  end

  describe "GET show" do
    it "assigns the requested hotel_address as @hotel_address" do
      hotel_address = HotelAddress.create! valid_attributes
      get :show, :id => hotel_address.id.to_s
      assigns(:hotel_address).should eq(hotel_address)
    end
  end

  describe "GET new" do
    it "assigns a new hotel_address as @hotel_address" do
      get :new
      assigns(:hotel_address).should be_a_new(HotelAddress)
    end
  end

  describe "GET edit" do
    it "assigns the requested hotel_address as @hotel_address" do
      hotel_address = HotelAddress.create! valid_attributes
      get :edit, :id => hotel_address.id.to_s
      assigns(:hotel_address).should eq(hotel_address)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new HotelAddress" do
        expect {
          post :create, :hotel_address => valid_attributes
        }.to change(HotelAddress, :count).by(1)
      end

      it "assigns a newly created hotel_address as @hotel_address" do
        post :create, :hotel_address => valid_attributes
        assigns(:hotel_address).should be_a(HotelAddress)
        assigns(:hotel_address).should be_persisted
      end

      it "redirects to the created hotel_address" do
        post :create, :hotel_address => valid_attributes
        response.should redirect_to(HotelAddress.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved hotel_address as @hotel_address" do
        # Trigger the behavior that occurs when invalid params are submitted
        HotelAddress.any_instance.stub(:save).and_return(false)
        post :create, :hotel_address => {}
        assigns(:hotel_address).should be_a_new(HotelAddress)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        HotelAddress.any_instance.stub(:save).and_return(false)
        post :create, :hotel_address => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested hotel_address" do
        hotel_address = HotelAddress.create! valid_attributes
        # Assuming there are no other hotel_addresses in the database, this
        # specifies that the HotelAddress created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        HotelAddress.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => hotel_address.id, :hotel_address => {'these' => 'params'}
      end

      it "assigns the requested hotel_address as @hotel_address" do
        hotel_address = HotelAddress.create! valid_attributes
        put :update, :id => hotel_address.id, :hotel_address => valid_attributes
        assigns(:hotel_address).should eq(hotel_address)
      end

      it "redirects to the hotel_address" do
        hotel_address = HotelAddress.create! valid_attributes
        put :update, :id => hotel_address.id, :hotel_address => valid_attributes
        response.should redirect_to(hotel_address)
      end
    end

    describe "with invalid params" do
      it "assigns the hotel_address as @hotel_address" do
        hotel_address = HotelAddress.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HotelAddress.any_instance.stub(:save).and_return(false)
        put :update, :id => hotel_address.id.to_s, :hotel_address => {}
        assigns(:hotel_address).should eq(hotel_address)
      end

      it "re-renders the 'edit' template" do
        hotel_address = HotelAddress.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HotelAddress.any_instance.stub(:save).and_return(false)
        put :update, :id => hotel_address.id.to_s, :hotel_address => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested hotel_address" do
      hotel_address = HotelAddress.create! valid_attributes
      expect {
        delete :destroy, :id => hotel_address.id.to_s
      }.to change(HotelAddress, :count).by(-1)
    end

    it "redirects to the hotel_addresses list" do
      hotel_address = HotelAddress.create! valid_attributes
      delete :destroy, :id => hotel_address.id.to_s
      response.should redirect_to(hotel_addresses_url)
    end
  end

end
