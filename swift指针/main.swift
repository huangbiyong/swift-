//
//  main.swift
//  swift指针
//
//  Created by chhu02 on 2019/8/29.
//  Copyright © 2019 chase. All rights reserved.
//

import Foundation


//class Person {}
//var person = Person()
//var ptr = withUnsafePointer(to: &person) { UnsafeRawPointer($0) }  //获取person指针的地址值
//var headPtr = UnsafeRawPointer(bitPattern: ptr.load(as: UInt.self)) // 获取person指针的指向的地址，就是为Person的堆空间地址
//
//
//print(ptr)
//print(headPtr!)



//var age = 10
//func change1(_ ptr: UnsafeMutablePointer<Int>) {
//    ptr.pointee += 20
//}
//
//func change2(_ ptr: UnsafePointer<Int>) {
//    print(ptr.pointee)
//}
//
//change1(&age) // 30
//change2(&age) // 30
//print(age)    // 30


//var age = 10
//func change3(_ ptr: UnsafeMutableRawPointer) {
//    ptr.storeBytes(of: 20, as: Int.self)
//}
//
//func change4(_ ptr: UnsafeRawPointer) {
//    print(ptr.load(as: Int.self))
//}
//
//change3(&age) // 20
//change4(&age) // 20
//print(age)    // 20


//var ptr = UnsafeRawPointer(bitPattern: 0x0000000100003008)


//var ptr = malloc(16) // UnsafeMutableRawPointer
//ptr?.storeBytes(of: 10, as: Int.self) // 8字节
//ptr?.storeBytes(of: 20, toByteOffset: 8, as: Int.self) // 存放在后8字节中
//
//print( (ptr?.load(as: Int.self))! )   // 10
//print( (ptr?.load(fromByteOffset: 8, as: Int.self))! ) // 20



//var ptr = UnsafeMutableRawPointer.allocate(byteCount: 16, alignment: 1)
//ptr.storeBytes(of: 10, as: Int.self)
////ptr.advanced(by: 8).storeBytes(of: 20, as: Int.self)
//(ptr + 8).storeBytes(of: 20, as: Int.self)
//
//print( ptr.load(as: Int.self) )   // 10
//
//print( ptr.load(fromByteOffset: 8, as: Int.self) ) // 20
//print( ptr.advanced(by: 8).load(as: Int.self) )  // 20
//print( (ptr + 8).load(as: Int.self) )
//
//ptr.deallocate()



//var ptr = UnsafeMutablePointer<Int>.allocate(capacity: 3)
//ptr.initialize(to: 10)
//ptr.successor().initialize(to: 20)
//ptr.successor().successor().initialize(to: 30)
//
//print(ptr.pointee)  // 10
//print(ptr.successor().pointee) // 20
//print(ptr.successor().successor().pointee) // 30
//
//ptr.deinitialize(count: 3)
//ptr.deallocate()





var ptr = UnsafeMutablePointer<Int>.allocate(capacity: 3)
ptr.initialize(to: 10)
(ptr + 1).initialize(to: 20)
(ptr + 2).initialize(to: 30)

print(ptr.pointee)  // 10
print((ptr + 1).pointee) // 20
print((ptr + 2).pointee) // 30

ptr.deinitialize(count: 3)
ptr.deallocate()




//var ptr = UnsafeMutableRawPointer.allocate(byteCount: 16, alignment: 1)
//
//// assumingMemoryBound 返回 UnsafeMutablePointer<T>类型
//ptr.assumingMemoryBound(to: Int.self).pointee = 10
//(ptr + 8).assumingMemoryBound(to: Int.self).pointee = 20
//
//print( unsafeBitCast(ptr, to: UnsafePointer<Int>.self).pointee ) // 10
//print( unsafeBitCast(ptr + 8, to: UnsafePointer<Int>.self).pointee ) // 20
//ptr.deallocate()



