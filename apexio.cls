public Decimal computeTip(Decimal total, Integer percent) {
    return (total * percent)/100;
 }

 public Boolean isPassed(Boolean passedExam, Boolean passedAssignments, Boolean passedProject) {
    if(passedExam && passedAssignments) {
        return true;
    } else if(passedExam && passedProject){
        return true;
    } else if(passedAssignments && passedProject){
        return true;
    }
    return false;
}

public Boolean isEndWithZero(Integer num){
    if(Math.mod(num, 10) == 0) {
        return true;
    } else {
        return false;
    }
}