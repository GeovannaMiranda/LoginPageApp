import SwiftUI

struct register: View {
    @State private var username: String = "";
    @State private var email: String = "";
    @State private var confirmedEmail: String = "";
    @State private var password: String = "";
    @State private var confirmedPassword: String = "";

    
    var body: some View {
        ZStack{
            
            VStack{
                
                Text("Register")
                    .foregroundColor(.primary)
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
                        
                        TextField("Insira seu email", text: $email)
                            .frame(width: 300, height: 25)
                        
                        Rectangle()
                            .frame(width: 300, height: 1)
                        
                    }.padding()
                    VStack{
                        
                        SecureField("Confirme seu email", text: $confirmedEmail)
                            .frame(width: 300, height: 25)
                        
                        Rectangle()
                            .frame(width: 300, height: 1)
                        
                    }.padding()
                    VStack{
                        
                        SecureField("Insira sua senha", text: $password)
                            .frame(width: 300, height: 25)
                        
                        Rectangle()
                            .frame(width: 300, height: 1)
                        
                    }.padding()
                    VStack{
                        
                        SecureField("Confirme sua senha", text: $confirmedPassword)
                            .frame(width: 300, height: 25)
                        
                        Rectangle()
                            .frame(width: 300, height: 1)
                        
                    }.padding()

                    
                    Spacer ()
                        .frame(width: 1, height: 10)
                    
                    Button (action: {}){
                        
                        Text ("Finalizar")
                            .font(.callout)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 28)
                            .background (Color.primary)
                            .cornerRadius(30)
                    }
                }
            }
        }
    }
}
