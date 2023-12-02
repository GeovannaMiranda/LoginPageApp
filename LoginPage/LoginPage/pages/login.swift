import SwiftUI

struct login: View {
    @State private var username: String = "";
    @State private var password: String = "";
    
    var body: some View {
        ZStack{
            
            VStack{
                
                Text("Login")
                    .foregroundColor(Color.primary)
                    .bold()
                    .font(.system(size: 56))
                
                VStack{
                    
                    VStack{
                        
                        TextField("Nome de Usuário", text: $username)
                            .frame(width: 300, height: 25)
                        
                        Rectangle()
                            .frame(width: 300, height: 1)
                        
                    }.padding()
                    VStack{
                        
                        SecureField("Senha", text: $password)
                            .frame(width: 300, height: 25)
                        
                        Rectangle()
                            .frame(width: 300, height: 1)
                        
                    }.padding()
                    
                    Spacer ()
                        .frame(width: 1, height: 10)
                    
                    Button (action: {}){
                        
                        Text ("Entrar")
                            .font(.callout)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 28)
                            .background (Color.primary)
                            .cornerRadius(30)
                    }
                    
                    NavigationLink (destination: register()){
                        
                        Text("Não possui uma Conta?")
                            .font(.callout)
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}
