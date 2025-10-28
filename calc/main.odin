package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	buff: [8]byte
	num1: int
	num2: int

	for {
		fmt.print("Enter Val 1: ")
		os.read(os.stdin, buff[:])
		num1, _ = strconv.parse_int(string(buff[:]))
		fmt.printf("%d\n", num1)

		buff = [8]u8{0, 0, 0, 0, 0, 0, 0, 0}

		fmt.print("Enter Val 2: ")
		os.read(os.stdin, buff[:])
		num2, _ = strconv.parse_int(string(buff[:]))
		fmt.printf("%d\n", num2)

		buff = [8]u8{0, 0, 0, 0, 0, 0, 0, 0}

		fmt.print("Enter Operator: ")
		os.read(os.stdin, buff[:])
		opt := string(buff[:])

		switch opt[0] {
		case '+':
			fmt.printf("%d\n", num1 + num2)
		case '-':
			fmt.printf("%d\n", num1 - num2)
		case '/':
			fmt.printf("%d\n", num1 / num2)
		case '*':
			fmt.printf("%d\n", num1 * num2)
		case:
			break
		}
	}
}
