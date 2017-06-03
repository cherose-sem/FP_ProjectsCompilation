
package cjs.expandedarray;

/**
 *
 * @author Cherry Rose Semeña
 */
public class Test {
    public static void main(String[] args) {
        FlexibleArray<Integer> fa = new FlexibleArray<>();
        long t0 = System.currentTimeMillis();
        for (int i = 0; i < 1_000_000; i++) {
            fa.add(i);
        }
        long t1 = System.currentTimeMillis();
        System.out.println("TIME:" + ((t1-t0)/1000.0));
//        for (int i = 0; i < fa.size(); i++) {
//            System.out.println("" + i + ")" + fa.get(i));  
//        }
    }
}
