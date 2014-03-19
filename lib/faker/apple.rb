module Faker
  class Apple < Base
    flexible :apple

    class << self
      def os_version; fetch('apple.os_version'); end
      def os_name; fetch('apple.os_name'); end
      
      def os
        fetch('apple.os_version') + ' ' + fetch('apple.os_name')
      end
      
      def os_certification
        'OS X ' + fetch('apple.certification_type') + ' ' + os
      end
      
      
    end

  end
end
