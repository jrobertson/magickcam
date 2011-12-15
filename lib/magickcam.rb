#!/usr/bin/env ruby

# file: magickcam.rb

require 'rb_webcam'
require 'RMagick'

class MagickCam

  def initialize()
    @capture = Webcam.new 
  end

  def snapshot(filename='webcam.jpg')

    image = @capture.grab 
    width, height = image.size[:width], image.size[:height]
    img = Magick::Image.new width, height
    image.data.unpack("C*").each_slice(3).each_slice(width).with_index do |r, i|
      q = r.map {|b, g, r| Magick::Pixel.new r * 256, g * 256, b * 256, 0}
      img.store_pixels(0, i, width, 1, q)
    end
    img.format = 'jpg'
    img.write filename
  end

end
