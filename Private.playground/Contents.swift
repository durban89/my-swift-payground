import Cocoa

class A {
    private func foo() {}
    fileprivate func bar() {}
    
    func baz() {
        foo()
        bar()
    }
}

extension A {
    func test() {
        foo()
        bar()
    }
}

let a = A()
//a.foo() // 'foo' is inaccessible due to 'private' protection level
a.bar()
a.test()
a.baz()
