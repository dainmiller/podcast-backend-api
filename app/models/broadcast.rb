class Broadcast < ApplicationRecord

  after_create do
    CrawlerApiTransaction.start do 
      CrawlerApi::Interface.broadcast self
    end
  end

end
