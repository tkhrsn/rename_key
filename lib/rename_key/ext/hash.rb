class Hash
  def rename_key(rename_keys = {})
    self.reduce({}) do |res, (key, val)|
      if rename_keys.include?(key)
        res[rename_keys[key]] = val
      else
        res[key] = val
      end

      res
    end
  end
end
