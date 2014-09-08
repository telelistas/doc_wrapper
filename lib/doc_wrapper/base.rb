# encoding: utf-8
require 'ds_hash'
module DocWrapper::Base
    
  def self.to_target_doc src , opts={}
    wrapper = wrapper_target src, opts
    wrapper.to_target_doc src
  end
  
  def self.wrapper_target src, opts={}
    doc_origem = infer_doc_origem src, opts
    klass_str = klass_name doc_origem, opts
    klass_str.constantize
  end


private

  def self.klass_name origem, opts={}
    
    def_opts = Rails.configuration.doc_wrapper if Rails.configuration.respond_to? 'doc_wrapper'
    
    opts = def_opts.merge(opts) if def_opts

    modulle = "#{opts[:module].to_s.underscore}::" if opts[:module]
    prefix = "#{opts[:prefix]}_" if opts[:prefix]
    sufix = "_#{opts[:sufix]}" if opts[:sufix]

   
    prefix = "DocBy" unless prefix
    modulle = "DocWrapper::" unless modulle
    
    "#{modulle}#{prefix.camelize}#{origem.camelize}#{sufix}".camelize
  end

  def self.infer_doc_origem src, opts
    origem = opts[:origin] || opts[:origem] || opts[:owner] || opts[:doc]
    unless origem
      if src.is_a? Hash
        origem = src[:origin] || src[:origem] || src[:owner] || src[:doc]
      else
        origem = src
      end
    end
    origem = origem.to_s.underscore.strip.gsub(/-/, "_")
    origem
  end
end
