# DataStructures and Algorithms

[![Build Status](https://travis-ci.org/balamanoharb/dsa_ruby.svg?branch=master)](https://travis-ci.org/balamanoharb/dsa_ruby)
[![Maintainability](https://api.codeclimate.com/v1/badges/2d1b85c38777dd7660cd/maintainability)](https://codeclimate.com/github/balamanoharb/ruby-data-structures-and-algorithms/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/2d1b85c38777dd7660cd/test_coverage)](https://codeclimate.com/github/balamanoharb/ruby-data-structures-and-algorithms/test_coverage)


## Description

This is a naive implementation of datastructures and algorithms for learning and experimenting.

>Disclaimer : This project is meant to be used for experimental and learning purpose and not intended for production usage.

## DataStructures and Algorithms overview

- Since this is done just for experiment, all containers can be initialized with an array. However it won't be deep copied. Instead, just the array elements will be pushed to the container, similar to how Set works.

### Stack

- LIFO (Last In First Out)
- only allowed operations are push and pop.
- To search an element in a stack, we have repeatedly pop till we find the element. It's a bad use case for searching.

| Operation | Time Complexity | Additional info |
|-----------|-----------------|-----------------|
| push      |    O(1)         | adds an element |
| pop       |    O(1)         | removes the last element and returns it |
| peek / top|    O(1)         | returns the last element or nil      |
| empty?    |    O(1)         | returns true or false                |
| full?     |    O(1)         | returns true or false - if the capacity is full |
| size / length |    O(1)         | returns the current size of stack    |

### Queue

- FIFO (First In First Out)
- insertion happens at one end (rear) 
- deletion happens at one end (front)

| Operation | Time Complexity | Additional info |
|-----------|-----------------|-----------------|
| push / enqueue|    O(1)      | adds an element to the rear end |
| pop / dequeue | O(1)         | deletes the first element and returns it |
| front     |    O(1)         | returns the first element | 
| rear      |    O(1)         | returns the last element |
| empty?    |    O(1)         | returns true or false |
| full?     |    O(1)         | returns true or false - if the capacity is full |
| size / length |    O(1)         | returns the current size of stack    |

### Singly Linked List

- a collection of elements sequentially connected to each other by pointers
- each element knows only its next element.
- each element is represented by a node with two attributes. value and a next pointer (reference to next element)

### Doubly Linked list

- also a collection of elements sequentially connected to each other by pointers
- here each element knows its previous and next element.
- each element is represented by node with 3 attributes. value, previous (reference to previous element) and a next pointer (reference to next element)


## Data Structures and Algorithms Implementations

### Array Based

  Since this is done just for experiment, all containers can be initialized with an array. However it won't be deep copied. Instead, just the array elements will be pushed to the container, similar to how Set works.

- Stack
- Queue
- Cicular Queue
- Binary Heap
  - Min Heap
  - Max Heap


### Object / Pointer Based

- Singly Linked List
- Doubly Linked List
- Stack
- Queue
- Double Ended Queue
- Singly Linked List
- Doubly Linked List


- [ ] Skip List
- [ ] Hash Table
- Heaps
    - MinHeap
      - [ ] Array Based
      - [ ] Object Based
    - MaxHeap
      - [ ] Array Based
      - [ ] Object Based
    - [ ] Binomial Heap - based on binomial tree
    - [ ] Fibonacci Heap
- [ ] Priority Queue
- [ ] Bloom Filters
- [ ] Graphs
    - [ ] Directed
    - [ ] Un-Directed
- [ ] Disjoint Set
- Trees
    - [ ] N-ary Tree
    - [ ] Binary Tree
    - [ ] Binary Search Tree
        - [ ] Self Balancing Trees
            - [ ] AVL Tree
            - [ ] Red Black Tree
            - [ ] Interval Tree
            - [ ] Splay Tree
            - [ ] B - Tree
    - Trie ( Prefix Tree )
        - [ ] Ternary Search Tree
        - [ ] Radix Tree
    - [ ] Suffix Tree
    - [ ] Fenwick Tree / Binary Indexed Tree
    - [ ] Segment Tree
    - [ ] B Trees
    - [ ] B+ Trees
    - [ ] Interval Tree0



- https://github.com/kanwei/algorithms/
- http://static.googleusercontent.com/media/research.google.com/fr//pubs/archive/40671.pdf