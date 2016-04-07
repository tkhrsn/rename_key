class Hash
  def rename_key(rename_keys)
    return_hash = {}
    self.each do |self_key, self_value|
      if rename_keys.has_key?(self_key)
        self_key = rename_keys[self_key]
      end
      return_hash[self_key] = self_value
    end
    return_hash
  end
end
