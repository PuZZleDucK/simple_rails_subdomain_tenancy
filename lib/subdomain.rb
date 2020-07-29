
class Subdomain
    def self.matches?(request)
        case request.subdomain
        when 'www', 'beddoes', '', nil
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
