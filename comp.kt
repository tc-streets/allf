/**
 * Kotlin example to compare if two strings are equal
 */
 
fun main(args: Array<String>) {
    var a: String = "kotlin is easy"
    var b: String = "kotlin is" + " easy"
    if(a==b){
        println("Strings '$a' and '$b' are equal.")
    } else {
        println("Strings '$a' and '$b' are not equal.")
    }
 
    b = "Kotlin runs on JVM"
    if(a==b){
        println("Strings '$a' and '$b' are equal.")
    } else {
        println("Strings '$a' and '$b' are not equal.")
    }
}
