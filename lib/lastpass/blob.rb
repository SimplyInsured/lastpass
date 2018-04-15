# Copyright (C) 2013 Dmitry Yakimenko (detunized@gmail.com).
# Licensed under the terms of the MIT license. See LICENCE for details.

module LastPass
    class Blob
        attr_reader :bytes,
                    :key_iteration_count,
                    :encrypted_private_key

        def initialize bytes, key_iteration_count, encrypted_private_key
            @bytes = bytes
            @key_iteration_count = key_iteration_count
            @encrypted_private_key = encrypted_private_key
        end

        def encryption_key username, password
            Fetcher.make_key username, password, key_iteration_count
        end
    end
end
