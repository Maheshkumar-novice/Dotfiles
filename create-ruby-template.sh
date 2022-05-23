#!/usr/bin/bash

NAME=$1
echo "Creating... $NAME"

touch $NAME

echo "#!/usr/bin/env ruby" >> $NAME
echo "# frozen_string_literal: true" >> $NAME
echo "" >> $NAME

chmod 700 $NAME

code $NAME

echo "Created... $NAME"

