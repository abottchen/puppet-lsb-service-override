Puppet::Type.type(:service).provide(:lsb, :parent => :redhat, :source => :redhat) do

  def enable
    chkconfig(@resource[:name], "reset")
  rescue Puppet::ExecutionFailure => detail
    raise Puppet::Error, "Could not enable #{self.name}: #{detail}", detail.backtrace
  end
end
