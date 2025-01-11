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

public String whichTwo(Integer a, Integer b, Integer c) {
    // check if any of the two integers add up to third integer
    // use if/else statement
    if( a + b == c) {
        return 'c';
    } else if (a + c == b) {
        return 'b';
    } else if (b + c == a) {
        return 'a';
    } else {
        return '';
    }
}

public String evenOrOdd(Integer num) {
    if(Math.mod(num, 2) == 0) {
        return 'even';
    } else {
        return 'odd';
    }
}