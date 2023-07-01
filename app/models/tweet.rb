class Tweet < ApplicationRecord
include PgSearch::Model

    pg_search_scope :search_full_text, against:{
        description: 'A',
        user_name: 'B'
    },
    using: {
        tsearch: {
            prefix: true,
            any_word: true,
            dictionary: "spanish"
    
    }

    }
end
