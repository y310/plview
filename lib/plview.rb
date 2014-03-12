require 'plview/version'
require 'CFPropertyList'
require 'json'

module CFPropertyList
  class CFDictionary
    def to_hash
      hash = {}
      self.value.each do |key, value|
        if value.respond_to?(:to_hash)
          hash[key] = value.to_hash
        else
          hash[key] = value.value
        end
      end
      hash
    end
  end
end

module Plview
  BASE = "#{ENV['HOME']}/Library/Application\ Support/iPhone\ Simulator/"

  def versions
    @versions ||= Dir.glob(BASE + '*').reject {|path| path =~ /User$/ }.inject({}) {|hash, path|
      hash[path.sub(BASE, '')] = path
      hash
    }
  end

  def apps(version)
    @apps ||= Dir.glob("#{BASE}#{version}/Applications/**/*.app").inject({}) do |hash, path|
      hash[File.basename(path).sub(/.app/, '')] = File.dirname(path)
      hash
    end
  end

  def plists(path)
    @plists ||= Dir.glob("#{path}/Library/Preferences/*.plist").reject {|path| path =~ /PeoplePicker/ }.inject({}) do |hash, path|
      hash[File.basename(path)] = CFPropertyList::List.new(file: path)
      hash
    end
  end
end
