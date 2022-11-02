sed '/{$/i #START FUNCTION' input.txt | sed '/}$/a #END FUNCTION'
