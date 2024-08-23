package com.entity.model;

import com.entity.MeirongxiangmOrderEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 美容项目订单
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class MeirongxiangmOrderModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 订单编号
     */
    private String meirongxiangmOrderUuidNumber;


    /**
     * 美容项目
     */
    private Integer meirongxiangmId;


    /**
     * 用户
     */
    private Integer yonghuId;


    /**
     * 预约时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date meirongxiangmOrderTime;


    /**
     * 实付价格
     */
    private Double meirongxiangmOrderTruePrice;


    /**
     * 订单类型
     */
    private Integer meirongxiangmOrderTypes;


    /**
     * 支付类型
     */
    private Integer meirongxiangmOrderPaymentTypes;


    /**
     * 订单创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 创建时间 show3 listShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：订单编号
	 */
    public String getMeirongxiangmOrderUuidNumber() {
        return meirongxiangmOrderUuidNumber;
    }


    /**
	 * 设置：订单编号
	 */
    public void setMeirongxiangmOrderUuidNumber(String meirongxiangmOrderUuidNumber) {
        this.meirongxiangmOrderUuidNumber = meirongxiangmOrderUuidNumber;
    }
    /**
	 * 获取：美容项目
	 */
    public Integer getMeirongxiangmId() {
        return meirongxiangmId;
    }


    /**
	 * 设置：美容项目
	 */
    public void setMeirongxiangmId(Integer meirongxiangmId) {
        this.meirongxiangmId = meirongxiangmId;
    }
    /**
	 * 获取：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 设置：用户
	 */
    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 获取：预约时间
	 */
    public Date getMeirongxiangmOrderTime() {
        return meirongxiangmOrderTime;
    }


    /**
	 * 设置：预约时间
	 */
    public void setMeirongxiangmOrderTime(Date meirongxiangmOrderTime) {
        this.meirongxiangmOrderTime = meirongxiangmOrderTime;
    }
    /**
	 * 获取：实付价格
	 */
    public Double getMeirongxiangmOrderTruePrice() {
        return meirongxiangmOrderTruePrice;
    }


    /**
	 * 设置：实付价格
	 */
    public void setMeirongxiangmOrderTruePrice(Double meirongxiangmOrderTruePrice) {
        this.meirongxiangmOrderTruePrice = meirongxiangmOrderTruePrice;
    }
    /**
	 * 获取：订单类型
	 */
    public Integer getMeirongxiangmOrderTypes() {
        return meirongxiangmOrderTypes;
    }


    /**
	 * 设置：订单类型
	 */
    public void setMeirongxiangmOrderTypes(Integer meirongxiangmOrderTypes) {
        this.meirongxiangmOrderTypes = meirongxiangmOrderTypes;
    }
    /**
	 * 获取：支付类型
	 */
    public Integer getMeirongxiangmOrderPaymentTypes() {
        return meirongxiangmOrderPaymentTypes;
    }


    /**
	 * 设置：支付类型
	 */
    public void setMeirongxiangmOrderPaymentTypes(Integer meirongxiangmOrderPaymentTypes) {
        this.meirongxiangmOrderPaymentTypes = meirongxiangmOrderPaymentTypes;
    }
    /**
	 * 获取：订单创建时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：订单创建时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间 show3 listShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间 show3 listShow
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
