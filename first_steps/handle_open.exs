handle_open = fn
  {:ok, file} -> "First line: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("test"))

fizz_buzz = fn
  (0, 0) -> IO.puts("FizzBuzz")
  (0, _) -> IO.puts("Fizz")
  (_, 0) -> IO.puts("Buzz")
end

IO.puts fizz_buzz.(0, 0)
IO.puts fizz_buzz.(0, 1)
IO.puts fizz_buzz.(1, 0)
