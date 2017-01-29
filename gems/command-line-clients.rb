require 'tty'

prompt = TTY::Prompt.new
prompt.yes?('Do you like Ruby?')
# => Do you like Ruby? (Y/n)

# or ask to select from list

prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))
# =>
# Choose your destiny? (Use arrow keys, press Enter to select)
# ‣ Scorpion
#   Kano
#   Jaxc
