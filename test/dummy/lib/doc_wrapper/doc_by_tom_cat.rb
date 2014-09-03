class DocWrapper::DocByTomCat

  def self.to_target_doc src
    {
      tom: 'is a cat',
      jerry: src[:rat]
    }
  end

end