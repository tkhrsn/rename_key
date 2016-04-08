describe Hash do
  [
    [ { foo: "foo", bar: "bar", baz: "baz" }, { foo: :Foo, bar: :Bar }, { Foo: "foo", Bar: "bar", baz: "baz" } ],
  ].each do |base, arg, expect_value|
    describe "#rename_key" do
      context "#{base}.rename_key #{arg}" do
        subject { base.rename_key arg }
        it { is_expected.to eq expect_value }
      end
    end
  end
end
