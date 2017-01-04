# URL Parser

### System Requirements:

* Ruby 2.3.0
* Rails 5.0.1

Rules of the Road

### Setup 

  1. Get the code.

    % git clone https://github.com/bacancyhitesh/lim_app.git

  2. Setup your environment.

    % bin/setup

  3. Start Rails Server

    % bin/rails server
    
  4. Verify that the app is up and running.
	open any restclient for API call
  5. For parse the Url call below url with url parameter
   		http://localhost:3000/api/v1/parser/fecher
  6. Call below api for listing previously parsed url's
    % http://localhost:3000/api/v1/parser/list