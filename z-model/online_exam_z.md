[STUDENT, EXAM]

OnlineExamSystem
==
students : ℙ STUDENT
loggedIn : ℙ STUDENT
activeExam : STUDENT ↔ EXAM
submitted : STUDENT ↔ EXAM

where
loggedIn ⊆ students
∀ s: STUDENT; e: EXAM •
    (s,e) ∈ submitted ⇒ (s,e) ∉ activeExam


InitOnlineExamSystem
==
OnlineExamSystem
where
students = ∅
loggedIn = ∅
activeExam = ∅
submitted = ∅


Login
Δ OnlineExamSystem
s? : STUDENT
where
s? ∈ students
loggedIn' = loggedIn ∪ {s?}
students' = students
activeExam' = activeExam
submitted' = submitted


StartExam
Δ OnlineExamSystem
s? : STUDENT
e? : EXAM
where
s? ∈ loggedIn
(s?,e?) ∉ submitted
activeExam' = activeExam ∪ {(s?,e?)}
students' = students
loggedIn' = loggedIn
submitted' = submitted


SubmitExam
Δ OnlineExamSystem
s? : STUDENT
e? : EXAM
where
(s?,e?) ∈ activeExam
submitted' = submitted ∪ {(s?,e?)}
activeExam' = activeExam \ {(s?,e?)}
students' = students
loggedIn' = loggedIn
