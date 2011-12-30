require './caesar.rb'

describe "caesar" do
  it "should encipher a message" do
    Caesar.encipher(2,"HELLO WORLD").should == "JGNNQ YQTNF"
  end

  it "should decipher a message" do
    Caesar.decipher(2,"JGNNQ YQTNF").should == "HELLO WORLD"
  end
end
