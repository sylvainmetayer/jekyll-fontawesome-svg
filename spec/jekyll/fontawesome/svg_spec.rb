RSpec.describe Jekyll::FontAwesome::Svg do
  it "has a version number" do
    expect(Jekyll::FontAwesome::Svg::VERSION).not_to be nil
  end

  it "create an icon" do
    expect(Jekyll::FontAwesome::Svg::FontAwesomeIcon.new("fab.fa-twitter").value) == "fab.fa-twitter"
  end

  it "can be mapped to the brands folder" do
    expect(Jekyll::FontAwesome::Svg::FontAwesomeIcon.new("fab.fa-twitter").to_folder_name) == "brands"
  end

  it "can be mapped to the regular folder" do
    expect(Jekyll::FontAwesome::Svg::FontAwesomeIcon.new("far.fa-calendar").to_folder_name) == "regular"
  end

  it "can be mapped to the solid folder" do
    expect(Jekyll::FontAwesome::Svg::FontAwesomeIcon.new("fas.fa-anchor").to_folder_name) == "solid"
  end

  it "has a valid name" do
    expect(Jekyll::FontAwesome::Svg::FontAwesomeIcon.new("fas.fa-anchor").to_icon_name) == "anchor"
  end

end
