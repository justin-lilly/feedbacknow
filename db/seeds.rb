# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Teacher.create(username: "Rui")
Teacher.create(username: "Andy")
Teacher.create(username: "Paul")

Student.create(username: "Lindsey")
Student.create(username: "Drew")
Student.create(username: "Alex")

Lecture.create(name: "History", teacher_id: 1)
Lecture.create(name: "Science", teacher_id: 1)
Lecture.create(name: "Math", teacher_id: 2)
Lecture.create(name: "Math", teacher_id: 3)

Idu.create(lecture_id: 1, keyword: "war", student_id: 1)
Idu.create(lecture_id: 1, keyword: "bombs", student_id: 2)
Idu.create(lecture_id: 1, keyword: "Lincoln", student_id: 2)
Idu.create(lecture_id: 2, keyword: "photosynthesis", student_id: 2)
Idu.create(lecture_id: 3, keyword: "calculus", student_id: 3)
Idu.create(lecture_id: 4, keyword: "algebra", student_id: 3)

