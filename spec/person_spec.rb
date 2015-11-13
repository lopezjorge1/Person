require_relative '../person'

describe "#new" do
	it "should create a new person instance" do	
		person = Person.new("Jorge")
		expect(person).to be_instance_of(Person)		
	end
end

describe "#first_name" do 
	it "should have a first name" do
		person = Person.new("Jorge")
		expect(person.first_name).to eql("Jorge") 
	end

	it "is passed into method" do
		person = Person.new("Bob")
		expect(person.first_name).not_to eql("Rich")
	end
end

describe "#age" do
	it "should return age" do
		person = Person.new("Jorge",20)
		expect(person.age).to eql(20)
	end

	it "should return default age" do
		person = Person.new("Jorge")
		expect(person.age).to eql(0)
	end
end