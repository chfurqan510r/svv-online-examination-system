sig Student {}
sig Exam {}

sig System {
    loggedIn: set Student,
    activeExam: Student -> Exam,
    submitted: Student -> Exam
}

// Only one system instance
one sig Current in System {}

fact Init {
    no Current.loggedIn
    no Current.activeExam
    no Current.submitted
}

// A student cannot submit an exam while it is active
fact NoMultipleSubmission {
    all s: Student, e: Exam |
        (s->e in Current.submitted) implies
        (s->e not in Current.activeExam)
}

// A student must be logged in before submitting
fact SubmitRule {
    all s: Student, e: Exam |
        (s->e in Current.submitted) implies
        (s in Current.loggedIn)
}

// Assertions for verification
assert ValidSubmission {
    all s: Student, e: Exam |
        (s->e in Current.submitted) implies
        (s->e not in Current.activeExam)
}

// Check model
check ValidSubmission for 5

// Example execution
run {} for 3
