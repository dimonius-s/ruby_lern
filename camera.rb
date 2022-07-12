# frozen_string_literal: true

class Camera
  def load
    puts 'Winding film.'
  end

  def take_picture
    puts 'Triggering shutter'
  end
end

class DigitalCamera < Camera
  def load
    puts 'Inserting memory card.'
  end
end
