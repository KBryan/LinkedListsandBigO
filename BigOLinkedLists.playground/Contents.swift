//: Playground - noun: a place where people can play

import UIKit
import Foundation

// array of sorted integers
let numberList:Array<Int> = [1,2,3,4,5,6,7,8,9,10]
/// create a function that determines if a value exists
/// Brute Force Approach
func linearSearch(key:Int) {
    // check all possible value
    for number in numberList {
        if number == key {
            print("value at \(key) found...")
            break
        }
    }
}
/// Binary Search
func binarySearch(key:Int, imin:Int, imax:Int) {
    // compute the mid index
    let midIndex:Double = round(Double((imin + imax) / 2))
    let midNumber = numberList[Int(midIndex)]
    // reduce the range of value
    if midNumber > key {
        binarySearch(key, imin: imin, imax:Int(midIndex) - 1)
    }
    // increase the range
    else if(midNumber < key) {
        binarySearch(key, imin: Int(midIndex) + 1, imax: imax)
    } else {
        print("value \(key) found...")
    }
}
class LLNode<T>
{
    var key:T!
    var next:LLNode?
    var previous:LLNode?
}
// create a linked list class
class LinkedList<T: Equatable>
{
    
    // the number of items
    var count:Int {
        if head.key == nil {
            return 0
        } else {
            var current: LLNode = head
            var x:Int = 1
            // cycle through the list of items
            while current.next != nil
            {
                current = current.next!
                x++
            }
            return x
        }
    }
    // set the head of the linked list
    var head:LLNode<T> = LLNode<T>()
    // append a new item
    func addLink(key:T)  {
        if (head.key == nil) {
            head.key = key
            return
        }
        // loop variables
        var current:LLNode? = head
        while (current != nil)
        {
            if current?.next == nil {
            let childToUse:LLNode = LLNode<T>()
            childToUse.key = key
            childToUse.previous = current
            current!.next = childToUse
            break
        } else {
            current = current?.next
        }
    } // end while loop
}
    // remove entry at a specific index
    func removeLinkAtIndex(index:Int)
    {
        // check for nil conditions
        if((index < 0) || index > (self.count - 1) || (head.key == nil))
        {
            print("link doesn't exist")
            return
        }
        var current:LLNode<T>? = head
        var trailer:LLNode<T>?
        var listIndex:Int = 1
        // determine if the removal is at the head
        if index == 0 {
            current = current?.next
            head = current!
            return
        }
        // iterate over the remaining items
        while (current != nil)
        {
            if listIndex == index {
                // redirect the trailer and next pointer
                trailer!.next = current?.next
                current = nil
                return
            }
        }
        // update 
        trailer = current
        current = current?.next
        listIndex++
    }
}
var someTestLinkedList:LinkedList<Int> = LinkedList()
someTestLinkedList.addLink(10)
someTestLinkedList.addLink(15)
someTestLinkedList.addLink(34)
someTestLinkedList.count
someTestLinkedList.removeLinkAtIndex(0)
someTestLinkedList.count





























linearSearch(6)
