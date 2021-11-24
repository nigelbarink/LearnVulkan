CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw3 -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cpp
	g++ $(CFLAGS) -o ./bin/VulkanTest main.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest
	./bin/VulkanTest

clean:
	rm -f VulkanTest
# For information on Makefile's check
# https://makefiletutorial.com