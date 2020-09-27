all: compile
	@java -classpath bin com/craftinginterpreters/lox/Lox

compile: generate
	@javac -d bin -sourcepath src src/com/craftinginterpreters/lox/Lox.java

generate:
	@javac -d bin -sourcepath src src/com/craftinginterpreters/tool/GenerateAst.java
	@ java -classpath bin com/craftinginterpreters/tool/GenerateAst src/com/craftinginterpreters/lox
