class CrashReek
  def type_error_in_psych(text)
    text.gsub(/
      href=['"]
      (?<url>[^{].+?)
      ['"]
    /x) do
     "asdf"
    end
  end
end
