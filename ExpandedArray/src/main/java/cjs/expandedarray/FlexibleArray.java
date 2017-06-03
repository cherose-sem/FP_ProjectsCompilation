
package cjs.expandedarray;

/**
 *
 * @author Cherry Rose Semeña
 */
public class FlexibleArray <T>{
    private T[] arrayOfT = null;
    private T[] newArr = null;
    private int split = 0;
    
    public T get(int index){
        if(arrayOfT != null && split <= index && index < arrayOfT.length) return arrayOfT[index];
        if(index < arrayOfT.length + split) return newArr[index];
        throw new ArrayIndexOutOfBoundsException();
    }
    
    public void set(int index, T element){
        if(split <= index && index < arrayOfT.length)
        arrayOfT[index] = element;
        else if(index < arrayOfT.length + split) newArr[index] = element;
        else add(element);
    }
    
    public void add(T element){
        
        if(newArr == null){
            newArr = (T[]) new Object[]{ element }; //creates a new array with the element given
        }
        else if (arrayOfT == null){
            arrayOfT = newArr;
            newArr = (T[]) new Object[2];
            newArr[0] = arrayOfT[0];
            newArr[1] = element;
            split = 1;
        }else if (split == arrayOfT.length){
            arrayOfT = newArr;
            newArr = (T[]) new Object[2*arrayOfT.length];
            newArr[0] = arrayOfT[0];
            newArr[arrayOfT.length] = element;
            split = 1;
        }else{
            newArr[split] = arrayOfT[split];
            newArr[arrayOfT.length + split] = element;
            split++;
        }
        
    }
    
    public int size(){
        if(newArr == null) return 1;
        if(arrayOfT == null) return 0;
        return arrayOfT.length+split;
    }
    
    
}
