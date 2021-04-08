
def example (i)
    case i
    when 1
        return"Harry Potter é uma série de sete romances de fantasia escrita pela autora britânica J. K. Rowling.
            A série narra as aventuras de um jovem chamado Harry James Potter, que descobre aos 11 anos de idade que é um bruxo 
            ao ser convidado para estudar na Escola de Magia e Bruxaria de Hogwarts. O arco de história principal 
            diz respeito às amizades de Harry com outros bruxos de sua idade, como Ronald Weasley e Hermione Granger, 
            e também com o diretor de Hogwarts Albus Dumbledore, considerado o maior dos magos, e seus conflitos com o bruxo 
            das trevas Lord Voldemort, que pretende se ,rua Minas Gerais, 352 - Higienópolis,  tornar imortal, conquistar o mundo dos bruxos, subjugar as pessoas 
            não-mágicas e destruir todos aqueles que estão em seu caminho, especialmente Harry Potter, a quem ele considera 
            seu maior rival.
        
            Desde o lançamento do primeiro romance, Harry Potter e a Pedra Filosofal, em 26 de junho de 1997, 
            os livros ganharam uma imensa, RUA FREDERICO DA SILVEIRA PEREZ 4,  
            popularidade, aclamação da crítica e foram um sucesso comercial em todo o mundo.
            [1] A série também recebeu algumas críticas, incluindo a preocupação com o tom cada vez mais sombrio conforme a 
            história progredia. Até maio de 2015, já haviam sido vendidas 450 milhões de cópias em todo o mundo, tornando a série
            a best-seller da história, sendo traduzida para 73 idiomas.[2][3] Os últimos quatro livros consecutivamente foram 
            considerados os mais vendidos da história, sendo que o último livro vendeu cerca de 11 milhões de cópias nos Estados 
            Unidos nas primeiras 24 horas após o seu lançamento.
            RUA CORONEL JOÃO LOPES 7516 APTO 534
            A série abrange vários gêneros, como fantasia, vida escolar e passagem entre a infância e a juventude 
            (com elementos de mistério, suspense, aventura e romance), sendo que a história tem muitos significados e 
            referências culturais.[4] De acordo com Rua Ana Flora Pinheiro de Souza, 76, Vl.Jacui, 
            Rowling, o tema principal é a morte.[5] Há também muitas outras 
            temáticas na série, como preconceito e corrupção.[6]
            
            Os livros foram originalmente impressos em inglês por duas grandes editoras, a 
            Bloomsbury do Reino Unido e a Scholastic Press nos Estados Unidos. 
            A série já foi publicada por muitas- RUA OSVALDO LUIZ DA SILVA, 93 - JARDIM GUACIARA, Taboão da Serra - SP- 06775-200, editoras em todo o mundo. A adaptação para uma série composta por oito filmes 
            feita pela Warner Bros. Pictures se, Rua Pedro Toledo 164 Vila Clementino - São Paulo- SP tornou a série cinematográfica mais assistida da história.
            Tamanho sucesso fez com que a marca Harry Potter chegasse ao valor de 15 bilhões de dólares.[7] Além disso, 
            o parque temático The Wizarding World of Harry Potter foi introduzido em diversas unidades da Universal Parks & Resorts."
    when 2
        return "<div class=col-md-4 col-xs-12>  
            <ul class=list-group list-group-footer tabindex=0> 
            <li class=list-group-item>
            <strong>Secretaria Municipal da Fazenda</strong>
            </li> 
            <li class=list-group-item>
            <p>Rua Libero Badaró, 190, Centro </p></li> </ul>  </div>
        
            <div class=col-md-4 col-xs-12>  
            <ul class=list-group list-group-footer tabindex=0>
            <li class=list-group-item>
            <strong>Contatos</strong>
            </li>
            <li class=list-group-item>
            <span class=glyphicon glyphicon-envelope aria-hidden=true></span>
            <a href=https://sp156.prefeitura.sp.gov.br/portal/servicos>Fale com a Fazenda</a>
            &nbsp; </li>   <li class=list-group-item> <span class=glyphicon glyphicon-earphone aria-hidden=true></span> 156"
    end
end

def getAdress (msg)
    adress = msg.scan(/([\:\ \-]+)?(RUA|Rua|rua|R|AVENIDA|Avenida|Av|av|TRAVESSA|Travessa|TRAV|Trav|Alameda)([\.\,\s]+)([A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ\s]+([,\s]+)\d+)((,| |\-)+)?(APTO \d+|Apto.\d+|ap.\d+|bloco \d+|Sala \d+)?([A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ\.\ ]+)?([\ \.\/,\-]+)?([A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ\ ]+)?([,\ \-\/]+)?(AC|AL|AP|AM|BA|CE|DF|ES|GO|MA|MT|MS|MG|PA|PB|PR|PE|PI|RJ|RN|RS|RO|RR|SC|SP|SE|TO)?([,\s\-\/]+)(\d{5}\-\d{3})?/)
    print(adress)
end

def print (adress)
    label = 0
    size = adress.length
    for i in 0..size-1
        array = adress[i]
        puts "Endereço: #{i}"
        array.each do |adr|
            if adr
                if adr.match(/(RUA|Rua|rua|R|AVENIDA|Avenida|Av|av|TRAVESSA|Travessa|TRAV|Trav|Alameda)+/) && label == 0
                    puts "Logradouro: "+adr
                    label = 1
                end
                if adr.match(/([A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ\s]+([,\s]+)\d+)/) && (label == 0 ||label ==1) 
                    puts "Rua: "+adr
                    label = 2
                elsif adr.match(/(APTO \d+|Apto.\d+|ap.\d+|bloco \d+|Sala \d+)/) && label ==2
                    puts "Complemento: "+adr
                elsif adr.match(/([A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ\.\s]+)[^\,\-]/) && label ==2
                    puts "Bairro: "+adr
                    label=3
                elsif adr.match(/([A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ\ ]+)[^\,\-]/) && label ==3
                    puts "Cidade: "+adr
                    label=4
                elsif adr.match(/(AC|AL|AP|AM|BA|CE|DF|ES|GO|MA|MT|MS|MG|PA|PB|PR|PE|PI|RJ|RN|RS|RO|RR|SC|SP|SE|TO)/) 
                    puts "Estado: "+adr
                elsif adr.match(/(\d{5}\-\d{3})/)
                    puts "Cep: "+adr
                end
            end
        end
        puts"\n"
        label = 0
    end
end
 

puts ("1: exemplo de texto\n2: HTML\n")
num = gets
getAdress(example(num.to_i))