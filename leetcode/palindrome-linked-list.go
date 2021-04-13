package main

import "fmt"

type ListNode struct {
	Val int
 	Next *ListNode
}

func isPalindrome(head *ListNode) bool {
	if head.Next == nil {
		return  true
	}

	if head.Next.Next == nil {
		if head.Val == head.Next.Val {
			return  true
		} else {
			return  false
		}
	}

	var stack = make([]int, 0)
	slow := head
	fast := head

	for fast != nil && fast.Next != nil {
		stack = append(stack, slow.Val)
		slow = slow.Next
		fast = fast.Next.Next
	}

	part2 := slow

	var stack2 = make([]int, 0)
	for part2 != nil {
		stack2 = append(stack2, part2.Val)
		part2 = part2.Next
	}

	if len(stack) != len(stack2) {
		stack2 = stack2[1:len(stack2)]
	}

	for i := 0; i < len(stack); i++ {
		if stack[i] != stack2[len(stack2) - 1 - i] { return  false }
	}

	return true
}

func createNode(number int) *ListNode {
	return  &ListNode{Val: number}
}

func (p *ListNode) addNode(number int) error {
	node := &ListNode{Val: number}

	if p.Next == nil {
		p.Next = node
	} else {
		currentNode := p.Next
		for currentNode.Next != nil {
			currentNode = currentNode.Next
		}
		currentNode.Next = node
	}

	return  nil
}

func main() {
	a := createNode(2)
	a.addNode(1)
	a.addNode(3)
	a.addNode(1)
	a.addNode(2)
	fmt.Println(isPalindrome(a))
}
