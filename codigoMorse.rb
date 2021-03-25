class TransdutorMorse
    attr_accessor :mensagem, :count, :arrayMsg
    
    def initialize (mensagem) 
        @arrayMsg = mensagem.split('')
        @count = 0
        @mensagem = ''
    end

    def iniciar 
        q0
    end

    def q0
        case @arrayMsg [count]
        when "."
            @count = @count+1
            q1
        when "-"
            @count = @count+1
            q0_1
        end
    end

    def q1
        case @arrayMsg [count]
        when " "
            @mensagem << "e"
            @count = @count+1
            q0
        when "/"
            @mensagem << "e "
            @count = @count+1
            q0
        when "."
            @count = @count+1
            q2
        when "-"
            @count = @count+1
            q6
        else
            @mensagem << "e"
            print
        end
    end

    def q2
        case @arrayMsg [count]
        when " "
            @mensagem << "i"
            @count = @count+1
            q0
        when "/"
            @mensagem << "i "
            @count = @count+1
            q0
        when "."
            @count = @count+1
            q3
        when "-"
            @count = @count+1
            q2_1
        else
            @mensagem << "i"
            print
        end 
    end

    def q2_1
        case @arrayMsg [count]
        when " "
            @mensagem << "u"
            @count = @count+1
            q0
        when "/"
            @mensagem << "u "
            @count = @count+1
            q0
        when "."
            @count = @count+1
            q2_2
        when "-"
            @count = @count+1
            q2_3
        else
            @mensagem << "u"
            print
        end
    end

    def q2_2
        case @arrayMsg [count]
        when " "
            @mensagem << "f"
            @count = @count+1
            q0
        when "/"
            @mensagem << "f "
            @count = @count+1
            q0
        else
            @mensagem << "f"
            print
        end
    end

    def q2_3
        case @arrayMsg [count]
        when "-"
            @count = @count+1
            q2_4
        when "."
            @count = @count+1
            q2_5
        else
            print
        end
    end

    def q2_4
        case @arrayMsg [count]
        when " "
            @mensagem << "2"
            @count = @count+1
            q0
        when "/"
            @mensagem << "2 "
            @count = @count+1
            q0
        else
            @mensagem << "f"
            print
        end
    end

    def q2_5
        case @arrayMsg [count]
        when "."
            @count = @count+1
            q2_6
        else
            print
        end
    end

    def q2_6
        case @arrayMsg [count]
        when " "
            @mensagem << "?"
            @count = @count+1
            q0
        when "/"
            @mensagem << "? "
            @count = @count+1
            q0
        else
            @mensagem << "?"
            print
        end
    end
    
    def q3
        case @arrayMsg [count]
        when " "
            @mensagem << "s"
            @count = @count+1
            q0
        when "/"
            @mensagem << "s "
            @count = @count+1
            q0
        when "."
            @count = @count+1
            q4
        when "-"
            @count = @count+1
            q3_1
        else
            @mensagem << "s"
            print
        end
    end

    def q3_1
        case @arrayMsg [count]
        when " "
            @mensagem << "v"
            @count = @count+1
            q0
        when "/"
            @mensagem << "v "
            @count = @count+1
            q0
        when "-"
            @count = @count+1
            q3_2
        else
            @mensagem << "v"
            print
        end
    end

    def q3_2
        case @arrayMsg [count]
        when " "
            @mensagem << "3"
            @count = @count+1
            q0
        when "/"
            @mensagem << "3 "
            @count = @count+1
            q0
        else
            @mensagem << "3"
            print
        end
    end


    def q4
        case @arrayMsg [count]
        when " "
            @mensagem << "h"
            @count = @count+1
            q0
        when "/"
            @mensagem << "h "
            @count = @count+1
            q0
        when "."
            @count = @count+1
            q5
        when "-"
            @count = @count+1
            q4_1
        else
            @mensagem << "h"
            print
        end
    end

    def q4_1
        case @arrayMsg [count]
        when " "
            @mensagem << "4"
            @count = @count+1
            q0
        when "/"
            @mensagem << "4 "
            @count = @count+1
            q0
        else
            @mensagem << "4"
            print
        end
    end

    def q5
        case @arrayMsg [count]
        when  " "
            @mensagem << "5"
            @count = @count+1
            q0
        when "/"
            @mensagem << "5 "
            @count = @count+1
            q0
        else
            @mensagem << "5"
            print
        end
    end

    def q0_1
        case @arrayMsg [count]
        when " "
            @mensagem << "t"
            @count = @count+1
            q0
        when "/"
            @mensagem << "t "
            @count = @count+1
            q0
        when "-"
            @count = @count+1
            q0_2
        when "."
            @count = @count+1
            q0_7
        else
            @mensagem << "t"
            print
        end
    end

    def q0_2
        case @arrayMsg [count] 
        when " "
            @mensagem << "m"
            @count = @count+1
            q0
        when "/"
            @mensagem << "m "
            @count = @count+1
            q0
        when "-"
            @count = @count+1
            q0_3
        when "."
            @count = @count+1
            q0_14
        else
            @mensagem << "m"
            print
        end
    end

    def q0_3
        case @arrayMsg [count]
        when " "
            @mensagem << "o"
            @count = @count+1
            q0
        when "/"
            @mensagem << "o "
            @count = @count+1
            q0
        when "-"
            @count = @count+1
            q0_4
        when "."
            @count = @count+1
            q0_19
        else
            @mensagem << "o"
            print
        end
    end

    def q0_4
        case @arrayMsg [count]
        when "."
           @count=@count+1
            q0_5
        when "-"
            @count=@count+1
            q0_6
        else
            print
        end
    end

    def q0_5
        case @arrayMsg [count]
        when " "
            @mensagem << "9"
            @count = @count+1
            q0
        when "/"
            @mensagem << "9 "
            @count = @count+1
            q0
        else
            @mensagem << "9"
            print
        end
    end

    def q0_6
        case @arrayMsg [count]
        when " "
            @mensagem << "0"
            @count = @count+1
            q0
        when "/"
            @mensagem << "0 "
            @count = @count+1
            q0
        else
            @mensagem << "0"
            print
        end
    end

    def q0_7
        case @arrayMsg [count]
        when " "
            @mensagem << "n"
            @count = @count+1
            q0
        when "/"
            @mensagem << "n "
            @count = @count+1
            q0
        when "."
            @count = @count+1
            q0_8
        when "-"
            @count = @count+1
            q0_11
        else
            @mensagem << "n"
            print
        end
    end

    def q0_8
        case @arrayMsg [count]
        when " "
            @mensagem << "d"
            @count = @count+1
            q0
        when "/"
            @mensagem << "d "
            @count = @count+1
            q0
        when "."
            @count = @count+1
            q0_9
        when "-"
            @count = @count+1
            q0_18
        else
            @mensagem << "d"
            print
        end
    end

    def q0_18
        case @arrayMsg [count]
        when " "
            @mensagem << "x"
            @count = @count+1
            q0
        when "/"
            @mensagem << "x "
            @count = @count+1
            q0
        else
            @mensagem << "x"
            print
        end
    end

    def q0_9
        case @arrayMsg [count]
        when " "
            @mensagem << "b"
            @count = @count+1
            q0
        when "/"
            @mensagem << "b "
            @count = @count+1
            q0
        when "."
            @count = @count+1
            q0_10
        else
            @mensagem << "b"
            print
        end
    end

    def q0_10
        case @arrayMsg [count]
        when " "
            @mensagem << "6"
            @count = @count+1
            q0
        when "/"
            @mensagem << "6 "
            @count = @count+1
            q0
        when "-"
            @count = @count+1
            q0_21
        else
            @mensagem << "6"
            print
        end
    end

    def q0_11
        case @arrayMsg [count]
        when " "
            @mensagem << "k"
            @count = @count+1
            q0
        when "/"
            @mensagem << "k "
            @count = @count+1
            q0
        when "-"
            @count = @count+1
            q0_12
        when "."
            @count = @count+1
            q0_13
        else
            @mensagem << "k"
            print
        end
    end

    def q0_12
        case @arrayMsg [count]
        when " "
            @mensagem << "y"
            @count = @count+1
            q0
        when "/"
            @mensagem << "y "
            @count = @count+1
            q0
        else
            @mensagem << "y"
            print
        end
    end
    
    def q0_13
        case @arrayMsg [count]
        when " "
            @mensagem << "c"
            @count = @count+1
            q0
        when "/"
            @mensagem << "c "
            @count = @count+1
            q0
        else
            @mensagem << "c"
            print
        end
    end

    def q0_14
        case @arrayMsg [count]
        when " "
            @mensagem << "g"
            @count = @count+1
            q0
        when "/"
            @mensagem << "g "
            @count = @count+1
            q0
        when "-"
            @count = @count+1
            q0_15
        when "."
            @count = @count+1
            q0_16
        else
            @mensagem << "g"
            print
        end
    end

    def q0_15
        case @arrayMsg [count]
        when " "
            @mensagem << "q"
            @count = @count+1
            q0
        when "/"
            @mensagem << "q "
            @count = @count+1
            q0
        else
            @mensagem << "q"
            print
        end
    end

    def q0_16
        case @arrayMsg [count]
        when " "
            @mensagem << "z"
            @count = @count+1
            q0
        when "/"
            @mensagem << "z "
            @count = @count+1
            q0
        when "."
            @count = @count+1
            q0_17
        when "-"
            @count = @count+1
            q0_22
        else
            @mensagem << "z"
            print
        end
    end

    def q0_17
        case @arrayMsg [count]
        when " "
            @mensagem << "7"
            @count = @count+1
            q0
        when "/"
            @mensagem << "7 "
            @count = @count+1
            q0
        else
            @mensagem << "7"
            print
        end
    end

    def q0_19
        case @arrayMsg [count]
        when "."
            @count = @count+1
            q0_20
        else
            print
        end
    end

    def q0_20
        case @arrayMsg [count]
        when " "
            @mensagem << "8"
            @count = @count+1
            q0
        when "/"
            @mensagem << "8 "
            @count = @count+1
            q0
        else
            @mensagem << "8"
            print
        end
    end

    def q0_21
        case @arrayMsg [count]
        when " "
            @mensagem << "-"
            @count = @count+1
            q0
        when "/"
            @mensagem << "- "
            @count = @count+1
            q0
        else
            @mensagem << "-"
            print
        end
    end

    def q0_22
        case @arrayMsg [count]
        when "-"
            @count = @count+1
            q0_23
        else
            print
        end
    end

    def q0_23
        case @arrayMsg [count]
        when " "
            @mensagem << ","
            @count = @count+1
            q0
        when "/"
            @mensagem << ", "
            @count = @count+1
            q0
        else
            @mensagem << ","
            print
        end
    end

    def q6
        case @arrayMsg [count] 
        when " "
            @mensagem << "a"
            @count = @count+1
            q0
        when "/"
            @mensagem << "a "
            @count = @count+1
            q0
        when "-"
            @count = @count+1
            q7
        when "."
            @count = @count+1
            q10
        else
            @mensagem << "a"
            print
        end
    end

    def q7
        case @arrayMsg [count] 
        when " "
            @mensagem << "w"
            @count = @count+1
            q0
        when "/"
            @mensagem << "w "
            @count = @count+1
            q0
        when "-"
            @count = @count+1
            q8
        when "."
            @count = @count+1
            q7_1
        else
            @mensagem << "w"
            print
        end
    end

    def q7_1
        case @arrayMsg [count] 
        when " "
            @mensagem << "p"
            @count = @count+1
            q0
        when "/"
            @mensagem << "p "
            @count = @count+1
            q0
        else
            @mensagem << "p"
            print
        end
    end

    def q8
        case @arrayMsg [count] 
        when " "
            @mensagem << "j"
            @count = @count+1
            q0
        when "/"
            @mensagem << "j "
            @count = @count+1
            q0
        when "-"
            @count = @count+1
            q9
        else
            @mensagem << "j"
            print
        end
    end

    def q9
        case @arrayMsg [count] 
        when " "
            @mensagem << "1"
            @count = @count+1
            q0
        when "/"
            @mensagem << "1 "
            @count = @count+1
            q0
        else
            @mensagem << "1"
            print
        end
    end

    def q10
        case @arrayMsg [count] 
        when " "
            @mensagem << "r"
            @count = @count+1
            q0
        when "/"
            @mensagem << "r "
            @count = @count+1
            q0
        when "."
            @count = @count+1
            q11
        when "-"
            @count = @count+1
            q10_1
        else
            @mensagem << "r"
            print
        end
    end

    def q10_1
        case @arrayMsg [count] 
        when "."
            @count = @count+1
            q10_2
        else
            print
        end
    end

    def q10_2
        case @arrayMsg [count] 
        when "-"
            @count = @count+1
            q10_3
        else
            print
        end
    end

    def q10_3
        case @arrayMsg [count] 
        when " "
            @mensagem << "."
            @count = @count+1
            q0
        when "/"
            @mensagem << ". "
            @count = @count+1
            q0
        else
            @mensagem << "."
            print
        end
    end

    def q11
        case @arrayMsg [count] 
        when " "
            @mensagem << "l"
            @count = @count+1
            q0
        when "/"
            @mensagem << "l "
            @count = @count+1
            q0
        else
            @mensagem << "l"
            print
        end
    end

    def print
        puts @mensagem
    end
end

puts "Digite seu código Morse com espaços para uma nova letra e / para uma nova palavra,
exemplo: “-.-. --- -- ---/...- --- -.-. ./. ... - .- ..--..” (sem as aspas,e não de espaços antes nem depois do /)
Tradução: como voce esta? "

t=TransdutorMorse.new(gets.chomp)
t.iniciar


