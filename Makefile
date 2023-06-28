
ALL_STRINGS = strings/part-1.o strings/part-2.o strings/part-3.o strings/part-4.o strings/part-5.o strings/part-6.o strings/part-7.o strings/part-8.o strings/part-9.o strings/part-10.o strings/part-11.o strings/part-12.o strings/part-13.o strings/part-14.o strings/part-15.o strings/part-16.o strings/part-17.o strings/part-18.o strings/part-19.o strings/part-20.o


main: ${ALL_STRINGS}
	g++ -std=c++14 -Wall main.cc ${ALL_STRINGS} -o main


strings/part-1.o: strings/part-1.cc strings/part-1.h
	g++ -std=c++14 -Wall -c strings/part-1.cc -o strings/part-1.o

strings/part-2.o: strings/part-2.cc strings/part-2.h
	g++ -std=c++14 -Wall -c strings/part-2.cc -o strings/part-2.o

strings/part-3.o: strings/part-3.cc strings/part-3.h
	g++ -std=c++14 -Wall -c strings/part-3.cc -o strings/part-3.o

strings/part-4.o: strings/part-4.cc strings/part-4.h
	g++ -std=c++14 -Wall -c strings/part-4.cc -o strings/part-4.o

strings/part-5.o: strings/part-5.cc strings/part-5.h
	g++ -std=c++14 -Wall -c strings/part-5.cc -o strings/part-5.o

strings/part-6.o: strings/part-6.cc strings/part-6.h
	g++ -std=c++14 -Wall -c strings/part-6.cc -o strings/part-6.o

strings/part-7.o: strings/part-7.cc strings/part-7.h
	g++ -std=c++14 -Wall -c strings/part-7.cc -o strings/part-7.o

strings/part-8.o: strings/part-8.cc strings/part-8.h
	g++ -std=c++14 -Wall -c strings/part-8.cc -o strings/part-8.o

strings/part-9.o: strings/part-9.cc strings/part-9.h
	g++ -std=c++14 -Wall -c strings/part-9.cc -o strings/part-9.o

strings/part-10.o: strings/part-10.cc strings/part-10.h
	g++ -std=c++14 -Wall -c strings/part-10.cc -o strings/part-10.o

strings/part-11.o: strings/part-11.cc strings/part-11.h
	g++ -std=c++14 -Wall -c strings/part-11.cc -o strings/part-11.o

strings/part-12.o: strings/part-12.cc strings/part-12.h
	g++ -std=c++14 -Wall -c strings/part-12.cc -o strings/part-12.o

strings/part-13.o: strings/part-13.cc strings/part-13.h
	g++ -std=c++14 -Wall -c strings/part-13.cc -o strings/part-13.o

strings/part-14.o: strings/part-14.cc strings/part-14.h
	g++ -std=c++14 -Wall -c strings/part-14.cc -o strings/part-14.o

strings/part-15.o: strings/part-15.cc strings/part-15.h
	g++ -std=c++14 -Wall -c strings/part-15.cc -o strings/part-15.o

strings/part-16.o: strings/part-16.cc strings/part-16.h
	g++ -std=c++14 -Wall -c strings/part-16.cc -o strings/part-16.o

strings/part-17.o: strings/part-17.cc strings/part-17.h
	g++ -std=c++14 -Wall -c strings/part-17.cc -o strings/part-17.o

strings/part-18.o: strings/part-18.cc strings/part-18.h
	g++ -std=c++14 -Wall -c strings/part-18.cc -o strings/part-18.o

strings/part-19.o: strings/part-19.cc strings/part-19.h
	g++ -std=c++14 -Wall -c strings/part-19.cc -o strings/part-19.o

strings/part-20.o: strings/part-20.cc strings/part-20.h
	g++ -std=c++14 -Wall -c strings/part-20.cc -o strings/part-20.o
