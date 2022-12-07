package com.techelevator.dao;

import com.techelevator.model.Property;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcPropertyDao implements PropertyDao {

    private final JdbcTemplate jdbcTemplate;
    private final UserDao userDao;


    public JdbcPropertyDao(JdbcTemplate jdbcTemplate, UserDao userDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.userDao = userDao;
    }

    @Override
    public  List<Property> getAllProperties() {
        List<Property> properties = new ArrayList<>();
        String sql = "SELECT * FROM property";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()){
            properties.add(mapRowToProperty(results));
        }
        return properties;
    }

    @Override
    public Property getPropertyByID(int ID){

        String sql = "SELECT property_id, address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id FROM property WHERE property_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, ID);

        if(results.next()) {
            return mapRowToProperty(results);
        }else return null;
    }

    @Override
    public Property createProperty(Property property, Principal principal){
        String sql = "INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id) VALUES (?,?,?,?,?,?,?,?) RETURNING property_id;";
        Integer newPropertyID;
        Property newProperty;

        int userID = userDao.findIdByUsername(principal.getName());
        property.setLandlordID(userID);


        try{
            newPropertyID = jdbcTemplate.queryForObject(sql, Integer.class, property.getAddress(), property.getPrice(),
                    property.getBedrooms(), property.getBathrooms(), property.getPicURL(), property.getSqFootage(), property.getDescription(), property.getLandlordID());

            newProperty = getPropertyByID(newPropertyID);

        }catch (DataAccessException e) {
            System.err.println("Error posting to the database." + e.getMessage());
            e.printStackTrace();
            return null;
        }
        return newProperty;
    }

    public List<Property> getPropertiesByPrincipal(Principal principal){
         List<Property> properties = new ArrayList<>();
         int landlordID = userDao.findIdByUsername(principal.getName());
         String sql = "SELECT property_id, address, price, bedrooms, bathrooms, pic_url, sq_footage, description FROM property WHERE landlord_id = ?;";

         SqlRowSet results = jdbcTemplate.queryForRowSet(sql, landlordID);

         while(results.next()){
             properties.add(mapRowToProperty(results));
         }
        return properties;
    }

    private  Property mapRowToProperty(SqlRowSet rs){
        Property property = new Property();
        property.setAddress(rs.getString("address"));
        property.setPrice(rs.getDouble("price"));
        property.setBedrooms(rs.getInt("bedrooms"));
        property.setBathrooms(rs.getDouble("bathrooms"));
        property.setPicURL(rs.getString("pic_url"));
        property.setSqFootage(rs.getInt("sq_footage"));
        property.setDescription(rs.getString("description"));
        property.setLandlordID(rs.getInt("landlord_id"));

        return property;
    }
}
