/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qt.tandw.models;

import com.qt.tandw.beans.TblAddresses;
import com.qt.tandw.beans.TblClient;
import com.qt.tandw.common.DatabaseExistance;
import com.qt.tandw.common.Sms91;
import com.qt.tandw.common.TandW_Qaswatech_Db;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Zeeshan
 */
public class Client {

    Connection con = null;
    DatabaseExistance existance = new DatabaseExistance();
    String sql, message = null;
    ResultSet rs = null;
    Statement st = null;
    CallableStatement cs = null;

    public static final String TABLENAME = TblClient.class.getSimpleName().toLowerCase();

    public static final String TABLECONTENT = "";

    public void create() {
        con = TandW_Qaswatech_Db.connectDb();
        try {
            sql = "create table " + TABLENAME + "(" + TABLECONTENT + ");";
            cs = con.prepareCall(sql);
            cs.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Unable to create : " + e.getMessage());
        }
    }

    public String insert(TblClient client) {
        con = TandW_Qaswatech_Db.connectDb();
        Task:
        if ("exist".equals(existance.doCheckExistanceOf(TABLENAME, null))) {
            try {
                sql = "insert into " + TABLENAME + " values ()";
                cs = con.prepareCall(sql);
                cs.setString(1, "");
                int rows = cs.executeUpdate();
                if (rows >= 1) {
                    message = "<span class=\"text-success font-bold\">Details Added Successfully</span>";
                }
            } catch (SQLException e) {
                message = "Unable to Add because of : " + e.getMessage() + " | At : " + this.getClass().getName();
            } finally {
                try {
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    message = e.getMessage();
                }
            }
        } else if ("not_exist".equals(existance.doCheckExistanceOf(TABLENAME, null))) {
            create();
            break Task;
        } else {
            message = "null parameter";
        }
        return message;
    }

