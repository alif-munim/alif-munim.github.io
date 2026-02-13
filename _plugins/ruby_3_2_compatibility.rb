# Monkey patch to add back tainted? and untaint methods removed in Ruby 3.2+
# This is needed for Jekyll 3.9.0 and Liquid 4.0.3 compatibility

unless Object.respond_to?(:tainted?)
  class Object
    def tainted?
      false
    end

    def untaint
      self
    end

    def trust
      self
    end

    def untrusted?
      false
    end
  end
end
