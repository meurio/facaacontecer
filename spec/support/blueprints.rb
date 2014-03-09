require 'machinist/active_record'
require 'cpf_cnpj'

Invite.blueprint do
  user_id         { User.make!(cpf: CPF.generate).id }
  parent_user_id  { User.make!(cpf: CPF.generate).id }
  code            { sn }
end

User.blueprint do
  first_name        { "Juquinha" }
  last_name         { "Da Silva" }
  birthday          { "1988/11/12" }
  email             { "juquinha#{sn}@zip.net" }
  cpf               { CPF.generate }
  address_street    { "Rua Belisario Tavora 500" }
  address_extra     { "Laranjeiras" }
  address_number    { "100" }
  address_district  { "Laranjeiras" }
  city              { "Rio de Janeiro" }
  state             { "RJ" }
  country           { "BRA" }
  zipcode       { "78132-500" }
  phone             { "(21) 97137471" }
end

Subscription.blueprint do
  value       { 10 }
  code        { "TOKEN" }
  project     { Project.make! }
  subscriber  { User.make!(cpf: CPF.generate) }
  anonymous   { false }
  gift        { true }
end

Project.blueprint do
  title           { "Meu projeto" }
  video           { "http://www.youtube.com/embed/Ej5rGGTHy54" }
  goal            { 25000 }
  description     { "Minha descricao" }
  expiration_date { Date.current + 45.days }
end

PaymentInstruction.blueprint do
  code          { "6" }
  subscription  { Subscription.make! }
  status        { 'started' }
  paid_at       { nil }
end
