module FlashesHelper
  FLASH_CLASSES = {alert:"danger",notice:"success",warning:"warining"}.freeze

  def flash_class(key)
    FLASH_CLASSES.fetch key.to_sys,key
  end

  def user.facing_flashes
    flash.to_hash.slice "alert","notice","warining"
  end
end
