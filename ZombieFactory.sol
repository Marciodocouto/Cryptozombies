Pragma solidity ^0.4.19; 'Versão atualizada Pragma'

'contrato de bloco de construção para alplicações Ethereum'

Contract ZombieFactory{ 

    'Declare a new Event here'
    Event NewZombie (uint ZombieId, string name, uint dna);

    uint dnaDigits = 16; 'Variável de estado - Permanentemente escrita na Blockchain com 16 dígitos'

    uint dnaModulus = 10**dnaDigits; 'Função dna zumbi com até 16 dígitos'

    struct Zombie{

         string name;
         uint dna;
    }

    Zombie [ ] public zombies; 'Array struct público chamado zombies'

    'criação de função para criar zumbis'

    function _createZombie(string_name , uint_dna) private {        'initially this function is Public, to change to Private, its necessary add _ in the name of of function and the word private before of the array'
         'zombies.push (Zombie(_name, _dna));'                      'adiciona um novo Zombie com parametros name e dna ao Array Zombies'
         uint id = zombies.push(Zombie(_name,_dna)) - 1;            'stock zombies.push() - 1 in a uint Id'
         NewZombie(id, _name, _dna);                                'shoot the event here'
         
         

    }  
    
    'Lets Create a private function that not modify view returning a uint'
    
    function _generateRandomDna(string _str) private view returns (uint){
        uint rand = uint(keccak256(_str));      'A integer rand receive the conversion of hash _str in hexadecimal to uint'
        return rand % dnaModulus;               'Return rand with the module of function dnaModulus'
    }
    
    'Create a new function public function with the input of the name of zombie, and utilizing the name of zombie to creat a aleatory DNA'
    
    function createRandomZombie(string _name) public {      'create a public function with the string _name'
        uint randDna = _generateRandomDna(_name);           'the randDna will receive the function _generateRandomDna behind the parameter _name'
        _createZombie(_name, randDna);                      'the function _createZombie utilizing name and DNA aleatory lik parameter'

}

