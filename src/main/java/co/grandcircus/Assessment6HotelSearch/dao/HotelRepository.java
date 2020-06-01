package co.grandcircus.Assessment6HotelSearch.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.Assessment6HotelSearch.Entity.Hotel;

public interface HotelRepository extends JpaRepository <Hotel, Long>{

	public List<Hotel> findAllByCity(String city);
	
}
