
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
