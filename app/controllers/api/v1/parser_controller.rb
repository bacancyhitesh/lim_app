class Api::V1::ParserController < ApplicationController
	protect_from_forgery with: :null_session
  
  # Parsing content based on provided URL
  def fecher
  	begin
      validate_url = URI.parse(params[:url])
      if validate_url.scheme.nil? && !validate_url.include?('http')
        render :json => {
          status: :failed,
          message: "Please provide valid url."
        }
        return
      end

  		doc = Nokogiri::HTML(open(params[:url]))
  		["h1", "h2", "h3"].each do |tag|
  			doc.css(tag).each do |content| 
  				ParsedContent.create!(tag_type: tag, content: content.text.squish, url: params[:url])
  			end
  		end

  		doc.css('a').each do |content| 
  			begin
  				url = content['href']
	  			uri = URI.parse(url)
  				ParsedContent.create!(tag_type: 'a', content: url, url: params[:url]) if !uri.scheme.nil? && uri.scheme.include?('http')	
  			rescue Exception => e			
  			end  			
  		end

  		render :json => {
  			status: :success,
  			message: "Data parsed successfully.",
        content: ParsedContent.find_each(batch_size: 500).map { |data|  
          {
            tagName: data.tag_type,
            content: data.content,
            url: data.url
          }
        }
	  	}
  	rescue Exception => e
  		render :json => {
	  		stutus: :failed,
	  		message: "Something went wrong."
	  	}
  	end
  end

  # Parsed Url's list
  def list
  	render :json => {
      status: :success,
  		parsed_urls: ParsedContent.distinct(:url).pluck(:url)
  	}
  end
end
