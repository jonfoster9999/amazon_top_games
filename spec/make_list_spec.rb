

describe 'AmazonTopGames::MakeList' do 
	
	it 'has a site' do
	site = AmazonTopGames::MakeSite.new("Facebook", "www.facebook.com")
	list = AmazonTopGames::MakeList.new(site)
	expect(list.site.name).to eq("Facebook")
	end
	
end

