# DataStructures and Algorithms

[![Build Status](https://travis-ci.org/balamanoharb/dsa_ruby.svg?branch=master)](https://travis-ci.org/balamanoharb/dsa_ruby)
[![Maintainability](https://api.codeclimate.com/v1/badges/2d1b85c38777dd7660cd/maintainability)](https://codeclimate.com/github/balamanoharb/ruby-data-structures-and-algorithms/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/2d1b85c38777dd7660cd/test_coverage)](https://codeclimate.com/github/balamanoharb/ruby-data-structures-and-algorithms/test_coverage)


# Description

This is a naive implementation of datastructures and algorithms for learning and experimenting.

>Disclaimer : This project is meant to be used for experimental and learning purpose and not intended for production usage.

# Datastructures and Algorithms List

- Stack
- Queue
- Linked List
- Doubly Lilnked List
- Hash Table
- Heap
- Priority Queue
- Binary Tree
- Binary Search Tree
- AVL Tree
- Red-Black Tree
- Trie
- N-ary Tree
- Segment Tree
- Fenwick Tree (Binary Indexed Tree)
- Graph (both directed and undirected)
- Disjoint Set
- Bloom Filter

# DataStructures

## Stack

- LIFO (Last In First Out)
- only allowed operations are push and pop.
- insertion and deletion both happen only at one end
- To search an element in a stack, we have to repeatedly pop till we find the element. It's a bad use case for searching.

| Operation | Time Complexity | Additional info |
|-----------|-----------------|-----------------|
| push      |    O(1)         | adds an element |
| pop       |    O(1)         | removes the last element and returns it |
| peek / top|    O(1)         | returns the last element or nil      |
| empty?    |    O(1)         | returns true or false                |
| full?     |    O(1)         | returns true or false - if the capacity is full |
| size / length |    O(1)     | returns the current size of stack    |

## Queue

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

## Singly Linked List

- a collection of elements sequentially connected to each other by pointers
- each element knows only its next element.
- each element is represented by a node with two attributes. value and a next pointer (reference to next element)

| Operation | Time Complexity | Desc |
|-----------|-----------------|------|
|

## Doubly Linked list

- also a collection of elements sequentially connected to each other by pointers
- here each element knows its previous and next element.
- each element is represented by node with 3 attributes. value, previous (reference to previous element) and a next pointer (reference to next element)

## Hash

TODO Expand Explanation

- Hash theoritically gurantees O(1) for insert, delete and search / retreival.
- The main components composing this data structure are:
  - Hash Function
    - Must be Efficient - runs in O(1) time - Should be really fast.
    - Must be Consistent - Gives the same output for an input
    - Should give distributed result - The output it gives (i.e) the key should be distributed.
  - Modulo Operation
  - Load Factor
    - Used for measuring performance and handling collision
  - Collision Handling Mechanism
    - Separate Chaining
    - Open Addressing
      - Linear Probing
      - Quadratic Probing
      - Double Hashing

### References :
- https://www.geeksforgeeks.org/hashing-set-1-introduction/
- https://www.geeksforgeeks.org/hashing-set-2-separate-chaining/
- https://www.geeksforgeeks.org/hashing-set-3-open-addressing/

### Hash Implementation in Ruby :

- https://developers.redhat.com/blog/2017/02/27/towards-faster-ruby-hash-tables/
- https://anadea.info/blog/how-hash-table-works-ruby-examples
- https://launchschool.com/blog/how-the-hash-works-in-ruby
- https://ruby-doc.org/core-2.1.0/Hash.html

# Algorithms

## Binary Search

**Brief Explanation**

Binary Search works by repeatedly eliminating half of the search space by comparing the middle element with the target. It begins with the whole array. If the middle element is greater than the target element, then the target must be present in the lower so it eliminates the upper half and narrows the search interval to lower half. Similarly, if the middle element is lessthan the target element, it narrows the search interval to upper half.

**Pre Requisite**

- List must be sorted.
- Random access must be possible, which means it can only work on array like structures
- the elements in array must have comparison logic implemented (<=>)

**Time Complexity**

- O(lg(n))

**Space Complexity**

- O(1) since only the input array is used.

**Note**

- If there are duplicates, it returns the index first element the algo finds, it is not guaranteed to be the first occurence or the last occurence of the element.
- It returns nil otherwise.

## Sorting Algorithms

### What is Sorting?

- Sorting is arranging the elements in a list or collection in increasing or decreasing order of some property.
- The list should be homogeneous.
- A sorted list is a permutation of the original list.

### Classification

Sorting algorithms are often classified based on various parameters. Some of the parameters are:
- Time Complexity
- Space Complexity
    - Inplace (constant memory)
    - Memory usage grows with input size
- Stability (original arrangement is kept even after sorting)
  - consider a pack of cards > 6&hearts;, 5&spades;, 5&hearts;, 3&clubs;, 5&diams;
  - upon sorting in ascending order > 3&clubs;, 5&spades;, 5&hearts;, 5&diams; 6&hearts;
  - notice that the order for 5 -> &spades; &hearts; &diams; is preserved even after sording
  - this preserving of order of appearance from original list is called stability
- Internal Sort (all records are in main memory)
- External Sort (records are on disk)
- Recursive or not

### Example

- sorting can be performed on any complex data structure based on a property.
- for example sorting product container based on user reviews or price
- for simplicity let us consider a list of integers to explain algorithms.

Consider a list "A"

| 2 | 3 | 9 | 4 | 6 |
|:-:|:-:|:-:|:-:|:-:|

- sorted in increasing order based on value A[index]

| 2 | 3 | 4 | 6 | 9 |
|:-:|:-:|:-:|:-:|:-:|

- sorted in descreasing order based on value A[index]

| 9 | 6 | 4 | 3 | 2 |
|:-:|:-:|:-:|:-:|:-:|

- sorted in increasing order of number of factors for A[index]
- a factor is a number that divides the given number

| 2 | 3 | 9 | 4 | 6 |
|:-:|:-:|:-:|:-:|:-:|


### Applications

- Effective searching
    - Searching on a sorted data allows to use binary search which reduces time significantly
- Ranking of things based on certain criteria
    - Eg: Viewing products/places/hotels based user ratings, price, locality etc..
- May be used as an intermediatory step when performing some complex data analysis.

### List of Sorting Algorithms

|  Name                       | Best Case       | Worst Case          | Space Complexity | Stable? | Recursive? |
|:----------------------------|:---------------:|:-------------------:|:----------------:|:-------:|:-----------|
|Bubble Sort                  | O(n)            | O(n<sup>2</sup>)    | O(1)             |  Yes    |   No       |
|Selection Sort               | O(n<sup>2</sup>)| O(n<sup>2</sup>)    | O(1)             |  Yes    |   No       |
|Insertion Sort               | O(n)            | O(n<sup>2</sup>)    | O(1)             |  Yes    |   No       |
|Shell Sort                   | |     |              |         |            |
|Merge Sort                   | O(n log(n))     | O(n log(n))         | O(n)             |  Yes    |   Yes      |
|Quick Sort                   | O(n log(n))- avg| O(n<sup>2</sup>)    | O(log(n))        |  No     |   Yes      |
|Heap Sort                    | |     |              |         |            |
|Counting Sort                | |     |              |         |            |
|Radix Sort                   | |     |              |         |            |
|Topological Sort             | |     |              |         |            |

### Sorting Benchmarks

http://sortbenchmark.org/

### Selection Sort

**Brief Explanation**

Selection sort maintains two array division with in the same array. Sorted part and unsorted part. Selection Sort works by repeatedly selecting the minimum number(in case of ascending) from the unsorted part of the array and places it to the end of sorted array, there by reducing the number of elements in unsorted array.

The algorithm maintains two sub arrays at any point during the iteration.

The subarray which is already sorted. Remaining subarray which is unsorted.

**Time Complexity**

O(n^2)

**Space Complexity**

O(1)

**Stability**

Stable

### Quick Sort

**Brief Explanation**

Quick sort is based on divide conquer approach. It works by repeatedly partitioning the array based on a pivot element. After partitioning, the pivot element will be placed in its right position dividing the array into two partitions, with  smaller elements to the left of pivot and the larger elements to the right of pivot.

**Time Complexity**
  - Best Case : O(nlog(n))
  - Average Case : O(n log(n))
  - Worst Case : O(n<sup>2</sup>)

**Space Complexity**
 - O(log(n))

 **Stability**

 Not Stable

### Merge Sort

**Brief Explanation**

TODO
**Time Complexity**
  - Best Case : O(n log(n))
  - Average Case : O(n log(n))
  - Worst Case : O(n log(n))

**Space Complexity**
 - O(log(n))

**Stability**

 Stable

**Why is Merge Sort preferred than Quick Sort**

Quicksort has a smaller constant than merge sort. So if they’re both O(n log n) time, quicksort is faster. And quicksort is faster in practice because it hits the average case way more often than the worst case.

## Breadth First Search

**Brief Explanation**

Breadth First Search works on graphs. Main use cases for Breadth First Search are:
1. To find if two nodes A and B are connected (i.e) To find a path between A and B
2. To find the shortest path from A to B



_______________________________________________________

# Implementations

## Array Based

- Stack
- Queue
- Binary Heap
    - Min Heap
    - Max Heap

## Object / Pointer Based


## Algorithms

- Search
    - Binary Search
        - find if the given element exist
        
- Sorting
    - Selection Sort
    - Quick Sort
    - Merge Sort


- https://github.com/kanwei/algorithms/
- http://static.googleusercontent.com/media/research.google.com/fr//pubs/archive/40671.pdf