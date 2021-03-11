require 'menu'

describe Menu do

  describe "ascii_render" do
    it "reads from the file banner.txt and puts to STDOUT" do
      expect { subject.ascii_render }.to output.to_stdout
    end
  end

  describe "print_menu" do
    it "prints out the menu for the player" do
      # allow(STDOUT).to receive(:print).with("\nPlease make a selection\n-----------------------\n1. New game\n2. Exit\n")
      expect { subject.print_menu }.to output.to_stdout
    end
  end

  describe "menu" do
    it "allows the user to select options" do
      allow($stdin).to receive(:gets) { "1" } # stubbing STDIN
      expect(subject.menu).to eq 1
    end
  end
end
