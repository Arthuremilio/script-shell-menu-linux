#!bin/bash
clear
    menu () {
        clear
            echo -e '\n'
            echo "========================================="
            echo "            ESCOLHA UMA OPÇÃO            "
            echo "========================================="
            echo ""
            echo "[1] | Criar um diretório"
            echo ""
            echo "[2] | Criar um arquivo"
            echo ""
            echo "[3] | Deletar um Arquivo ou Diretório"
            echo ""
            echo "[4] | Mover um Arquivo ou Diretório"
            echo ""
            echo "[5] | Compactar um Arquivo ou Diretório"
            echo ""
            echo "[6] | Sair"
            echo -e '\n'
            echo "RESPOSTA:"
                read opcao
                    case $opcao in
                        1) opcao1 ;;
                        2) opcao2 ;;
                        3) opcao3 ;;
                        4) opcao4 ;;
                        5) opcao5 ;;
                        6) Sair ;;
                        *) "Opção inválida"; echo ; Menu;;
            esac
        }

opcao1 (){
    clear
        echo "Você escolheu a opção [1]: Criar um diretório"
        echo ""
            read -p "Informe o nome do dirétorio que você deseja criar:  " diretorio
                if [ -e "$diretorio" ]; then
                    echo "Esse diretório ja existe!"
                else
                mkdir /home/arthur/$diretorio
                    echo "Diretório criado com sucesso!"
                fi 
        echo "[1] Voltar"
        echo "[2] Sair"
            read opcao
                case $opcao in
                    1) Voltar ;;
                    2) Sair ;;
                    *) "Opção inválida"; echo ; opção1 ;;
        esac
    }

opcao2 (){
    clear
        echo "Você escolheu a opção [2]: Criar um arquivo .js"
        echo ""
        read -p "Informe o nome do arquivo que você deseja criar:  " nome
        read -p "Informe o local onde esse arquivo será criado:  " diretorio
                if [ -e "$diretorio" ]; then
                    echo "Esse diretório ja existe,vou criar o arquivo!"
                        touch /home/arthur/$diretorio/$nome.js
                else
                    echo "O diretório não existe, vou cria-lo"
                mkdir /home/fieldacademy/$diretorio
                touch /home/fieldacademy/$diretorio/$nome.js
                    echo "Diretório e arquivo criado com sucesso!"
                fi 
        read -p "Informe a mensagem para colocar no seu arquivo .js:  " msg
            echo $msg>>"/home/arthur/$diretorio/$nome.js"
                echo " Mensagem: $msg "
                echo " inserida no arquivo com sucesso!"
        echo "[1] Voltar"
        echo "[2] Sair"
            read opcao
            case $opcao in
            1) Voltar ;;
            2) Sair ;;
            *) "Opção inválida"; echo ; opção2 ;;
        esac
    }
opcao3 (){
    clear
        echo "Você escolheu a opção [3]: Deletar um arquivo ou diretório"
        echo ""
            read -p "Digite o nome do arquivo(.*) ou dretório que deseja deletar:  " nome
                rm -r $nome
        echo "[1] Voltar"
        echo "[2] Sair"
            read opcaoactar um Arquivo ou Diretório

            case $opcao in
            1) Voltar ;;
            2) Sair ;;
            *) "Opção inválida"; echo ; opção3 ;;
        esac
    }
opcao4 (){
    clear
        echo "Você escolheu a opção [4]: Mover um arquivo ou Diretório"
        echo ""
            read -p "Digite o nome do diretório ou o nome do arquivo com a extensão [Exemplo (.txt)]:  " nome
            read -p "Digite o nome do diretório para onde você quer mover:  " diretorio
                mv -v $nome /home/fieldacademy/$diretorio
        echo "[1] Voltar"
        echo "[2] Sair"
            read opcao
            case $opcao in
            1) Voltar ;;
            2) Sair ;;
            *) "Opção inválida"; echo ; opção4 ;;
        esac
    }
opcao5 (){
    clear
        echo "Você escolheu a opção [5]: Compactar um Arquivo ou Diretório"
        echo ""
            read -p "Digite o nome do diretório ou arquivo que deseja compactar:  " nome
            read -p "Digite o nome que o arquivo recebera:  " zipando
                zip -r $zipando.zip $nome
        echo "[1] Voltar"
        echo "[2] Sair"	
            read opcao
            case $opcao in
            1) Voltar ;;
            2) Sair ;;
            *) "Opção inválida"; echo ; opção5 ;;
        esac
    }

Voltar () {
    clear
        menu
}

Sair() {
    clear
exit
}
clear
menu
