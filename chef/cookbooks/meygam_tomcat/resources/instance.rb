actions :create
default_action :create

attribute :ipv4_address, :name_attribute => true, :kind_of => String,
            :required => true, :regex => Resolv::IPv4::Regex
attribute :port_name       , :kind_of => String
attribute :port_number     , :kind_of => Fixnum, :default => 9100
attribute :port_description, :kind_of => String
attribute :snmp_enabled    , :kind_of => [ TrueClass, FalseClass ],
            :default => false
attribute :port_protocol, :kind_of => Fixnum, :default => 1, :equal_to => [1, 2]
