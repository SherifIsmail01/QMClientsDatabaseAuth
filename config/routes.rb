Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :auditors do
  #   resources :clients, only: [:index, :new, :create]
  # end

  root to: 'users#index', as: 'home_page'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/qm_resources', to: 'qm_resources#index', as: 'qm_resources'
  get '/qm_resources/new', to: 'qm_resources#new', as: 'new_qm_resource'
  post '/qm_resources', to: 'qm_resources#create', as: 'create_qm_resource'
  get '/qm_resources/:id', to: 'qm_resources#show', as: 'qm_resource'


  # get '/clients', to: 'clients#index', as: 'clients'

  get '/auditors', to: 'auditors#index', as: 'auditors'
  get '/auditors/new', to: 'auditors#new', as: 'new_auditor'
  post '/auditors', to: 'auditors#create', as: 'create_auditor'
  get '/auditors/:id', to: 'auditors#show', as: 'auditor'
  get '/auditors/:id/edit', to: 'auditors#edit', as: 'edit_auditor'
  patch '/auditors/:id', to: 'auditors#update', as: 'update_auditor'
  delete '/auditors/:id', to: 'auditors#destroy', as: 'delete_auditor'

  get '/auditors/:id/clients', to: 'clients#index', as: 'auditor_clients'

  get '/auditors/:id/clients/new', to: 'clients#new', as: 'new_auditor_client'
  post '/auditors/:id/clients', to: 'clients#create', as: 'create_client'

  get '/clients/:id', to: 'clients#show', as: 'client_profile'

  get '/clients/:id/edit', to: 'clients#edit', as: 'edit_client'
  patch '/clients/:id', to: 'clients#update', as: 'update_client'
  delete '/clients/:id', to: 'clients#destroy', as: 'delete_client'


  get '/clients/:id/years', to: 'years#index', as: 'client_years'
  get '/clients/:id/years/new', to: 'years#new', as: 'new_client_year'
  post '/clients/:id/years', to: 'years#create', as: 'create_year'
  get '/years/:id', to: 'years#show', as: 'year'
  delete '/years/:id', to: 'years#destroy', as: 'delete_year'



  get '/years/:id/bank_statements', to: 'bank_statements#index', as: 'bank_statements'
  get '/years/:id/bank_statements/new', to: 'bank_statements#new', as: 'new_bank_statement'
  post '/years/:id/bank_statement', to: 'bank_statements#create', as: 'create_bank_statement'
  get '/bank_statements/:id', to: 'bank_statements#show', as: 'show_bank_statement'
  delete '/bank_statements/:id', to: 'bank_statements#destroy', as: 'delete_bank_statements'

  resources :bank_statements do
    collection { post :import }
  end

  get '/years/:id/qb_reports', to: 'qb_reports#index', as: 'qb_reports'
  get '/years/:id/qb_reports/new', to: 'qb_reports#new', as: 'new_qb_report'
  post '/years/:id/qb_report', to: 'qb_reports#create', as: 'create_qb_report'
  get '/qb_reports/:id', to: 'qb_reports#show', as: 'show_qb_report'
  delete '/qb_reports/:id', to: 'qb_reports#destroy', as: 'delete_qb_report'

  resources :qb_reports do
    collection { post :import }
  end

  get '/years/:id/confirmations', to: 'confirmations#index', as: 'confirmations'
  get '/years/:id/confirmations/new', to: 'confirmations#new', as: 'new_confirmation'
  post '/years/:id/confirmation', to: 'confirmations#create', as: 'create_confirmation'
  get '/confirmations/:id', to: 'confirmations#show', as: 'show_confirmation'
  delete '/confirmations/:id', to: 'confirmations#destroy', as: 'delete_confirmation'

  resources :confirmations do
    collection { post :import }
  end

  get '/years/:id/testings', to: 'testings#index', as: 'testings'
  get '/years/:id/testings/new', to: 'testings#new', as: 'new_testing'
  post '/years/:id/testing', to: 'testings#create', as: 'create_testing'
  get '/testings/:id', to: 'testings#show', as: 'show_testing'
  delete '/testings/:id', to: 'testings#destroy', as: 'delete_testing'

  resources :testings do
    collection { post :import }
  end

  get '/years/:id/schedules', to: 'schedules#index', as: 'schedules'
  get '/years/:id/schedules/new', to: 'schedules#new', as: 'new_schedule'
  post '/years/:id/schedule', to: 'schedules#create', as: 'create_schedule'
  get '/schedules/:id', to: 'schedules#show', as: 'show_schedule'
  delete '/schedules/:id', to: 'schedules#destroy', as: 'delete_schedule'

  resources :schedules do
    collection { post :import }
  end

  get '/years/:id/bod_munites', to: 'bod_munites#index', as: 'bod_munites'
  get '/years/:id/bod_munites/new', to: 'bod_munites#new', as: 'new_bod_munites'
  post '/years/:id/bod_munite', to: 'bod_munites#create', as: 'create_bod_munites'
  get '/bod_munites/:id', to: 'bod_munites#show', as: 'show_bod_munites'
  delete '/bod_munites/:id', to: 'bod_munites#destroy', as: 'delete_bod_munites'

  resources :bod_munites do
    collection { post :import }
  end

  get '/years/:id/report_drafts', to: 'report_drafts#index', as: 'report_drafts'
  get '/years/:id/report_drafts/new', to: 'report_drafts#new', as: 'new_report_draft'
  post '/years/:id/report_draft', to: 'report_drafts#create', as: 'create_report_draft'
  get '/report_drafts/:id', to: 'report_drafts#show', as: 'show_report_draft'
  delete '/report_drafts/:id', to: 'report_drafts#destroy', as: 'delete_report_draft'

  resources :report_drafts do
    collection { post :import }
  end

  get '/years/:id/report_packages', to: 'report_packages#index', as: 'report_packages'
  get '/years/:id/report_packages/new', to: 'report_packages#new', as: 'new_report_package'
  post '/years/:id/report_package', to: 'report_packages#create', as: 'create_report_package'
  get '/report_packages/:id', to: 'report_packages#show', as: 'show_report_package'
  delete '/report_packages/:id', to: 'report_packages#destroy', as: 'delete_report_package'

  resources :report_packages do
    collection { post :import }
  end

  get '/years/:id/apgs', to: 'apgs#index', as: 'apgs'
  get '/years/:id/apgs/new', to: 'apgs#new', as: 'new_apg'
  post '/years/:id/apg', to: 'apgs#create', as: 'create_apg'
  get '/apgs/:id', to: 'apgs#show', as: 'show_apg'
  delete '/apgs/:id', to: 'apgs#destroy', as: 'delete_apg'

  resources :apgs do
    collection { post :import }
  end

  get '/years/:id/permenants', to: 'permenants#index', as: 'permenants'
  get '/years/:id/permenants/new', to: 'permenants#new', as: 'new_permenant'
  post '/years/:id/permenant', to: 'permenants#create', as: 'create_permenant'
  get '/permenants/:id', to: 'permenants#show', as: 'show_permenant'
  delete '/permenants/:id', to: 'permenants#destroy', as: 'delete_permenant'

  resources :permenants do
    collection { post :import }
  end

  get '/years/:id/other_files', to: 'other_files#index', as: 'other_files'
  get '/years/:id/other_files/new', to: 'other_files#new', as: 'new_other_file'
  post '/years/:id/other_file', to: 'other_files#create', as: 'create_other_file'
  get '/other_files/:id', to: 'other_files#show', as: 'show_other_file'
  delete '/other_files/:id', to: 'other_files#destroy', as: 'delete_other_file'

  resources :other_files do
    collection { post :import }
  end

  get '/years/:id/portals', to: 'portals#index', as: 'portals'
  get '/years/:id/portals/new', to: 'portals#new', as: 'new_portal'
  post '/years/:id/portal', to: 'portals#create', as: 'create_portal'
  get '/portals/:id', to: 'portals#show', as: 'show_portal'
  delete '/portals/:id', to: 'portals#destroy', as: 'delete_portal'

  resources :portals do
    collection { post :import }
  end

  get '/years/:id/taxes', to: 'taxes#index', as: 'taxes'
  get '/years/:id/taxes/new', to: 'taxes#new', as: 'new_tax'
  post '/years/:id/tax', to: 'taxes#create', as: 'create_tax'
  get '/taxes/:id', to: 'taxes#show', as: 'show_tax'
  delete '/taxes/:id', to: 'taxes#destroy', as: 'delete_tax'

  resources :taxes do
    collection { post :import }
  end

  get '/years/:id/files_to_send_to_clients', to: 'files_to_send_to_clients#index', as: 'files_to_send_to_clients'
  get '/years/:id/files_to_send_to_clients/new', to: 'files_to_send_to_clients#new', as: 'new_files_to_send_to_client'
  post '/years/:id/files_to_send_to_client', to: 'files_to_send_to_clients#create', as: 'create_files_to_send_to_client'
  get '/files_to_send_to_clients/:id', to: 'files_to_send_to_clients#show', as: 'showfiles_to_send_to_clientt'
  delete '/files_to_send_to_clients/:id', to: 'files_to_send_to_clients#destroy', as: 'delete_files_to_send_to_client'

  resources :files_to_send_to_clients do
    collection { post :import }
  end


  get '/login', to: 'sessions#new', as:'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/sessions', to: 'sessions#create'

end
