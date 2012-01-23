require 'spec_helper'

module PluginDemo
  describe Plugin do
    before(:all) { Adhearsion::Plugin.load_methods }
    let(:mock_call) { stub_everything 'Call', :originating_voip_platform => :punchblock }
    subject do
      Adhearsion::CallController.new mock_call
    end

    describe "#greet" do
      it "greets with the correct parameter" do
        subject.expects(:play).once.with("Hello, Luca")
        subject.greet "Luca"
      end
    end


  end
end
