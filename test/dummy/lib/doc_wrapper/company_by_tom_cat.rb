class DocWrapper::CompanyByTomCat

  def self.to_target_doc src
    {
      tom: 'is a cat',
      jerry: src[:rat],
      status: 'company by'
    }
  end

end