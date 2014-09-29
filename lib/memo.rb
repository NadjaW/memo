class Memo

  PREFIX = 'memo'
  PATH = './'

  def store(input)
    last_memo = Dir.glob("#{PREFIX}_*").sort.last
    @number = 1
    if last_memo
      @number = last_memo.split('_').last.to_i + 1
    end
    File.open(file_name, 'a') do |file|
      file.write(input)
    end
  end

  private

  def file_name
    @number.to_s.rjust(7, "#{PREFIX}_00")
  end

end
