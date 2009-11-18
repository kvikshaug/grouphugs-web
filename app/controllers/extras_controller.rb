class ExtrasController < ApplicationController
  def logs

    if(params['full'])
      maxlines = 10000
    else
      maxlines = 40
    end
    @log = ""

    # first count the number of lines
    counter = 0
    File.open("/home/murray/gh/log-current", "r") do |log|
      while(log.gets != nil)
        counter = counter + 1
      end
    end

    if(counter > maxlines)
      skip = counter - maxlines
    else
      skip = 0
    end

    # now add only the specified number of lines
    File.open("/home/murray/gh/log-current", "r") do |log|
      while(line = log.gets)
        if skip > 0
          skip = skip - 1
          next
        end
        @log += line
      end
    end

    render :layout => 'empty'
  end

  def uploads
    @uploads = Uploads.find(:all, :order => "id desc")
    render :layout => 'empty'
  end
end
