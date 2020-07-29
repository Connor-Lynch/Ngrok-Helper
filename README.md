# Ngrok-Helper
This is a powershell script that make starting ngrok with specified ports and configurations easier. It has the folowing options:

1. Run on port 80
2. Run on port 443
3. Run on custom port
4. Run on for IIS

All of the basic port options just run `./ngrok http [portNumber]` but, inorder to get ngrok to work with IIS it has to be started with a host header `./ngrok http -host-header="localhost:[portNumber]" [portNumber]`