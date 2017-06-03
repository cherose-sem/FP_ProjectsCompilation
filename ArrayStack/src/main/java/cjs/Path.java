
package cjs;

/**
 *
 * @author Cherry Rose Semeña
 */
public interface Path <T> {
    
    T getFirst();
    Path<T> getRest();
}
