
class Subdomain
    def self.matches?(request)
        case request.subdomain
        when 'www', 'beddoes', 'admin', 'ftp', 'portal', 'mail', 'mx', 'm', 'smtp', 'vpn', 'api', 'imap', 'pop', 'support', 'help', 'static', '', nil
            false
        else
           true
        end
    end
end

class NoSubdomain
    def self.matches?(request)
        request.subdomain.blank?
    end
end
