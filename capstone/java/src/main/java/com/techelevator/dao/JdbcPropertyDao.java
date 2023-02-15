package com.techelevator.dao;

import com.fasterxml.jackson.databind.annotation.JsonAppend;
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
        String sql = "SELECT * FROM property ORDER BY property_id DESC;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()){
            properties.add(mapRowToProperty(results));
        }
        return properties;
    }

    @Override
    public Property getPropertyByID(int ID){

        String sql = "SELECT property_id, address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, is_rented, rent_status, due_day FROM property WHERE property_id = ?;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, ID);

        if(results.next()) {
            return mapRowToProperty(results);
        }else return null;
    }

    @Override
    public Property createProperty(Property property, Principal principal){
        String sql = "INSERT INTO property (address, price, bedrooms, bathrooms, pic_url, sq_footage, description," +
                " landlord_id, is_rented, rent_status, due_day) VALUES (?,?,?,?,?,?,?,?,?,?,?) RETURNING property_id;";
        Integer newPropertyID;
        Property newProperty;

        int userID = userDao.findIdByUsername(principal.getName());
        property.setLandlordID(userID);


        try{
            newPropertyID = jdbcTemplate.queryForObject(sql, Integer.class, property.getAddress(), property.getPrice(),
                    property.getBedrooms(), property.getBathrooms(), property.getPicURL(), property.getSqFootage(),
                    property.getDescription(), property.getLandlordID(),
                    property.getRented(), property.getRentStatus(), property.getDueDay());

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
         String sql = "SELECT property_id, address, price, bedrooms, bathrooms, pic_url, sq_footage, description, is_rented, rent_status, due_day FROM property WHERE landlord_id = ? ORDER BY property_id DESC;";

         SqlRowSet results = jdbcTemplate.queryForRowSet(sql, landlordID);

         while(results.next()){
             properties.add(mapRowToProperty(results));
         }
        return properties;
    }
    @Override
    public Property getPropertyByRenter(Principal principal) {
        int userID = userDao.findIdByUsername(principal.getName());
        Property property = new Property();
        String sql = "SELECT p.property_id, address, price, bedrooms, bathrooms, pic_url, sq_footage, description, landlord_id, is_rented, rent_status, due_day " +
                " FROM property AS p JOIN property_users AS pu ON p.property_id = pu.property_id WHERE renter_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, userID);

        if(results.next()) {
            property = mapRowToProperty(results);
        }
        return property;
    }

    public void updateStatus(String status) {
        //if it's the start of the 15th, rent is now due. If it's the start of the new month, and rent is still due, it's now overdue.

    }

    public void payRentProperty(Property property) {
        String sql = "UPDATE property SET rent_status = ? WHERE property_id = ?";
        jdbcTemplate.update(sql, "PAID", property.getPropertyID());
    }


    private  Property mapRowToProperty(SqlRowSet rs){
        Property property = new Property();
        property.setPropertyID(rs.getInt("property_id"));
        property.setAddress(rs.getString("address"));
        property.setPrice(rs.getDouble("price"));
        property.setBedrooms(rs.getInt("bedrooms"));
        property.setBathrooms(rs.getDouble("bathrooms"));
        property.setPicURL(rs.getString("pic_url"));
        property.setSqFootage(rs.getInt("sq_footage"));
        property.setDescription(rs.getString("description"));
//        property.setLandlordID(rs.getInt("landlord_id"));
        property.setRented(rs.getBoolean("is_rented"));
        property.setRentStatus(rs.getString("rent_status"));
        property.setDueDay(rs.getInt("due_day"));
        return property;
    }
}
