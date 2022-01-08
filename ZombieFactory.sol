Pragma solidity ^0.4.19; 'Versão atualizada Pragma'

'contrato de bloco de construção para alplicações Ethereum'

Contract ZombieFactory{ 

    uint dnaDigits = 16; 'Variável de estado - Permanentemente escrita na Blockchain com 16 dígitos'

    uint dnaModulus = 10**dnaDigits; 'Função dna zumbi com até 16 dígitos'

    struct Zombie{

         string name;
         uint dna;
    }

    Zombie [ ] public zombies; 'Array struct público chamado zombies'

    'criação de função para criar zumbis'

    function createZombie ( string_name , uint_dna) {
         zombies.push (Zombie(_name, _dna));   "adiciona um novo Zombie ao Array Zombies"

    }  


}

