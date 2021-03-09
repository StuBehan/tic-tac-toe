require 'menu'

describe Menu do

  describe "ascii_render" do
    it "reads from the file banner.txt and puts to STDOUT" do
      expect { subject.ascii_render }.to output.to_stdout
    end
  end
end