    public String delete(TblClient client) {
        con = TandW_Qaswatech_Db.connectDb();
        try {
            sql = "delete from " + TABLENAME + " where Id = ?";
            cs = con.prepareCall(sql);
            cs.setLong(1, client.getId());
            int rows = cs.executeUpdate();
            if (rows >= 1) {
                message = "Deleted Successfully";
            }
        } catch (SQLException e) {
            message = "Unable to Delete because of : " + e.getMessage() + " | At : " + this.getClass().getName();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                message = e.getMessage();
            }
        }
        return message;
    }

    public String update(TblClient client) {
        con = TandW_Qaswatech_Db.connectDb();
        try {
            sql = "update " + TABLENAME + " set COLUMN_NAME = ? where Id = ?";
            cs = con.prepareCall(sql);
            cs.setString(1, "column value");
            cs.setLong(2, client.getId());
            int rows = cs.executeUpdate();
            if (rows >= 1) {
                message = "Updated Successfully";
            }
        } catch (SQLException e) {
            message = "Unable to Update because of : " + e.getMessage() + " | At : " + this.getClass().getName();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                message = e.getMessage();
            }
        }
        return message;
    }

    public ArrayList<TblClient> select() {
        con = TandW_Qaswatech_Db.connectDb();
        ArrayList<TblClient> arrayList = new ArrayList<>();
        try {
            sql = "select * from " + TABLENAME;
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            while (rs.next()) {
                arrayList.add(new TblClient(
                        rs.getRow(),
                        rs.getInt("Id"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("email"),
                        rs.getString("gender"),
                        rs.getString("password"),
                        rs.getInt("authentication"),
                        rs.getInt("attempts"),
                        rs.getString("UserAgent"),
                        rs.getString("CreatedAt"),
                        rs.getString("ModifiedAt")
                )
                );
            }
        } catch (SQLException e) {
            arrayList.add(new TblClient(0, this.getClass().getName(), e.getMessage()));
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                message = e.getMessage();
            }
        }
        return arrayList;
    }

    public ArrayList<TblClient> selectByLimit(String limit) {
        con = TandW_Qaswatech_Db.connectDb();
        ArrayList<TblClient> arrayList = new ArrayList<>();
        try {
            sql = "select * from " + TABLENAME + " order by Id desc limit " + limit;
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            while (rs.next()) {
                arrayList.add(new TblClient(
                        rs.getRow(),
                        rs.getInt("Id"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("email"),
                        rs.getString("gender"),
                        rs.getString("password"),
                        rs.getInt("authentication"),
                        rs.getInt("attempts"),
                        rs.getString("UserAgent"),
                        rs.getString("CreatedAt"),
                        rs.getString("ModifiedAt")
                ));
            }
        } catch (SQLException e) {
            arrayList.add(new TblClient(0, this.getClass().getName(), e.getMessage()));
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                message = e.getMessage();
            }
        }
        return arrayList;
    }

    public TblClient selectById(String id) {
        con = TandW_Qaswatech_Db.connectDb();
        TblClient client = null;
        try {
            sql = "select * from " + TABLENAME + " where Id = " + id;
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            while (rs.next()) {
                client = new TblClient(
                        rs.getRow(),
                        rs.getInt("Id"),
                        rs.getString("name"),
                        rs.getString("phone"),
                        rs.getString("email"),
                        rs.getString("gender"),
                        rs.getString("password"),
                        rs.getInt("authentication"),
                        rs.getInt("attempts"),
                        rs.getString("UserAgent"),
                        rs.getString("CreatedAt"),
                        rs.getString("ModifiedAt")
                );
            }
        } catch (SQLException e) {
            client = new TblClient(0, this.getClass().getName(), e.getMessage());
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                message = e.getMessage();
            }
        }
        return client;
    }

    public int doCheckExist(int ProductId, int productSize) {
        con = TandW_Qaswatech_Db.connectDb();
        int status = 0;
        sql = "SELECT size FROM " + TABLENAME + " where ";
        try {
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            if (rs.next()) {
                if (rs.getInt(1) == productSize) {
                    return 1;
                }
            } else {
                return 2;
            }
        } catch (SQLException e) {
            System.out.println("Exception At : " + this.getClass().getName() + " | " + e.getMessage());
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                message = e.getMessage();
            }
        }
        return status;
    }

    public int doCheckExistence(String Phone) {
        con = TandW_Qaswatech_Db.connectDb();
        int status = 0;
        sql = "select * from " + TABLENAME + " where Phone = '" + Phone + "'";
        try {
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                if (rs.getRow() == 1) {
                    return 1;
                }
            }
            return 0;
        } catch (SQLException e) {
            System.out.println("com.qt.tandw.models.Client.doCheckExistence() : " + e.getMessage());
        }
        return status;
    }

    public int doSendOtp(String otp, String phone) {
        Sms91 s = new Sms91();
        String msg = "Dear Customer,One Time Password for your T and W Registration is " + otp + ",OTP is valid for 10 min.Thnx - T and W Mojaris";
        s.doSendCustomizedMessage("286332ARUeiL58q8B35d35e534", phone, msg, "TWMVER", "4");
        return 1;
    }

    HttpSession session = null;
    // -1 Not Found
    // 0 Blocked
    // 1 Found
    // 2 Wrong Password
    public int doLogin(TblClient client, HttpServletRequest request) {
        int status = 0;
        int authStatus = doCheckLoginAccess(client.getEmail());
        switch (authStatus) {
            case -1:
                status = -1;
                break;
            case 0:
                status = 0;
                break;
            case 1:
                int verifyStatus = doVerifyCredentials(client.getEmail(), client.getPassword(), request);
                if (verifyStatus == 1) {
                    return 1;
                } else if (verifyStatus == 2) {
                    return 2;
                }
                break;
        }
        return status;
    }

    public int doCheckLoginAccess(String email) {
        int status = -1;
        sql = "select Authentication from " + TABLENAME + " where email = '" + email + "'";
        try {
            cs = con.prepareCall(sql);
            rs = cs.executeQuery();
            if (rs.next()) {
                status = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("Exception : " + e.getMessage());
        }
        return status;
    }

    public int doVerifyCredentials(String email, String password, HttpServletRequest request) {
        int status = 0;
        session = request.getSession();
        sql = "select Id, Name, Email, password from " + TABLENAME + " where email = '" + email + "'";
        try {
            cs = con.prepareCall(sql);
            rs = cs.executeQuery(sql);
            if (rs.next()) {
                if (email.equals(rs.getString("email")) && password.equals(rs.getString("password"))) {
                    status = 1;
                    session.setAttribute("ClientId", rs.getString(1));
                    session.setAttribute("ClientName", rs.getString(2));
                    resetLoginCount(rs.getInt("Id"));
                } else {
                    status = 2;
                    doIncreamentAttempts(rs.getInt("Id"));
                }
            }
        } catch (SQLException e) {
            System.out.println("com.imantimes.portal.qaswatech.models.LoginModel.doVerifyCredentials() : " + e.getMessage());
        }
        return status;
    }

    public void doIncreamentAttempts(int id) {
        try {
            cs = con.prepareCall("{call spIncreamentWrongAttempts(?,?)}");
            cs.setString(1, TABLENAME);
            cs.setInt(2, id);
            cs.executeUpdate();
        } catch (SQLException e) {
            System.out.println("exception because of Incrementing : " + e.getMessage());
        }
    }

    public void resetLoginCount(int id) {
        sql = "update " + TABLENAME + " set attempts = 0 where id = " + id;
        try {
            cs = con.prepareCall(sql);
            cs.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage() + "com.qt.tandw.models.Client.resetLoginCount()");
        }
    }

}
