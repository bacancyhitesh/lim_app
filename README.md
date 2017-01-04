# One Job Street

One job street

### System Requirements:

* Ruby-2.3.0
* Rails 5.0.0.1

Rules of the Road

### Setup 

  1. Get the code.

    % git clone https://github.com/bacancy/onejobstreet5.git

  2. Setup your environment.

    % bin/setup

  3. Start Rails Server

    % bin/rails server
    
  4. Verify that the app is up and running.

    % open any restclient for API call
    % http://localhost:3000/api/v1/parser/fecher
    	* url: Provide any live website url to parse the content
    % http://localhost:3000/api/v1/parser/list
    	* call this api for listing previously parsed url's
