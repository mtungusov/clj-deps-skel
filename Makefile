.PHONY: clean run uberjar runjar dev

JAR=target/app.jar

clean:
	rm -rf target/*

run:
	clj -m core

uberjar: clean
	clj -A:uberjar --target $(JAR)

runjar:
	java -cp $(JAR) clojure.main -m core

dev: uberjar runjar
