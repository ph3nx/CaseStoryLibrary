json.array!(@casestories) do |casestory|
  json.extract! casestory, :id, :header, :segname, :custname, :countryname, :segurl, :custurl, :countryurl, :content, :imgurl
  json.url casestory_url(casestory, format: :json)
end
