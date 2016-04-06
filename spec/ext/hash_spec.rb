describe Hash do
  describe "#rename_key" do
    let(:hash) do
      { foo: "foo", bar: "bar", baz: "baz" }
    end

    subject { hash.rename_key({ foo: :Foo, bar: :Bar }) }

    it do
      expect(subject).to eq({ Foo: "foo", Bar: "bar", baz: "baz" })
    end
  end
end
