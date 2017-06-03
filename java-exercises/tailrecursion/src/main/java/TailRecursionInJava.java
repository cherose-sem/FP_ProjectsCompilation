import java.math.BigInteger;

public class TailRecursionInJava {


    public static BigInteger sum(BigInteger i, BigInteger currentSum) {
        if (i.longValue() <= 0) return currentSum;
        else return sum(i.subtract(BigInteger.ONE), currentSum.add(i));
    }

    public static void main(String[] args) {
        sum(BigInteger.valueOf(100000), BigInteger.ZERO);
    }

}
