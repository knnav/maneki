module Utils
  class Banners
    def self.available_banners
      [
        <<-'EOF',
    /\_____/\
   /  o   o  \
  ( ==  ^  == )
   )         (
  (           )
 ( (  )   (  ) )
(__(__)___(__)__)
EOF
<<-'EOF',
    /\_____/\
   /  *   *  \
  ( ==  ^  == )
   )         (
  (           )
 ( (  )   (  ) )
(__(__)___(__)__)
EOF
      ]
    end
  end
end
