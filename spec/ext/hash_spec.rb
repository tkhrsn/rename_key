describe Hash do
  [
    [ { foo: "foo", bar: "bar", baz: "baz" }, { foo: :Foo, bar: :Bar }, { Foo: "foo", Bar: "bar", baz: "baz" } ],
    [ { foo: "foo", bar: "bar", baz: "baz" }, { "foo" => "foo", "bar" => "bar" }, { foo: "foo", bar: "bar", baz: "baz" } ],
    [ { foo: "foo", bar: "bar", baz: "baz" }, {}, { foo: "foo", bar: "bar", baz: "baz" } ],
  ].each do |base, arg, expect_value|
    describe "#rename_key" do
      context "#{base}.rename_key #{arg}" do
        subject { base.rename_key arg }
        it { is_expected.to eq expect_value }
      end
    end
  end

  context "キーワード引数の場合" do
    let(:base) { { foo: "foo", bar: "bar", baz: "baz" } }
    subject { base.rename_key(foo: :Foo, bar: :Bar) }

    it "キーの変換ができる" do
      is_expected.to eq({ Foo: "foo", Bar: "bar", baz: "baz" })
    end
  end

  context "引数無し" do
    let(:base) { { foo: "foo", bar: "bar", baz: "baz" } }
    subject { base.rename_key }
    it { is_expected.to eq base }
  end

  context "Hash以外の引数" do
    let(:base) { { foo: "foo", bar: "bar", baz: "baz" } }

    context "String" do
      let(:arg) { "Foo" }
      it { expect { base.rename_key arg }.to raise_error TypeError }
    end

    context "Integer" do
      let(:arg) { 1 }
      it { expect { base.rename_key arg }.to raise_error TypeError }
    end

    context "Array" do
      let(:arg) { ["foo", "bar", "baz"] }
      it { expect { base.rename_key arg }.to raise_error TypeError }
    end

    context "NilClass" do
      let(:arg) { nil }
      it { expect { base.rename_key arg }.to raise_error TypeError }
    end
  end
end
