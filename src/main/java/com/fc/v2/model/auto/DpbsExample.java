package com.fc.v2.model.auto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import cn.hutool.core.util.StrUtil;

/**
 * 定盘报损 DpbsExample
 * @author fuce_自动生成
 * @date 2022-03-01 19:10:56
 */
public class DpbsExample {

    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DpbsExample() {
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
        
				
        public Criteria andBsdhIsNull() {
            addCriterion("bsdh is null");
            return (Criteria) this;
        }

        public Criteria andBsdhIsNotNull() {
            addCriterion("bsdh is not null");
            return (Criteria) this;
        }

        public Criteria andBsdhEqualTo(String value) {
            addCriterion("bsdh =", value, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhNotEqualTo(String value) {
            addCriterion("bsdh <>", value, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhGreaterThan(String value) {
            addCriterion("bsdh >", value, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhGreaterThanOrEqualTo(String value) {
            addCriterion("bsdh >=", value, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhLessThan(String value) {
            addCriterion("bsdh <", value, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhLessThanOrEqualTo(String value) {
            addCriterion("bsdh <=", value, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhLike(String value) {
            addCriterion("bsdh like", value, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhNotLike(String value) {
            addCriterion("bsdh not like", value, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhIn(List<String> values) {
            addCriterion("bsdh in", values, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhNotIn(List<String> values) {
            addCriterion("bsdh not in", values, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhBetween(String value1, String value2) {
            addCriterion("bsdh between", value1, value2, "bsdh");
            return (Criteria) this;
        }

        public Criteria andBsdhNotBetween(String value1, String value2) {
            addCriterion("bsdh not between", value1, value2, "bsdh");
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
        
				
        public Criteria andShStateIsNull() {
            addCriterion("sh_state is null");
            return (Criteria) this;
        }

        public Criteria andShStateIsNotNull() {
            addCriterion("sh_state is not null");
            return (Criteria) this;
        }

        public Criteria andShStateEqualTo(Integer value) {
            addCriterion("sh_state =", value, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateNotEqualTo(Integer value) {
            addCriterion("sh_state <>", value, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateGreaterThan(Integer value) {
            addCriterion("sh_state >", value, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateGreaterThanOrEqualTo(Integer value) {
            addCriterion("sh_state >=", value, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateLessThan(Integer value) {
            addCriterion("sh_state <", value, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateLessThanOrEqualTo(Integer value) {
            addCriterion("sh_state <=", value, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateLike(Integer value) {
            addCriterion("sh_state like", value, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateNotLike(Integer value) {
            addCriterion("sh_state not like", value, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateIn(List<Integer> values) {
            addCriterion("sh_state in", values, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateNotIn(List<Integer> values) {
            addCriterion("sh_state not in", values, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateBetween(Integer value1, Integer value2) {
            addCriterion("sh_state between", value1, value2, "shState");
            return (Criteria) this;
        }

        public Criteria andShStateNotBetween(Integer value1, Integer value2) {
            addCriterion("sh_state not between", value1, value2, "shState");
            return (Criteria) this;
        }
        
				
        public Criteria andSqrqIsNull() {
            addCriterion("sqrq is null");
            return (Criteria) this;
        }

        public Criteria andSqrqIsNotNull() {
            addCriterion("sqrq is not null");
            return (Criteria) this;
        }

        public Criteria andSqrqEqualTo(Date value) {
            addCriterion("sqrq =", value, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqNotEqualTo(Date value) {
            addCriterion("sqrq <>", value, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqGreaterThan(Date value) {
            addCriterion("sqrq >", value, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqGreaterThanOrEqualTo(Date value) {
            addCriterion("sqrq >=", value, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqLessThan(Date value) {
            addCriterion("sqrq <", value, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqLessThanOrEqualTo(Date value) {
            addCriterion("sqrq <=", value, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqLike(Date value) {
            addCriterion("sqrq like", value, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqNotLike(Date value) {
            addCriterion("sqrq not like", value, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqIn(List<Date> values) {
            addCriterion("sqrq in", values, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqNotIn(List<Date> values) {
            addCriterion("sqrq not in", values, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqBetween(Date value1, Date value2) {
            addCriterion("sqrq between", value1, value2, "sqrq");
            return (Criteria) this;
        }

        public Criteria andSqrqNotBetween(Date value1, Date value2) {
            addCriterion("sqrq not between", value1, value2, "sqrq");
            return (Criteria) this;
        }
        
				
        public Criteria andSqrIdIsNull() {
            addCriterion("sqr_id is null");
            return (Criteria) this;
        }

        public Criteria andSqrIdIsNotNull() {
            addCriterion("sqr_id is not null");
            return (Criteria) this;
        }

        public Criteria andSqrIdEqualTo(String value) {
            addCriterion("sqr_id =", value, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdNotEqualTo(String value) {
            addCriterion("sqr_id <>", value, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdGreaterThan(String value) {
            addCriterion("sqr_id >", value, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdGreaterThanOrEqualTo(String value) {
            addCriterion("sqr_id >=", value, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdLessThan(String value) {
            addCriterion("sqr_id <", value, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdLessThanOrEqualTo(String value) {
            addCriterion("sqr_id <=", value, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdLike(String value) {
            addCriterion("sqr_id like", value, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdNotLike(String value) {
            addCriterion("sqr_id not like", value, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdIn(List<String> values) {
            addCriterion("sqr_id in", values, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdNotIn(List<String> values) {
            addCriterion("sqr_id not in", values, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdBetween(String value1, String value2) {
            addCriterion("sqr_id between", value1, value2, "sqrId");
            return (Criteria) this;
        }

        public Criteria andSqrIdNotBetween(String value1, String value2) {
            addCriterion("sqr_id not between", value1, value2, "sqrId");
            return (Criteria) this;
        }
        
				
        public Criteria andSqrNameIsNull() {
            addCriterion("sqr_name is null");
            return (Criteria) this;
        }

        public Criteria andSqrNameIsNotNull() {
            addCriterion("sqr_name is not null");
            return (Criteria) this;
        }

        public Criteria andSqrNameEqualTo(String value) {
            addCriterion("sqr_name =", value, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameNotEqualTo(String value) {
            addCriterion("sqr_name <>", value, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameGreaterThan(String value) {
            addCriterion("sqr_name >", value, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameGreaterThanOrEqualTo(String value) {
            addCriterion("sqr_name >=", value, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameLessThan(String value) {
            addCriterion("sqr_name <", value, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameLessThanOrEqualTo(String value) {
            addCriterion("sqr_name <=", value, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameLike(String value) {
            addCriterion("sqr_name like", value, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameNotLike(String value) {
            addCriterion("sqr_name not like", value, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameIn(List<String> values) {
            addCriterion("sqr_name in", values, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameNotIn(List<String> values) {
            addCriterion("sqr_name not in", values, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameBetween(String value1, String value2) {
            addCriterion("sqr_name between", value1, value2, "sqrName");
            return (Criteria) this;
        }

        public Criteria andSqrNameNotBetween(String value1, String value2) {
            addCriterion("sqr_name not between", value1, value2, "sqrName");
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
        
				
        public Criteria andShrqIsNull() {
            addCriterion("shrq is null");
            return (Criteria) this;
        }

        public Criteria andShrqIsNotNull() {
            addCriterion("shrq is not null");
            return (Criteria) this;
        }

        public Criteria andShrqEqualTo(Date value) {
            addCriterion("shrq =", value, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqNotEqualTo(Date value) {
            addCriterion("shrq <>", value, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqGreaterThan(Date value) {
            addCriterion("shrq >", value, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqGreaterThanOrEqualTo(Date value) {
            addCriterion("shrq >=", value, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqLessThan(Date value) {
            addCriterion("shrq <", value, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqLessThanOrEqualTo(Date value) {
            addCriterion("shrq <=", value, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqLike(Date value) {
            addCriterion("shrq like", value, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqNotLike(Date value) {
            addCriterion("shrq not like", value, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqIn(List<Date> values) {
            addCriterion("shrq in", values, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqNotIn(List<Date> values) {
            addCriterion("shrq not in", values, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqBetween(Date value1, Date value2) {
            addCriterion("shrq between", value1, value2, "shrq");
            return (Criteria) this;
        }

        public Criteria andShrqNotBetween(Date value1, Date value2) {
            addCriterion("shrq not between", value1, value2, "shrq");
            return (Criteria) this;
        }
        
				
        public Criteria andBzIsNull() {
            addCriterion("bz is null");
            return (Criteria) this;
        }

        public Criteria andBzIsNotNull() {
            addCriterion("bz is not null");
            return (Criteria) this;
        }

        public Criteria andBzEqualTo(String value) {
            addCriterion("bz =", value, "bz");
            return (Criteria) this;
        }

        public Criteria andBzNotEqualTo(String value) {
            addCriterion("bz <>", value, "bz");
            return (Criteria) this;
        }

        public Criteria andBzGreaterThan(String value) {
            addCriterion("bz >", value, "bz");
            return (Criteria) this;
        }

        public Criteria andBzGreaterThanOrEqualTo(String value) {
            addCriterion("bz >=", value, "bz");
            return (Criteria) this;
        }

        public Criteria andBzLessThan(String value) {
            addCriterion("bz <", value, "bz");
            return (Criteria) this;
        }

        public Criteria andBzLessThanOrEqualTo(String value) {
            addCriterion("bz <=", value, "bz");
            return (Criteria) this;
        }

        public Criteria andBzLike(String value) {
            addCriterion("bz like", value, "bz");
            return (Criteria) this;
        }

        public Criteria andBzNotLike(String value) {
            addCriterion("bz not like", value, "bz");
            return (Criteria) this;
        }

        public Criteria andBzIn(List<String> values) {
            addCriterion("bz in", values, "bz");
            return (Criteria) this;
        }

        public Criteria andBzNotIn(List<String> values) {
            addCriterion("bz not in", values, "bz");
            return (Criteria) this;
        }

        public Criteria andBzBetween(String value1, String value2) {
            addCriterion("bz between", value1, value2, "bz");
            return (Criteria) this;
        }

        public Criteria andBzNotBetween(String value1, String value2) {
            addCriterion("bz not between", value1, value2, "bz");
            return (Criteria) this;
        }
        
			
		 public Criteria andLikeQuery(Dpbs record) {
		 	List<String> list= new ArrayList<String>();
		 	List<String> list2= new ArrayList<String>();
        	StringBuffer buffer=new StringBuffer();
			if(record.getId()!=null&&StrUtil.isNotEmpty(record.getId().toString())) {
    			 list.add("ifnull(id,'')");
    		}
			if(record.getBsdh()!=null&&StrUtil.isNotEmpty(record.getBsdh().toString())) {
    			 list.add("ifnull(bsdh,'')");
    		}
			if(record.getJzIds()!=null&&StrUtil.isNotEmpty(record.getJzIds().toString())) {
    			 list.add("ifnull(jz_ids,'')");
    		}
			if(record.getShState()!=null&&StrUtil.isNotEmpty(record.getShState().toString())) {
    			 list.add("ifnull(sh_state,'')");
    		}
			if(record.getSqrq()!=null&&StrUtil.isNotEmpty(record.getSqrq().toString())) {
    			 list.add("ifnull(sqrq,'')");
    		}
			if(record.getSqrId()!=null&&StrUtil.isNotEmpty(record.getSqrId().toString())) {
    			 list.add("ifnull(sqr_id,'')");
    		}
			if(record.getSqrName()!=null&&StrUtil.isNotEmpty(record.getSqrName().toString())) {
    			 list.add("ifnull(sqr_name,'')");
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
			if(record.getShrq()!=null&&StrUtil.isNotEmpty(record.getShrq().toString())) {
    			 list.add("ifnull(shrq,'')");
    		}
			if(record.getBz()!=null&&StrUtil.isNotEmpty(record.getBz().toString())) {
    			 list.add("ifnull(bz,'')");
    		}
			if(record.getId()!=null&&StrUtil.isNotEmpty(record.getId().toString())) {
    			list2.add("'%"+record.getId()+"%'");
    		}
			if(record.getBsdh()!=null&&StrUtil.isNotEmpty(record.getBsdh().toString())) {
    			list2.add("'%"+record.getBsdh()+"%'");
    		}
			if(record.getJzIds()!=null&&StrUtil.isNotEmpty(record.getJzIds().toString())) {
    			list2.add("'%"+record.getJzIds()+"%'");
    		}
			if(record.getShState()!=null&&StrUtil.isNotEmpty(record.getShState().toString())) {
    			list2.add("'%"+record.getShState()+"%'");
    		}
			if(record.getSqrq()!=null&&StrUtil.isNotEmpty(record.getSqrq().toString())) {
    			list2.add("'%"+record.getSqrq()+"%'");
    		}
			if(record.getSqrId()!=null&&StrUtil.isNotEmpty(record.getSqrId().toString())) {
    			list2.add("'%"+record.getSqrId()+"%'");
    		}
			if(record.getSqrName()!=null&&StrUtil.isNotEmpty(record.getSqrName().toString())) {
    			list2.add("'%"+record.getSqrName()+"%'");
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
			if(record.getShrq()!=null&&StrUtil.isNotEmpty(record.getShrq().toString())) {
    			list2.add("'%"+record.getShrq()+"%'");
    		}
			if(record.getBz()!=null&&StrUtil.isNotEmpty(record.getBz().toString())) {
    			list2.add("'%"+record.getBz()+"%'");
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
    		list.add("ifnull(bsdh,'')");
    		list.add("ifnull(jz_ids,'')");
    		list.add("ifnull(sh_state,'')");
    		list.add("ifnull(sqrq,'')");
    		list.add("ifnull(sqr_id,'')");
    		list.add("ifnull(sqr_name,'')");
    		list.add("ifnull(zdr_id,'')");
    		list.add("ifnull(zdr_name,'')");
    		list.add("ifnull(shr_id,'')");
    		list.add("ifnull(shr_name,'')");
    		list.add("ifnull(shrq,'')");
    		list.add("ifnull(bz,'')");
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