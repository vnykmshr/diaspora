require File.dirname(__FILE__) + '/../spec_helper'

describe RequestsController do
  describe "profile" do
    it 'should fetch the public webfinger profile on request' do
      #post :create {:request => {:destination_url => 'tom@tom.joindiaspora.com'}
     
      url = RequestsController.diaspora_url('http://tom.joindiasproa.com')
      url.should == 'htto://tom.joindiaspora.com'


      url = RequestsController.diaspora_url('tom@tom.joindiaspora.com')
      url.should == 'http://tom.joindiaspora.com'
    end
  end
end
