Dado('que acesso a página de cadastro') do
    visit "https://hportal.webmotors.com.br/garagem/autopago/pesquisa?typesearch=vendedor&step=1&token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIzODgyIiwianRpIjoiMzM5MTU2YzctODc3Mi00ODFhLThjOWEtMTRiODc3ZmYzNzhmIiwiY2xpZW50IjoiMSIsImVtYWlsIjoibG8wRFROOEdlY0dHTnEyMG9aaHFsSGxsbHVUY0M4bzZKaUg4cncvSHVvUXZjUVE1TGl4YjR3PT0iLCJuYmYiOjE2MTY0MTkyMTEsImV4cCI6MTYxODIzMzYxMSwiaXNzIjoid2VibW90b3JzLmNvbS5iciIsImF1ZCI6IndlYm1vdG9ycy5jb20uYnIifQ.ea-_-g3_g82FAzmMiUSvtrcDcg2mCFPBk2KFW9vH3Zo"
    find("#initialSign_1").click
    sleep 10
end
  
Quando('submeto o meu cadastro completo') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('sou redirecionado para o Dashboard') do
    pending # Write code here that turns the phrase above into concrete actions
end