// Funções - parâmetros posicionais e nomeados 




      //Mostrar erro
  void main(){
    try{
      int resultado = 10 ~/ 0 //existe divisão por 0?
    } catch (e){
      print ('Ocorreu um erro ${e} ');
    } finally{
      print("Operação concluida");
    }
  }


     //erro mas precisa de retorno
   void main(){
    try{
      int numero = int.parse(source: 'abc'); // conversão vai gerar exceção
    } catch (e){
      print(object: 'erro $e' );
    } finally{
      print(object: 'preciso de uma mensagem mesmo assim');
    } try{
      list<int> numeros = <int>[1,2,3];
      print(object: numeros[5]); //range
    } catch(e){
      print(object: 'erro $e');
    }
   } 


      //variaveis defenidas dentro do escopo da funçaõ só podem ser usadas dentro dessa função
   void main(){
    void saudacao(){
    print('oi mundo');
   }
   saudacao();
   } 
  
  //Possicionais passados na ordem em que sao definidos; nomeados - passados em qualquer ordem e são opicionais a menos que sejam requeridos;
   void ExibirMensagem{String msg, {required bool exibirData}}{
    if(exibirData){
      print('${DateTime.now()} : $msg');
    } else{
      print('${msg}');
    }
   } 

   bool data = true;
   String oi = 'oi';
   ExibirMensagem(oi,exibirData:data);