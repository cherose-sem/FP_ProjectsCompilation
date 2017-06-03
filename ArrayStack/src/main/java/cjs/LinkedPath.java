
package cjs;

/**
 *
 * @author Cherry Rose Semeña
 */
public class LinkedPath<T> implements Path<T>{

    private T first;
    private Path<T> rest;

    public LinkedPath(T... items){
         this(0,items);
    }
    
    public LinkedPath(int index, T[] items){
        this.first = items[index];
        if(index == items.length -1){
            this.rest = null;
        }else{
            this.rest = new LinkedPath(index+1, items);
        }
    }
    
    public LinkedPath(T first, Path<T> rest){
        this.first = first;
        this.rest = rest;
    }
    
    @Override
    public T getFirst() {
        
        return first;
    }

    @Override
    public Path<T> getRest() {
        return rest;
    }
    
}
