/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cjs;

/**
 *
 * @author Cherry Rose Semeña
 */
public class Tester {
    public static void main(String[] args) {
        ArrayStack stack = new ArrayStack<Integer>(3);
        
        System.out.println(stack.isEmpty());
        stack.push(5);
        stack.push(1);
        stack.push(10);
        System.out.println(stack.pop());
        System.out.println(stack.isEmpty());
        
        
        Path<String> list = new LinkedPath("Che", new LinkedPath("Daniel",null));
        Path<String> items = new LinkedPath("che", "daniel");
        print(items);
        
        
    }
    
    public static void print(Path<String> list){
        if(list == null) return;
        System.out.println("FIRST:" + list.getFirst());
        System.out.println("REST:" + list.getRest().getRest());
    }
    
    
}
