package com.amazonclone.Amazon_Backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.amazonclone.Amazon_Backend.entities.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {

	
	@Query("SELECT c FROM Cart c JOIN FETCH c.cartItems ci JOIN FETCH ci.product p WHERE p.id = ?1")
	List<Cart> findCartsByProductId(Long productId);

	
	
	@Query("SELECT c FROM Cart c JOIN FETCH c.cartItems ci JOIN FETCH ci.product p WHERE p.id = ?1")
	Cart findCartByEmailAndCartId(String emailId, Long cartId);

}
