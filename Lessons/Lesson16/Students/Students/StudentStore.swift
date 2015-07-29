//
//  StudentStore.swift
//  Students
//
//  Created by user on 7/27/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit
import CoreData

class StudentStore{
    
    static let sharedStore = StudentStore()
    
    var context: NSManagedObjectContext
    
    init() {
        println("Student store created")
        
        // get a refrence to app delegate
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        // get its context
        context = appDelegate.managedObjectContext!
    }
    
    func addStudent(name: String, location: String){
        let newStudent = NSEntityDescription.insertNewObjectForEntityForName("Student", inManagedObjectContext: context) as! Student
        
        newStudent.name = name
        newStudent.location = location
        
        var error: NSError?
        context.save(&error)
        
        if error != nil {
            println("An error occured while adding a student")
        }
        
    }
    
    func getAllStudents() -> [Student] {
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        let predicate = NSPredicate(format: "name CONTAINS %@", "h")
        let fetchRequest = NSFetchRequest(entityName: "Student")
        
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        var error: NSError?
        let results = context.executeFetchRequest(fetchRequest, error: &error) as! [Student]
        
        if error != nil {
            println("Could not fetch students")
        }
        
        
        return results
    }
    
    func removeStudent(student: Student) {
        context.deleteObject(student)
        context.save(nil)
    }
    
    
    
}







