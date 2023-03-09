#!/bin/bash

# pidファイルが残っていると起動できないため、削除しておく
rm -f /myapp/tmp/pids/server.pid

# Bundle install
/myapp/bin/bundle install

# Rails起動
if [ "$RAILS_PRODUCTION_MODE" = '1' ]; then
    echo '##### migration start #####'
    /myapp/bin/rails db:migrate RAILS_ENV=production
    if [ $? -ne 0 ]; then
        echo 'Failed migration ...'
        exit 1
    fi
    echo '##### migration end #####'

    echo '##### assets:precompile start #####'
    /myapp/bin/rails assets:precompile RAILS_ENV=production
    if [ $? -ne 0 ]; then
        echo 'Failed assets compile ...'
        exit 1
    fi
    echo '##### assets:precompile end #####'

    /myapp/bin/rails s -p 3000 -b '0.0.0.0' -e production
else
    /myapp/bin/rails s -p 3000 -b '0.0.0.0'
fi

