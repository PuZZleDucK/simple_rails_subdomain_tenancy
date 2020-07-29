
class Company < ApplicationRecord
    # validates_format_of :subdomain, with: /^[a-z0-9_]+$/, message: "must be lowercase alphanumerics only"
    validates_length_of :subdomain, maximum: 32, message: "exceeds maximum of 32 characters"
    validates_exclusion_of :subdomain, in: ['www', 'mail', 'ftp'], message: "is not available"
end
