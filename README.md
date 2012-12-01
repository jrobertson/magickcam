#Using the Magickcam gem with rb_webcam built in

    require 'magickcam'

    capture = Webcam.new
    image = capture.grab
    image.save 'new_image.jpg'
    capture.close

There is no need to instantiate an object from the Magickcam class if all you want is to capture a webcam image. The Magickcam gem includes the latest code from the rb_webcam source code on GitHub whereas the rb_webcam gem (as of 1-Dec-2012) still does not.

## Prerequisites

You will need to install imagemagick, and opencv. Here's what I installed `apt-get install imagemagick libcv2.3 libcv-dev libopencv-highgui2.3 libopencv-highgui-dev`

## Resources

* [TyounanMOTI/rb_webcam](https://github.com/TyounanMOTI/rb_webcam)
* [Introducing the rb_webcam gem](http://www.jamesrobertson.eu/snippets/2011/12/14/2012hrs.html)

magickcam rmagick rb_webcam webcam gem
