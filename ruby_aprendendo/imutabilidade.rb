name = "Ricardo"
# => "Ricardo"

name.object_id
# => 180

name.upcase     # IMUTÁVEL: a variável original não foi alterada
# => "RICARDO"

name.upcase.object_id   # um novo objeto foi criado na memória
# => 200

name            # a variável inicial não foi alterada
# => "Ricardo"

name.upcase!    # MUTÁVEL: a variável original foi alterada
# => "RICARDO"

name            # a variável original foi alterada
# => "RICARDO"

name.object_id  # o método não criou um novo objeto na memória
# => 180