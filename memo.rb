require "csv"
puts "1(新規でメモを作成)2(既存のメモを編集する)"
memo_type = gets.chomp.to_i
puts "選択： #{memo_type}  確認のためもう一度同じ数字を入力してください、数字を間違えて入力した場合はここで入力しても変えられます。"
input_number = gets.chomp


    if input_number == "1"
        puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"
        file_name = gets.chomp

        puts"メモの内容を記入して下さい。Ctrl+Dで保存します。"
        imput_memo = STDIN.read
        memo = imput_memo.chomp

        CSV.open("#{file_name}.csv" , "w") do |csv|
        csv.puts ["#{memo}"]
        end
    elsif input_number == "2"
        puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
        file_name = gets.chomp
        puts"メモの内容を記入して下さい。Enterを押した後にCtrl+Dで保存します。"
        imput_memo = STDIN.read
        memo = imput_memo.chomp
        
        CSV.open("#{file_name}.csv" , "a") do |csv|
        csv.puts ["#{memo}"]
        end

    else
        puts "1か2の数字を入力してください"

    end