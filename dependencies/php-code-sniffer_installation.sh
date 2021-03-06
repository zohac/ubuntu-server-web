#!/bin/bash
# Version 0.1

#
# PHP code sniffer
#
echo ''
echo -e "$GREEN"'###########################################'
echo -e "$GREEN"'#      PHP code sniffer installation      #'
echo -e "$GREEN"'###########################################'
echo ''
echo ''
echo -e "$NORMAL"

composer global require "squizlabs/php_codesniffer=*"

echo "
#
# PHP code sniffer
#
alias phpcs='$HOME/.composer/vendor/bin/phpcs'
alias phpcbf='$HOME/.composer/vendor/bin/phpcbf'" >>"$HOME"'/.bashrc'

# shellcheck source=$HOME/.bashrc
source "$HOME"'/.bashrc'

# example of use:
#
# php-cs-fixer fix src --rules=@Symfony,-@PSR1,-@PSR2
# php code sniffer :
#           - phpcs
#           - phpcbf
# phpmd src html codesize,unusedcode,naming --reportfile phpmd.html --suffixes php,phtml
