package com.fc.v2.model.auto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import cn.hutool.core.util.StrUtil;

/**
 * 定盘借阅 DpjyExample
 * @author fuce_自动生成
 * @date 2022-03-02 14:12:49
 */
public class DpjyExample {

    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DpjyExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }
        
				
        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }
        
				
        public Criteria andJzIdsIsNull() {
            addCriterion("jz_ids is null");
            return (Criteria) this;
        }

        public Criteria andJzIdsIsNotNull() {
            addCriterion("jz_ids is not null");
            return (Criteria) this;
        }

        public Criteria andJzIdsEqualTo(String value) {
            addCriterion("jz_ids =", value, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsNotEqualTo(String value) {
            addCriterion("jz_ids <>", value, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsGreaterThan(String value) {
            addCriterion("jz_ids >", value, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsGreaterThanOrEqualTo(String value) {
            addCriterion("jz_ids >=", value, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsLessThan(String value) {
            addCriterion("jz_ids <", value, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsLessThanOrEqualTo(String value) {
            addCriterion("jz_ids <=", value, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsLike(String value) {
            addCriterion("jz_ids like", value, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsNotLike(String value) {
            addCriterion("jz_ids not like", value, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsIn(List<String> values) {
            addCriterion("jz_ids in", values, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsNotIn(List<String> values) {
            addCriterion("jz_ids not in", values, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsBetween(String value1, String value2) {
            addCriterion("jz_ids between", value1, value2, "jzIds");
            return (Criteria) this;
        }

        public Criteria andJzIdsNotBetween(String value1, String value2) {
            addCriterion("jz_ids not between", value1, value2, "jzIds");
            return (Criteria) this;
        }
        
				
        public Criteria andJyrqIsNull() {
            addCriterion("jyrq is null");
            return (Criteria) this;
        }

        public Criteria andJyrqIsNotNull() {
            addCriterion("jyrq is not null");
            return (Criteria) this;
        }

        public Criteria andJyrqEqualTo(Date value) {
            addCriterion("jyrq =", value, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqNotEqualTo(Date value) {
            addCriterion("jyrq <>", value, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqGreaterThan(Date value) {
            addCriterion("jyrq >", value, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqGreaterThanOrEqualTo(Date value) {
            addCriterion("jyrq >=", value, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqLessThan(Date value) {
            addCriterion("jyrq <", value, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqLessThanOrEqualTo(Date value) {
            addCriterion("jyrq <=", value, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqLike(Date value) {
            addCriterion("jyrq like", value, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqNotLike(Date value) {
            addCriterion("jyrq not like", value, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqIn(List<Date> values) {
            addCriterion("jyrq in", values, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqNotIn(List<Date> values) {
            addCriterion("jyrq not in", values, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqBetween(Date value1, Date value2) {
            addCriterion("jyrq between", value1, value2, "jyrq");
            return (Criteria) this;
        }

        public Criteria andJyrqNotBetween(Date value1, Date value2) {
            addCriterion("jyrq not between", value1, value2, "jyrq");
            return (Criteria) this;
        }
        
				
        public Criteria andJydhIsNull() {
            addCriterion("jydh is null");
            return (Criteria) this;
        }

        public Criteria andJydhIsNotNull() {
            addCriterion("jydh is not null");
            return (Criteria) this;
        }

        public Criteria andJydhEqualTo(String value) {
            addCriterion("jydh =", value, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhNotEqualTo(String value) {
            addCriterion("jydh <>", value, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhGreaterThan(String value) {
            addCriterion("jydh >", value, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhGreaterThanOrEqualTo(String value) {
            addCriterion("jydh >=", value, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhLessThan(String value) {
            addCriterion("jydh <", value, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhLessThanOrEqualTo(String value) {
            addCriterion("jydh <=", value, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhLike(String value) {
            addCriterion("jydh like", value, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhNotLike(String value) {
            addCriterion("jydh not like", value, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhIn(List<String> values) {
            addCriterion("jydh in", values, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhNotIn(List<String> values) {
            addCriterion("jydh not in", values, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhBetween(String value1, String value2) {
            addCriterion("jydh between", value1, value2, "jydh");
            return (Criteria) this;
        }

        public Criteria andJydhNotBetween(String value1, String value2) {
            addCriterion("jydh not between", value1, value2, "jydh");
            return (Criteria) this;
        }
        
				
        public Criteria andJyTypeIsNull() {
            addCriterion("jy_type is null");
            return (Criteria) this;
        }

        public Criteria andJyTypeIsNotNull() {
            addCriterion("jy_type is not null");
            return (Criteria) this;
        }

        public Criteria andJyTypeEqualTo(Integer value) {
            addCriterion("jy_type =", value, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeNotEqualTo(Integer value) {
            addCriterion("jy_type <>", value, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeGreaterThan(Integer value) {
            addCriterion("jy_type >", value, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("jy_type >=", value, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeLessThan(Integer value) {
            addCriterion("jy_type <", value, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeLessThanOrEqualTo(Integer value) {
            addCriterion("jy_type <=", value, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeLike(Integer value) {
            addCriterion("jy_type like", value, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeNotLike(Integer value) {
            addCriterion("jy_type not like", value, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeIn(List<Integer> values) {
            addCriterion("jy_type in", values, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeNotIn(List<Integer> values) {
            addCriterion("jy_type not in", values, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeBetween(Integer value1, Integer value2) {
            addCriterion("jy_type between", value1, value2, "jyType");
            return (Criteria) this;
        }

        public Criteria andJyTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("jy_type not between", value1, value2, "jyType");
            return (Criteria) this;
        }
        
				
        public Criteria andJyqxIsNull() {
            addCriterion("jyqx is null");
            return (Criteria) this;
        }

        public Criteria andJyqxIsNotNull() {
            addCriterion("jyqx is not null");
            return (Criteria) this;
        }

        public Criteria andJyqxEqualTo(Date value) {
            addCriterion("jyqx =", value, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxNotEqualTo(Date value) {
            addCriterion("jyqx <>", value, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxGreaterThan(Date value) {
            addCriterion("jyqx >", value, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxGreaterThanOrEqualTo(Date value) {
            addCriterion("jyqx >=", value, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxLessThan(Date value) {
            addCriterion("jyqx <", value, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxLessThanOrEqualTo(Date value) {
            addCriterion("jyqx <=", value, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxLike(Date value) {
            addCriterion("jyqx like", value, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxNotLike(Date value) {
            addCriterion("jyqx not like", value, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxIn(List<Date> values) {
            addCriterion("jyqx in", values, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxNotIn(List<Date> values) {
            addCriterion("jyqx not in", values, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxBetween(Date value1, Date value2) {
            addCriterion("jyqx between", value1, value2, "jyqx");
            return (Criteria) this;
        }

        public Criteria andJyqxNotBetween(Date value1, Date value2) {
            addCriterion("jyqx not between", value1, value2, "jyqx");
            return (Criteria) this;
        }
        
				
        public Criteria andJyrNameIsNull() {
            addCriterion("jyr_name is null");
            return (Criteria) this;
        }

        public Criteria andJyrNameIsNotNull() {
            addCriterion("jyr_name is not null");
            return (Criteria) this;
        }

        public Criteria andJyrNameEqualTo(String value) {
            addCriterion("jyr_name =", value, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameNotEqualTo(String value) {
            addCriterion("jyr_name <>", value, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameGreaterThan(String value) {
            addCriterion("jyr_name >", value, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameGreaterThanOrEqualTo(String value) {
            addCriterion("jyr_name >=", value, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameLessThan(String value) {
            addCriterion("jyr_name <", value, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameLessThanOrEqualTo(String value) {
            addCriterion("jyr_name <=", value, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameLike(String value) {
            addCriterion("jyr_name like", value, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameNotLike(String value) {
            addCriterion("jyr_name not like", value, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameIn(List<String> values) {
            addCriterion("jyr_name in", values, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameNotIn(List<String> values) {
            addCriterion("jyr_name not in", values, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameBetween(String value1, String value2) {
            addCriterion("jyr_name between", value1, value2, "jyrName");
            return (Criteria) this;
        }

        public Criteria andJyrNameNotBetween(String value1, String value2) {
            addCriterion("jyr_name not between", value1, value2, "jyrName");
            return (Criteria) this;
        }
        
				
        public Criteria andJyrIdIsNull() {
            addCriterion("jyr_id is null");
            return (Criteria) this;
        }

        public Criteria andJyrIdIsNotNull() {
            addCriterion("jyr_id is not null");
            return (Criteria) this;
        }

        public Criteria andJyrIdEqualTo(String value) {
            addCriterion("jyr_id =", value, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdNotEqualTo(String value) {
            addCriterion("jyr_id <>", value, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdGreaterThan(String value) {
            addCriterion("jyr_id >", value, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdGreaterThanOrEqualTo(String value) {
            addCriterion("jyr_id >=", value, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdLessThan(String value) {
            addCriterion("jyr_id <", value, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdLessThanOrEqualTo(String value) {
            addCriterion("jyr_id <=", value, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdLike(String value) {
            addCriterion("jyr_id like", value, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdNotLike(String value) {
            addCriterion("jyr_id not like", value, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdIn(List<String> values) {
            addCriterion("jyr_id in", values, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdNotIn(List<String> values) {
            addCriterion("jyr_id not in", values, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdBetween(String value1, String value2) {
            addCriterion("jyr_id between", value1, value2, "jyrId");
            return (Criteria) this;
        }

        public Criteria andJyrIdNotBetween(String value1, String value2) {
            addCriterion("jyr_id not between", value1, value2, "jyrId");
            return (Criteria) this;
        }
        
				
        public Criteria andZdrIdIsNull() {
            addCriterion("zdr_id is null");
            return (Criteria) this;
        }

        public Criteria andZdrIdIsNotNull() {
            addCriterion("zdr_id is not null");
            return (Criteria) this;
        }

        public Criteria andZdrIdEqualTo(String value) {
            addCriterion("zdr_id =", value, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdNotEqualTo(String value) {
            addCriterion("zdr_id <>", value, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdGreaterThan(String value) {
            addCriterion("zdr_id >", value, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdGreaterThanOrEqualTo(String value) {
            addCriterion("zdr_id >=", value, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdLessThan(String value) {
            addCriterion("zdr_id <", value, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdLessThanOrEqualTo(String value) {
            addCriterion("zdr_id <=", value, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdLike(String value) {
            addCriterion("zdr_id like", value, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdNotLike(String value) {
            addCriterion("zdr_id not like", value, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdIn(List<String> values) {
            addCriterion("zdr_id in", values, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdNotIn(List<String> values) {
            addCriterion("zdr_id not in", values, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdBetween(String value1, String value2) {
            addCriterion("zdr_id between", value1, value2, "zdrId");
            return (Criteria) this;
        }

        public Criteria andZdrIdNotBetween(String value1, String value2) {
            addCriterion("zdr_id not between", value1, value2, "zdrId");
            return (Criteria) this;
        }
        
				
        public Criteria andZdrNameIsNull() {
            addCriterion("zdr_name is null");
            return (Criteria) this;
        }

        public Criteria andZdrNameIsNotNull() {
            addCriterion("zdr_name is not null");
            return (Criteria) this;
        }

        public Criteria andZdrNameEqualTo(String value) {
            addCriterion("zdr_name =", value, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameNotEqualTo(String value) {
            addCriterion("zdr_name <>", value, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameGreaterThan(String value) {
            addCriterion("zdr_name >", value, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameGreaterThanOrEqualTo(String value) {
            addCriterion("zdr_name >=", value, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameLessThan(String value) {
            addCriterion("zdr_name <", value, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameLessThanOrEqualTo(String value) {
            addCriterion("zdr_name <=", value, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameLike(String value) {
            addCriterion("zdr_name like", value, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameNotLike(String value) {
            addCriterion("zdr_name not like", value, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameIn(List<String> values) {
            addCriterion("zdr_name in", values, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameNotIn(List<String> values) {
            addCriterion("zdr_name not in", values, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameBetween(String value1, String value2) {
            addCriterion("zdr_name between", value1, value2, "zdrName");
            return (Criteria) this;
        }

        public Criteria andZdrNameNotBetween(String value1, String value2) {
            addCriterion("zdr_name not between", value1, value2, "zdrName");
            return (Criteria) this;
        }
        
				
        public Criteria andShrIdIsNull() {
            addCriterion("shr_id is null");
            return (Criteria) this;
        }

        public Criteria andShrIdIsNotNull() {
            addCriterion("shr_id is not null");
            return (Criteria) this;
        }

        public Criteria andShrIdEqualTo(String value) {
            addCriterion("shr_id =", value, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdNotEqualTo(String value) {
            addCriterion("shr_id <>", value, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdGreaterThan(String value) {
            addCriterion("shr_id >", value, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdGreaterThanOrEqualTo(String value) {
            addCriterion("shr_id >=", value, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdLessThan(String value) {
            addCriterion("shr_id <", value, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdLessThanOrEqualTo(String value) {
            addCriterion("shr_id <=", value, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdLike(String value) {
            addCriterion("shr_id like", value, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdNotLike(String value) {
            addCriterion("shr_id not like", value, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdIn(List<String> values) {
            addCriterion("shr_id in", values, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdNotIn(List<String> values) {
            addCriterion("shr_id not in", values, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdBetween(String value1, String value2) {
            addCriterion("shr_id between", value1, value2, "shrId");
            return (Criteria) this;
        }

        public Criteria andShrIdNotBetween(String value1, String value2) {
            addCriterion("shr_id not between", value1, value2, "shrId");
            return (Criteria) this;
        }
        
				
        public Criteria andShrNameIsNull() {
            addCriterion("shr_name is null");
            return (Criteria) this;
        }

        public Criteria andShrNameIsNotNull() {
            addCriterion("shr_name is not null");
            return (Criteria) this;
        }

        public Criteria andShrNameEqualTo(String value) {
            addCriterion("shr_name =", value, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameNotEqualTo(String value) {
            addCriterion("shr_name <>", value, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameGreaterThan(String value) {
            addCriterion("shr_name >", value, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameGreaterThanOrEqualTo(String value) {
            addCriterion("shr_name >=", value, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameLessThan(String value) {
            addCriterion("shr_name <", value, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameLessThanOrEqualTo(String value) {
            addCriterion("shr_name <=", value, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameLike(String value) {
            addCriterion("shr_name like", value, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameNotLike(String value) {
            addCriterion("shr_name not like", value, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameIn(List<String> values) {
            addCriterion("shr_name in", values, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameNotIn(List<String> values) {
            addCriterion("shr_name not in", values, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameBetween(String value1, String value2) {
            addCriterion("shr_name between", value1, value2, "shrName");
            return (Criteria) this;
        }

        public Criteria andShrNameNotBetween(String value1, String value2) {
            addCriterion("shr_name not between", value1, value2, "shrName");
            return (Criteria) this;
        }
        
				
        public Criteria andShRqIsNull() {
            addCriterion("sh_rq is null");
            return (Criteria) this;
        }

        public Criteria andShRqIsNotNull() {
            addCriterion("sh_rq is not null");
            return (Criteria) this;
        }

        public Criteria andShRqEqualTo(Date value) {
            addCriterion("sh_rq =", value, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqNotEqualTo(Date value) {
            addCriterion("sh_rq <>", value, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqGreaterThan(Date value) {
            addCriterion("sh_rq >", value, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqGreaterThanOrEqualTo(Date value) {
            addCriterion("sh_rq >=", value, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqLessThan(Date value) {
            addCriterion("sh_rq <", value, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqLessThanOrEqualTo(Date value) {
            addCriterion("sh_rq <=", value, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqLike(Date value) {
            addCriterion("sh_rq like", value, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqNotLike(Date value) {
            addCriterion("sh_rq not like", value, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqIn(List<Date> values) {
            addCriterion("sh_rq in", values, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqNotIn(List<Date> values) {
            addCriterion("sh_rq not in", values, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqBetween(Date value1, Date value2) {
            addCriterion("sh_rq between", value1, value2, "shRq");
            return (Criteria) this;
        }

        public Criteria andShRqNotBetween(Date value1, Date value2) {
            addCriterion("sh_rq not between", value1, value2, "shRq");
            return (Criteria) this;
        }
        
				
        public Criteria andRemarksIsNull() {
            addCriterion("remarks is null");
            return (Criteria) this;
        }

        public Criteria andRemarksIsNotNull() {
            addCriterion("remarks is not null");
            return (Criteria) this;
        }

        public Criteria andRemarksEqualTo(String value) {
            addCriterion("remarks =", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotEqualTo(String value) {
            addCriterion("remarks <>", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThan(String value) {
            addCriterion("remarks >", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksGreaterThanOrEqualTo(String value) {
            addCriterion("remarks >=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThan(String value) {
            addCriterion("remarks <", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLessThanOrEqualTo(String value) {
            addCriterion("remarks <=", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksLike(String value) {
            addCriterion("remarks like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotLike(String value) {
            addCriterion("remarks not like", value, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksIn(List<String> values) {
            addCriterion("remarks in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotIn(List<String> values) {
            addCriterion("remarks not in", values, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksBetween(String value1, String value2) {
            addCriterion("remarks between", value1, value2, "remarks");
            return (Criteria) this;
        }

        public Criteria andRemarksNotBetween(String value1, String value2) {
            addCriterion("remarks not between", value1, value2, "remarks");
            return (Criteria) this;
        }
        
				
        public Criteria andJynumIsNull() {
            addCriterion("jynum is null");
            return (Criteria) this;
        }

        public Criteria andJynumIsNotNull() {
            addCriterion("jynum is not null");
            return (Criteria) this;
        }

        public Criteria andJynumEqualTo(Integer value) {
            addCriterion("jynum =", value, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumNotEqualTo(Integer value) {
            addCriterion("jynum <>", value, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumGreaterThan(Integer value) {
            addCriterion("jynum >", value, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumGreaterThanOrEqualTo(Integer value) {
            addCriterion("jynum >=", value, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumLessThan(Integer value) {
            addCriterion("jynum <", value, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumLessThanOrEqualTo(Integer value) {
            addCriterion("jynum <=", value, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumLike(Integer value) {
            addCriterion("jynum like", value, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumNotLike(Integer value) {
            addCriterion("jynum not like", value, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumIn(List<Integer> values) {
            addCriterion("jynum in", values, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumNotIn(List<Integer> values) {
            addCriterion("jynum not in", values, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumBetween(Integer value1, Integer value2) {
            addCriterion("jynum between", value1, value2, "jynum");
            return (Criteria) this;
        }

        public Criteria andJynumNotBetween(Integer value1, Integer value2) {
            addCriterion("jynum not between", value1, value2, "jynum");
            return (Criteria) this;
        }
        
				
        public Criteria andDxdhIsNull() {
            addCriterion("dxdh is null");
            return (Criteria) this;
        }

        public Criteria andDxdhIsNotNull() {
            addCriterion("dxdh is not null");
            return (Criteria) this;
        }

        public Criteria andDxdhEqualTo(String value) {
            addCriterion("dxdh =", value, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhNotEqualTo(String value) {
            addCriterion("dxdh <>", value, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhGreaterThan(String value) {
            addCriterion("dxdh >", value, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhGreaterThanOrEqualTo(String value) {
            addCriterion("dxdh >=", value, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhLessThan(String value) {
            addCriterion("dxdh <", value, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhLessThanOrEqualTo(String value) {
            addCriterion("dxdh <=", value, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhLike(String value) {
            addCriterion("dxdh like", value, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhNotLike(String value) {
            addCriterion("dxdh not like", value, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhIn(List<String> values) {
            addCriterion("dxdh in", values, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhNotIn(List<String> values) {
            addCriterion("dxdh not in", values, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhBetween(String value1, String value2) {
            addCriterion("dxdh between", value1, value2, "dxdh");
            return (Criteria) this;
        }

        public Criteria andDxdhNotBetween(String value1, String value2) {
            addCriterion("dxdh not between", value1, value2, "dxdh");
            return (Criteria) this;
        }
        
				
        public Criteria andCbbmIsNull() {
            addCriterion("cbbm is null");
            return (Criteria) this;
        }

        public Criteria andCbbmIsNotNull() {
            addCriterion("cbbm is not null");
            return (Criteria) this;
        }

        public Criteria andCbbmEqualTo(String value) {
            addCriterion("cbbm =", value, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmNotEqualTo(String value) {
            addCriterion("cbbm <>", value, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmGreaterThan(String value) {
            addCriterion("cbbm >", value, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmGreaterThanOrEqualTo(String value) {
            addCriterion("cbbm >=", value, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmLessThan(String value) {
            addCriterion("cbbm <", value, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmLessThanOrEqualTo(String value) {
            addCriterion("cbbm <=", value, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmLike(String value) {
            addCriterion("cbbm like", value, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmNotLike(String value) {
            addCriterion("cbbm not like", value, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmIn(List<String> values) {
            addCriterion("cbbm in", values, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmNotIn(List<String> values) {
            addCriterion("cbbm not in", values, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmBetween(String value1, String value2) {
            addCriterion("cbbm between", value1, value2, "cbbm");
            return (Criteria) this;
        }

        public Criteria andCbbmNotBetween(String value1, String value2) {
            addCriterion("cbbm not between", value1, value2, "cbbm");
            return (Criteria) this;
        }
        
				
        public Criteria andJsdwIsNull() {
            addCriterion("jsdw is null");
            return (Criteria) this;
        }

        public Criteria andJsdwIsNotNull() {
            addCriterion("jsdw is not null");
            return (Criteria) this;
        }

        public Criteria andJsdwEqualTo(String value) {
            addCriterion("jsdw =", value, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwNotEqualTo(String value) {
            addCriterion("jsdw <>", value, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwGreaterThan(String value) {
            addCriterion("jsdw >", value, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwGreaterThanOrEqualTo(String value) {
            addCriterion("jsdw >=", value, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwLessThan(String value) {
            addCriterion("jsdw <", value, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwLessThanOrEqualTo(String value) {
            addCriterion("jsdw <=", value, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwLike(String value) {
            addCriterion("jsdw like", value, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwNotLike(String value) {
            addCriterion("jsdw not like", value, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwIn(List<String> values) {
            addCriterion("jsdw in", values, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwNotIn(List<String> values) {
            addCriterion("jsdw not in", values, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwBetween(String value1, String value2) {
            addCriterion("jsdw between", value1, value2, "jsdw");
            return (Criteria) this;
        }

        public Criteria andJsdwNotBetween(String value1, String value2) {
            addCriterion("jsdw not between", value1, value2, "jsdw");
            return (Criteria) this;
        }
        
				
        public Criteria andJyrphoneIsNull() {
            addCriterion("jyrphone is null");
            return (Criteria) this;
        }

        public Criteria andJyrphoneIsNotNull() {
            addCriterion("jyrphone is not null");
            return (Criteria) this;
        }

        public Criteria andJyrphoneEqualTo(String value) {
            addCriterion("jyrphone =", value, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneNotEqualTo(String value) {
            addCriterion("jyrphone <>", value, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneGreaterThan(String value) {
            addCriterion("jyrphone >", value, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneGreaterThanOrEqualTo(String value) {
            addCriterion("jyrphone >=", value, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneLessThan(String value) {
            addCriterion("jyrphone <", value, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneLessThanOrEqualTo(String value) {
            addCriterion("jyrphone <=", value, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneLike(String value) {
            addCriterion("jyrphone like", value, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneNotLike(String value) {
            addCriterion("jyrphone not like", value, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneIn(List<String> values) {
            addCriterion("jyrphone in", values, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneNotIn(List<String> values) {
            addCriterion("jyrphone not in", values, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneBetween(String value1, String value2) {
            addCriterion("jyrphone between", value1, value2, "jyrphone");
            return (Criteria) this;
        }

        public Criteria andJyrphoneNotBetween(String value1, String value2) {
            addCriterion("jyrphone not between", value1, value2, "jyrphone");
            return (Criteria) this;
        }
        
				
        public Criteria andJssjIsNull() {
            addCriterion("jssj is null");
            return (Criteria) this;
        }

        public Criteria andJssjIsNotNull() {
            addCriterion("jssj is not null");
            return (Criteria) this;
        }

        public Criteria andJssjEqualTo(Date value) {
            addCriterion("jssj =", value, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjNotEqualTo(Date value) {
            addCriterion("jssj <>", value, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjGreaterThan(Date value) {
            addCriterion("jssj >", value, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjGreaterThanOrEqualTo(Date value) {
            addCriterion("jssj >=", value, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjLessThan(Date value) {
            addCriterion("jssj <", value, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjLessThanOrEqualTo(Date value) {
            addCriterion("jssj <=", value, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjLike(Date value) {
            addCriterion("jssj like", value, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjNotLike(Date value) {
            addCriterion("jssj not like", value, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjIn(List<Date> values) {
            addCriterion("jssj in", values, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjNotIn(List<Date> values) {
            addCriterion("jssj not in", values, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjBetween(Date value1, Date value2) {
            addCriterion("jssj between", value1, value2, "jssj");
            return (Criteria) this;
        }

        public Criteria andJssjNotBetween(Date value1, Date value2) {
            addCriterion("jssj not between", value1, value2, "jssj");
            return (Criteria) this;
        }
        
				
        public Criteria andLzstarTimeIsNull() {
            addCriterion("lzstar_time is null");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeIsNotNull() {
            addCriterion("lzstar_time is not null");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeEqualTo(Date value) {
            addCriterion("lzstar_time =", value, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeNotEqualTo(Date value) {
            addCriterion("lzstar_time <>", value, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeGreaterThan(Date value) {
            addCriterion("lzstar_time >", value, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("lzstar_time >=", value, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeLessThan(Date value) {
            addCriterion("lzstar_time <", value, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeLessThanOrEqualTo(Date value) {
            addCriterion("lzstar_time <=", value, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeLike(Date value) {
            addCriterion("lzstar_time like", value, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeNotLike(Date value) {
            addCriterion("lzstar_time not like", value, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeIn(List<Date> values) {
            addCriterion("lzstar_time in", values, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeNotIn(List<Date> values) {
            addCriterion("lzstar_time not in", values, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeBetween(Date value1, Date value2) {
            addCriterion("lzstar_time between", value1, value2, "lzstarTime");
            return (Criteria) this;
        }

        public Criteria andLzstarTimeNotBetween(Date value1, Date value2) {
            addCriterion("lzstar_time not between", value1, value2, "lzstarTime");
            return (Criteria) this;
        }
        
				
        public Criteria andLzendTimeIsNull() {
            addCriterion("lzend_time is null");
            return (Criteria) this;
        }

        public Criteria andLzendTimeIsNotNull() {
            addCriterion("lzend_time is not null");
            return (Criteria) this;
        }

        public Criteria andLzendTimeEqualTo(Date value) {
            addCriterion("lzend_time =", value, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeNotEqualTo(Date value) {
            addCriterion("lzend_time <>", value, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeGreaterThan(Date value) {
            addCriterion("lzend_time >", value, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("lzend_time >=", value, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeLessThan(Date value) {
            addCriterion("lzend_time <", value, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeLessThanOrEqualTo(Date value) {
            addCriterion("lzend_time <=", value, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeLike(Date value) {
            addCriterion("lzend_time like", value, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeNotLike(Date value) {
            addCriterion("lzend_time not like", value, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeIn(List<Date> values) {
            addCriterion("lzend_time in", values, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeNotIn(List<Date> values) {
            addCriterion("lzend_time not in", values, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeBetween(Date value1, Date value2) {
            addCriterion("lzend_time between", value1, value2, "lzendTime");
            return (Criteria) this;
        }

        public Criteria andLzendTimeNotBetween(Date value1, Date value2) {
            addCriterion("lzend_time not between", value1, value2, "lzendTime");
            return (Criteria) this;
        }
        
				
        public Criteria andZlqdTextIsNull() {
            addCriterion("zlqd_text is null");
            return (Criteria) this;
        }

        public Criteria andZlqdTextIsNotNull() {
            addCriterion("zlqd_text is not null");
            return (Criteria) this;
        }

        public Criteria andZlqdTextEqualTo(String value) {
            addCriterion("zlqd_text =", value, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextNotEqualTo(String value) {
            addCriterion("zlqd_text <>", value, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextGreaterThan(String value) {
            addCriterion("zlqd_text >", value, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextGreaterThanOrEqualTo(String value) {
            addCriterion("zlqd_text >=", value, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextLessThan(String value) {
            addCriterion("zlqd_text <", value, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextLessThanOrEqualTo(String value) {
            addCriterion("zlqd_text <=", value, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextLike(String value) {
            addCriterion("zlqd_text like", value, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextNotLike(String value) {
            addCriterion("zlqd_text not like", value, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextIn(List<String> values) {
            addCriterion("zlqd_text in", values, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextNotIn(List<String> values) {
            addCriterion("zlqd_text not in", values, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextBetween(String value1, String value2) {
            addCriterion("zlqd_text between", value1, value2, "zlqdText");
            return (Criteria) this;
        }

        public Criteria andZlqdTextNotBetween(String value1, String value2) {
            addCriterion("zlqd_text not between", value1, value2, "zlqdText");
            return (Criteria) this;
        }
        
				
        public Criteria andZlqdImageIsNull() {
            addCriterion("zlqd_image is null");
            return (Criteria) this;
        }

        public Criteria andZlqdImageIsNotNull() {
            addCriterion("zlqd_image is not null");
            return (Criteria) this;
        }

        public Criteria andZlqdImageEqualTo(String value) {
            addCriterion("zlqd_image =", value, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageNotEqualTo(String value) {
            addCriterion("zlqd_image <>", value, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageGreaterThan(String value) {
            addCriterion("zlqd_image >", value, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageGreaterThanOrEqualTo(String value) {
            addCriterion("zlqd_image >=", value, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageLessThan(String value) {
            addCriterion("zlqd_image <", value, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageLessThanOrEqualTo(String value) {
            addCriterion("zlqd_image <=", value, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageLike(String value) {
            addCriterion("zlqd_image like", value, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageNotLike(String value) {
            addCriterion("zlqd_image not like", value, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageIn(List<String> values) {
            addCriterion("zlqd_image in", values, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageNotIn(List<String> values) {
            addCriterion("zlqd_image not in", values, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageBetween(String value1, String value2) {
            addCriterion("zlqd_image between", value1, value2, "zlqdImage");
            return (Criteria) this;
        }

        public Criteria andZlqdImageNotBetween(String value1, String value2) {
            addCriterion("zlqd_image not between", value1, value2, "zlqdImage");
            return (Criteria) this;
        }
        
			
		 public Criteria andLikeQuery(Dpjy record) {
		 	List<String> list= new ArrayList<String>();
		 	List<String> list2= new ArrayList<String>();
        	StringBuffer buffer=new StringBuffer();
			if(record.getId()!=null&&StrUtil.isNotEmpty(record.getId().toString())) {
    			 list.add("ifnull(id,'')");
    		}
			if(record.getJzIds()!=null&&StrUtil.isNotEmpty(record.getJzIds().toString())) {
    			 list.add("ifnull(jz_ids,'')");
    		}
			if(record.getJyrq()!=null&&StrUtil.isNotEmpty(record.getJyrq().toString())) {
    			 list.add("ifnull(jyrq,'')");
    		}
			if(record.getJydh()!=null&&StrUtil.isNotEmpty(record.getJydh().toString())) {
    			 list.add("ifnull(jydh,'')");
    		}
			if(record.getJyType()!=null&&StrUtil.isNotEmpty(record.getJyType().toString())) {
    			 list.add("ifnull(jy_type,'')");
    		}
			if(record.getJyqx()!=null&&StrUtil.isNotEmpty(record.getJyqx().toString())) {
    			 list.add("ifnull(jyqx,'')");
    		}
			if(record.getJyrName()!=null&&StrUtil.isNotEmpty(record.getJyrName().toString())) {
    			 list.add("ifnull(jyr_name,'')");
    		}
			if(record.getJyrId()!=null&&StrUtil.isNotEmpty(record.getJyrId().toString())) {
    			 list.add("ifnull(jyr_id,'')");
    		}
			if(record.getZdrId()!=null&&StrUtil.isNotEmpty(record.getZdrId().toString())) {
    			 list.add("ifnull(zdr_id,'')");
    		}
			if(record.getZdrName()!=null&&StrUtil.isNotEmpty(record.getZdrName().toString())) {
    			 list.add("ifnull(zdr_name,'')");
    		}
			if(record.getShrId()!=null&&StrUtil.isNotEmpty(record.getShrId().toString())) {
    			 list.add("ifnull(shr_id,'')");
    		}
			if(record.getShrName()!=null&&StrUtil.isNotEmpty(record.getShrName().toString())) {
    			 list.add("ifnull(shr_name,'')");
    		}
			if(record.getShRq()!=null&&StrUtil.isNotEmpty(record.getShRq().toString())) {
    			 list.add("ifnull(sh_rq,'')");
    		}
			if(record.getRemarks()!=null&&StrUtil.isNotEmpty(record.getRemarks().toString())) {
    			 list.add("ifnull(remarks,'')");
    		}
			if(record.getJynum()!=null&&StrUtil.isNotEmpty(record.getJynum().toString())) {
    			 list.add("ifnull(jynum,'')");
    		}
			if(record.getDxdh()!=null&&StrUtil.isNotEmpty(record.getDxdh().toString())) {
    			 list.add("ifnull(dxdh,'')");
    		}
			if(record.getCbbm()!=null&&StrUtil.isNotEmpty(record.getCbbm().toString())) {
    			 list.add("ifnull(cbbm,'')");
    		}
			if(record.getJsdw()!=null&&StrUtil.isNotEmpty(record.getJsdw().toString())) {
    			 list.add("ifnull(jsdw,'')");
    		}
			if(record.getJyrphone()!=null&&StrUtil.isNotEmpty(record.getJyrphone().toString())) {
    			 list.add("ifnull(jyrphone,'')");
    		}
			if(record.getJssj()!=null&&StrUtil.isNotEmpty(record.getJssj().toString())) {
    			 list.add("ifnull(jssj,'')");
    		}
			if(record.getLzstarTime()!=null&&StrUtil.isNotEmpty(record.getLzstarTime().toString())) {
    			 list.add("ifnull(lzstar_time,'')");
    		}
			if(record.getLzendTime()!=null&&StrUtil.isNotEmpty(record.getLzendTime().toString())) {
    			 list.add("ifnull(lzend_time,'')");
    		}
			if(record.getZlqdText()!=null&&StrUtil.isNotEmpty(record.getZlqdText().toString())) {
    			 list.add("ifnull(zlqd_text,'')");
    		}
			if(record.getZlqdImage()!=null&&StrUtil.isNotEmpty(record.getZlqdImage().toString())) {
    			 list.add("ifnull(zlqd_image,'')");
    		}
			if(record.getId()!=null&&StrUtil.isNotEmpty(record.getId().toString())) {
    			list2.add("'%"+record.getId()+"%'");
    		}
			if(record.getJzIds()!=null&&StrUtil.isNotEmpty(record.getJzIds().toString())) {
    			list2.add("'%"+record.getJzIds()+"%'");
    		}
			if(record.getJyrq()!=null&&StrUtil.isNotEmpty(record.getJyrq().toString())) {
    			list2.add("'%"+record.getJyrq()+"%'");
    		}
			if(record.getJydh()!=null&&StrUtil.isNotEmpty(record.getJydh().toString())) {
    			list2.add("'%"+record.getJydh()+"%'");
    		}
			if(record.getJyType()!=null&&StrUtil.isNotEmpty(record.getJyType().toString())) {
    			list2.add("'%"+record.getJyType()+"%'");
    		}
			if(record.getJyqx()!=null&&StrUtil.isNotEmpty(record.getJyqx().toString())) {
    			list2.add("'%"+record.getJyqx()+"%'");
    		}
			if(record.getJyrName()!=null&&StrUtil.isNotEmpty(record.getJyrName().toString())) {
    			list2.add("'%"+record.getJyrName()+"%'");
    		}
			if(record.getJyrId()!=null&&StrUtil.isNotEmpty(record.getJyrId().toString())) {
    			list2.add("'%"+record.getJyrId()+"%'");
    		}
			if(record.getZdrId()!=null&&StrUtil.isNotEmpty(record.getZdrId().toString())) {
    			list2.add("'%"+record.getZdrId()+"%'");
    		}
			if(record.getZdrName()!=null&&StrUtil.isNotEmpty(record.getZdrName().toString())) {
    			list2.add("'%"+record.getZdrName()+"%'");
    		}
			if(record.getShrId()!=null&&StrUtil.isNotEmpty(record.getShrId().toString())) {
    			list2.add("'%"+record.getShrId()+"%'");
    		}
			if(record.getShrName()!=null&&StrUtil.isNotEmpty(record.getShrName().toString())) {
    			list2.add("'%"+record.getShrName()+"%'");
    		}
			if(record.getShRq()!=null&&StrUtil.isNotEmpty(record.getShRq().toString())) {
    			list2.add("'%"+record.getShRq()+"%'");
    		}
			if(record.getRemarks()!=null&&StrUtil.isNotEmpty(record.getRemarks().toString())) {
    			list2.add("'%"+record.getRemarks()+"%'");
    		}
			if(record.getJynum()!=null&&StrUtil.isNotEmpty(record.getJynum().toString())) {
    			list2.add("'%"+record.getJynum()+"%'");
    		}
			if(record.getDxdh()!=null&&StrUtil.isNotEmpty(record.getDxdh().toString())) {
    			list2.add("'%"+record.getDxdh()+"%'");
    		}
			if(record.getCbbm()!=null&&StrUtil.isNotEmpty(record.getCbbm().toString())) {
    			list2.add("'%"+record.getCbbm()+"%'");
    		}
			if(record.getJsdw()!=null&&StrUtil.isNotEmpty(record.getJsdw().toString())) {
    			list2.add("'%"+record.getJsdw()+"%'");
    		}
			if(record.getJyrphone()!=null&&StrUtil.isNotEmpty(record.getJyrphone().toString())) {
    			list2.add("'%"+record.getJyrphone()+"%'");
    		}
			if(record.getJssj()!=null&&StrUtil.isNotEmpty(record.getJssj().toString())) {
    			list2.add("'%"+record.getJssj()+"%'");
    		}
			if(record.getLzstarTime()!=null&&StrUtil.isNotEmpty(record.getLzstarTime().toString())) {
    			list2.add("'%"+record.getLzstarTime()+"%'");
    		}
			if(record.getLzendTime()!=null&&StrUtil.isNotEmpty(record.getLzendTime().toString())) {
    			list2.add("'%"+record.getLzendTime()+"%'");
    		}
			if(record.getZlqdText()!=null&&StrUtil.isNotEmpty(record.getZlqdText().toString())) {
    			list2.add("'%"+record.getZlqdText()+"%'");
    		}
			if(record.getZlqdImage()!=null&&StrUtil.isNotEmpty(record.getZlqdImage().toString())) {
    			list2.add("'%"+record.getZlqdImage()+"%'");
    		}
        	buffer.append(" CONCAT(");
	        buffer.append(StrUtil.join(",",list));
        	buffer.append(")");
        	buffer.append(" like CONCAT(");
        	buffer.append(StrUtil.join(",",list2));
        	buffer.append(")");
        	if(!" CONCAT() like CONCAT()".equals(buffer.toString())) {
        		addCriterion(buffer.toString());
        	}
        	return (Criteria) this;
        }
        
        public Criteria andLikeQuery2(String searchText) {
		 	List<String> list= new ArrayList<String>();
        	StringBuffer buffer=new StringBuffer();
    		list.add("ifnull(id,'')");
    		list.add("ifnull(jz_ids,'')");
    		list.add("ifnull(jyrq,'')");
    		list.add("ifnull(jydh,'')");
    		list.add("ifnull(jy_type,'')");
    		list.add("ifnull(jyqx,'')");
    		list.add("ifnull(jyr_name,'')");
    		list.add("ifnull(jyr_id,'')");
    		list.add("ifnull(zdr_id,'')");
    		list.add("ifnull(zdr_name,'')");
    		list.add("ifnull(shr_id,'')");
    		list.add("ifnull(shr_name,'')");
    		list.add("ifnull(sh_rq,'')");
    		list.add("ifnull(remarks,'')");
    		list.add("ifnull(jynum,'')");
    		list.add("ifnull(dxdh,'')");
    		list.add("ifnull(cbbm,'')");
    		list.add("ifnull(jsdw,'')");
    		list.add("ifnull(jyrphone,'')");
    		list.add("ifnull(jssj,'')");
    		list.add("ifnull(lzstar_time,'')");
    		list.add("ifnull(lzend_time,'')");
    		list.add("ifnull(zlqd_text,'')");
    		list.add("ifnull(zlqd_image,'')");
        	buffer.append(" CONCAT(");
	        buffer.append(StrUtil.join(",",list));
        	buffer.append(")");
        	buffer.append("like '%");
        	buffer.append(searchText);
        	buffer.append("%'");
        	addCriterion(buffer.toString());
        	return (Criteria) this;
        }
        
}
	
    public static class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}