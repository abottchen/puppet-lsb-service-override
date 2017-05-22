# puppet-lsb-service-override
Simple override to add an "lsb" provider for the Puppet service type.
This provider is a duplicate of the "redhat" provider except it will
adhere to LSB headers when enabling services.

The enabled? function is not overridden, which means updates to an
initscript after it is being managed will not trigger an update.
