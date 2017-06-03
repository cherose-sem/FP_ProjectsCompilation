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
public class NumberPath implements Path<Long>{

    private Long[] list;
    
    public NumberPath(Long[] list){
        this.list = list;
    }
    
    @Override
    public Long getFirst() {
        Long num = null;
        for (int i = 0; i < list.length; i++) {
            if(list[i] != null){
                num = list[i];
                list[i] = null;
                return num;
            }
        }
        return num;
    }

    @Override
    public Path<Long> getRest() {
        return this;
    }
    
}
