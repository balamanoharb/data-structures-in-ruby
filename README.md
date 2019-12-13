# DataStructures and Algorithms

[![Build Status](https://travis-ci.org/balamanoharb/dsa_ruby.svg?branch=master)](https://travis-ci.org/balamanoharb/dsa_ruby)
[![Maintainability](https://api.codeclimate.com/v1/badges/2d1b85c38777dd7660cd/maintainability)](https://codeclimate.com/github/balamanoharb/ruby-data-structures-and-algorithms/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/2d1b85c38777dd7660cd/test_coverage)](https://codeclimate.com/github/balamanoharb/ruby-data-structures-and-algorithms/test_coverage)


## Description

This is a naive implementation of datastructures and algorithms for learning and experimenting.

>Disclaimer : This project is meant to be used for experimental and learning purpose and not intended for production usage.

## DataStructures

- Since this is done just for experiment, all containers could be initialized with an array. However it won't be deep copied. Instead, just the array elements will be pushed to the container.

### Stack

- LIFO (Last In First Out)
- only allowed operations are push and pop.
- To search an element in a stack, we have to repeatedly pop till we find the element. It's a bad use case for searching.

| Operation | Time Complexity | Additional info |
|-----------|-----------------|-----------------|
| push      |    O(1)         | adds an element |
| pop       |    O(1)         | removes the last element and returns it |
| peek / top|    O(1)         | returns the last element or nil      |
| empty?    |    O(1)         | returns true or false                |
| full?     |    O(1)         | returns true or false - if the capacity is full |
| size / length |    O(1)     | returns the current size of stack    |

### Queue

- FIFO (First In First Out)
- insertion happens at one end (rear) 
- deletion happens at one end (front)
- To search an element in a Queue, we have to repeatedly pop untill we find the element. Queue is a bad use case for searching. Usually things that require delayed processing are put into queue. Priority queues are used more often in practice.

| Operation | Time Complexity | Additional info |
|-----------|-----------------|-----------------|
| push / enqueue|    O(1)      | adds an element to the rear end |
| pop / dequeue | O(1)         | deletes the first element and returns it |
| front     |    O(1)         | returns the first element | 
| rear      |    O(1)         | returns the last element |
| empty?    |    O(1)         | returns true or false |
| full?     |    O(1)         | returns true or false - if the capacity is full |
| size / length |    O(1)     | returns the current size of stack    |

### Singly Linked List

- a collection of elements sequentially connected to each other by pointers
- each element knows only its next element.
- each element is represented by a node with two attributes. value and a next pointer (reference to next element)

| Operation | Time Complexity | Desc |
|-----------|-----------------|------|
|

### Doubly Linked list

- also a collection of elements sequentially connected to each other by pointers
- here each element knows its previous and next element.
- each element is represented by node with 3 attributes. value, previous (reference to previous element) and a next pointer (reference to next element)


## Algorithms

### Binary Search

**Brief Explanation**

Binary Search works by repeatedly eliminating half of the search space by comparing the middle element with the target. It begins with the whole array. If the middle element is greater than the target element, then the target must be present in the lower so it eliminates the upper half and narrows the search interval to lower half. Similarly, if the middle element is lessthan the target element, it narrows the search interval to upper half.

**Pre Requisite**

- List must be sorted.
- Random access must be possible, which means it can only work on array
- the elements in array must have comparison logic implemented (<=>)

**Time Complexity**

- O(lg(n))

**Space Complexity**

- O(1) since only the input array is used.

**Note**

- If there are duplicates, it returns the index first element the algo finds, it is not guaranteed to be the first occurence or the last occurence of the element.
- It returns nil otherwise.

### Selection Sort

Selection Sort works by repeatedly selecting the minimum number(in case of ascending) from the unsorted part of the array and places it to the beginning of unsorted array part.

The algorithm maintains two sub arrays at any point during the iteration.

The subarray which is already sorted. Remaining subarray which is unsorted.

**Time Complexity**

O(n^2)

**Space Complexity**

O(1)

## Implementations

### Array Based

- Stack
- Queue
- Binary Heap
    - Min Heap
    - Max Heap

### Object / Pointer Based


### Algorithms

- Search
    - Binary Search
        - find if the given element exist
        - get the index of first occurence of the given element [array with duplicates]
        - get the index of last occurence of the given element [array with duplicates]
- Sort




- https://github.com/kanwei/algorithms/
- http://static.googleusercontent.com/media/research.google.com/fr//pubs/archive/40671.pdf