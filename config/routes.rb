Rails.application.routes.draw do
  get 'pages/welcome'

  resources :phones


  Rails.application.routes.draw do


    root to: "pages#welcome"



    get "/phones" => "phones#index"




    end

end
