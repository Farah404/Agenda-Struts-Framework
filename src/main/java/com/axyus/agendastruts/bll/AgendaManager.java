/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.axyus.agendastruts.bll;

import com.axyus.jdbc.JdbcUtils;
import com.axyus.jdbc.PStmtBinder;
import com.axyus.jdbc.RowMapper;
import com.axyus.jdbc.pool.PoolManager;
import com.axyus.agendastruts.bo.Address;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author farah.gauduin
 */
public class AgendaManager {

    //Get all Addresses
    public List<Address> getAllAddresses() throws SQLException {
        List<Address> allAddresses = new ArrayList<>();
        try (Connection connection = PoolManager.getInstance().getConnection()) {
            final StringBuilder sql = new StringBuilder();
            final PStmtBinder.SimplePStmtBinderBuilder binder = new PStmtBinder.SimplePStmtBinderBuilder();
            sql.append("SELECT * \n ");
            sql.append("    FROM \n");
            sql.append("        addresses");
            allAddresses = (List<Address>) JdbcUtils.queryObjects(connection, sql.toString(), new RowMapper.ClassRowMapper(Address.class));
        }
        return allAddresses;
    }

    //Create Address
    public Integer createAddress(Address address) throws SQLException {
        try (Connection connection = PoolManager.getInstance().getConnection()) {
            final StringBuilder sql = new StringBuilder();
            final PStmtBinder.SimplePStmtBinderBuilder binder = new PStmtBinder.SimplePStmtBinderBuilder();
            sql.append(" INSERT INTO \n");
            sql.append("    addresses \n");
            sql.append("        (street_number, street_name, city, postal_code, country) \n");
            sql.append("            VALUES(?,?,?,?,?)");
            binder.add(address.getStreetNumber());
            binder.add(address.getStreetName());
            binder.add(address.getCity());
            binder.add(address.getPostalCode());
            binder.add(address.getCountry());
            JdbcUtils.executeUpdate(connection, sql.toString(), binder.toPStmtBinder());
            connection.commit();
        }
        return address.getAddressId();
    }

    //Update Address 
    public Address updateAddress(Address address) throws SQLException {
        try (Connection connection = PoolManager.getInstance().getConnection()) {
            final StringBuilder sql = new StringBuilder();
            final PStmtBinder.SimplePStmtBinderBuilder binder = new PStmtBinder.SimplePStmtBinderBuilder();
            sql.append(" UPDATE \n");
            sql.append("    addresses \n");
            sql.append("        SET street_number=?, \n");
            binder.add(address.getStreetNumber());
            sql.append("            street_name=?, \n");
            binder.add(address.getStreetName());
            sql.append("                city=?, \n");
            binder.add(address.getCity());
            sql.append("                    postal_code=?, \n");
            binder.add(address.getPostalCode());
            sql.append("                        country=? \n");
            binder.add(address.getCountry());
            sql.append("                            WHERE \n");
            sql.append("                                address_id=?");
            binder.add(address.getAddressId());
            JdbcUtils.executeUpdate(connection, sql.toString(), binder.toPStmtBinder());
            connection.commit();
        }
        return address;
    }

    //delete customer by id
    public void deleteById(int id) throws SQLException {
        try (Connection connection = PoolManager.getInstance().getConnection()) {
            final StringBuilder sql = new StringBuilder();
            final PStmtBinder.SimplePStmtBinderBuilder binder = new PStmtBinder.SimplePStmtBinderBuilder();
            sql.append(" DELETE FROM \n");
            sql.append("    customers \n");
            sql.append("        WHERE \n");
            sql.append("            customer_id=? \n");
            binder.add(id);
            JdbcUtils.executeUpdate(connection, sql.toString(), binder.toPStmtBinder());
            connection.commit();
        }
    }

    //delete address by id
    public void deleteAddressById(int id) throws SQLException {
        try (Connection connection = PoolManager.getInstance().getConnection()) {
            final StringBuilder sql = new StringBuilder();
            final PStmtBinder.SimplePStmtBinderBuilder binder = new PStmtBinder.SimplePStmtBinderBuilder();
            sql.append(" DELETE FROM \n");
            sql.append("    addresses \n");
            sql.append("        WHERE \n");
            sql.append("            address_id=? \n");
            binder.add(id);
            JdbcUtils.executeUpdate(connection, sql.toString(), binder.toPStmtBinder());
            connection.commit();
        }
    }

    //get address by id
    public Address findAddressbyId(int addressId) throws SQLException {
        Address address = new Address();
        try (Connection connection = PoolManager.getInstance().getConnection()) {
            final StringBuilder sql = new StringBuilder();
            final PStmtBinder.SimplePStmtBinderBuilder binder = new PStmtBinder.SimplePStmtBinderBuilder();
            sql.append(" SELECT * FROM \n");
            sql.append("    addresses \n");
            sql.append("        WHERE \n");
            sql.append("            address_id=? \n");
            binder.add(addressId);
            address = (Address) JdbcUtils.queryObject(connection, sql.toString(), new RowMapper.ClassRowMapper(Address.class), binder.toPStmtBinder());
            connection.commit();
        }
        return address;
    }

    //get latest id
    public Address getLastAddress() throws SQLException {
        Address address = new Address();
        try (Connection connection = PoolManager.getInstance().getConnection()) {
            final StringBuilder sql = new StringBuilder();
            final PStmtBinder.SimplePStmtBinderBuilder binder = new PStmtBinder.SimplePStmtBinderBuilder();
            sql.append("SELECT * FROM \n");
            sql.append("addresses \n");
            sql.append("ORDER BY address_id \n");
            sql.append("DESC LIMIT 1 \n");
            address = (Address) JdbcUtils.queryObject(connection, sql.toString(), new RowMapper.ClassRowMapper(Address.class), binder.toPStmtBinder());
            connection.commit();
        }
        return address;
    }
}
