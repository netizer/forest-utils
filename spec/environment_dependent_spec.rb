require "byebug"

describe "environment dependent tests" do
  describe "lamb" do
    let(:expected) do
      {
        "development" => {
          "adapter" => "postgresql",
          "pool" => 6,
          "url" => "http://data",
          "database" => "development_database"
        },
        "production" => {
          "adapter" => "postgresql",
          "pool" => 6,
          "url" => "http://data",
          "database" => "production_database",
          "username" => "username",
          "password" => "password"
        }
      }
    end

    it "processes a lamb file correctly" do
      result = `forest ../lamb-rb/fixtures/config.lamb --env "POOL=6;DATABASE_URL="http://data";DATABASE_PASSWORD=password"`
      data = eval(result)
      expect(data).to eq(expected)
    end
  end

  describe "groundcover" do
    it "processes a groundcover file correctly" do
      result = `forest ../groundcover-rb/fixtures/small.gc`
      data = eval(result)
      expect(data).to eq(expected)
    end
  end
end
