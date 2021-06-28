class GreetingsController < ApplicationController
    def index
        # render plain: 'Greetings index'
        render plain: 'What do you want me to say???'
    end

    def hello
        render plain: 'Hello coding dojo'
    end

    def say_hello
        render plain: 'Saying hello'
    end

    def hello_joe
        render plain: 'Saying hello Joe!'
    end

    def hello_michael
        redirect_to "/say/hello/joe"
    end

    def times
        if session[:times] == nil
            session[:times] = 1
            times = session[:times]
        else
            times = session[:times]
        end
      
        render plain: "you visited this URL #{times} times"
        session[:times] += 1
    end

    def restart
        reset_session
        render plain: 'Destroyed the session!'
    end

end
