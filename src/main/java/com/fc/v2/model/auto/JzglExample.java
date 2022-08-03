package com.fc.v2.model.auto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import cn.hutool.core.util.StrUtil;

/**
 * 介质管理 JzglExample
 * @author fuce_自动生成
 * @date 2022-02-28 21:51:28
 */
public class JzglExample {

    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public JzglExample() {
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
        
				
        public Criteria andJzbmIsNull() {
            addCriterion("jzbm is null");
            return (Criteria) this;
        }

        public Criteria andJzbmIsNotNull() {
            addCriterion("jzbm is not null");
            return (Criteria) this;
        }

        public Criteria andJzbmEqualTo(String value) {
            addCriterion("jzbm =", value, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmNotEqualTo(String value) {
            addCriterion("jzbm <>", value, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmGreaterThan(String value) {
            addCriterion("jzbm >", value, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmGreaterThanOrEqualTo(String value) {
            addCriterion("jzbm >=", value, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmLessThan(String value) {
            addCriterion("jzbm <", value, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmLessThanOrEqualTo(String value) {
            addCriterion("jzbm <=", value, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmLike(String value) {
            addCriterion("jzbm like", value, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmNotLike(String value) {
            addCriterion("jzbm not like", value, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmIn(List<String> values) {
            addCriterion("jzbm in", values, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmNotIn(List<String> values) {
            addCriterion("jzbm not in", values, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmBetween(String value1, String value2) {
            addCriterion("jzbm between", value1, value2, "jzbm");
            return (Criteria) this;
        }

        public Criteria andJzbmNotBetween(String value1, String value2) {
            addCriterion("jzbm not between", value1, value2, "jzbm");
            return (Criteria) this;
        }
        
				
        public Criteria andJzmcIsNull() {
            addCriterion("jzmc is null");
            return (Criteria) this;
        }

        public Criteria andJzmcIsNotNull() {
            addCriterion("jzmc is not null");
            return (Criteria) this;
        }

        public Criteria andJzmcEqualTo(String value) {
            addCriterion("jzmc =", value, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcNotEqualTo(String value) {
            addCriterion("jzmc <>", value, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcGreaterThan(String value) {
            addCriterion("jzmc >", value, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcGreaterThanOrEqualTo(String value) {
            addCriterion("jzmc >=", value, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcLessThan(String value) {
            addCriterion("jzmc <", value, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcLessThanOrEqualTo(String value) {
            addCriterion("jzmc <=", value, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcLike(String value) {
            addCriterion("jzmc like", value, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcNotLike(String value) {
            addCriterion("jzmc not like", value, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcIn(List<String> values) {
            addCriterion("jzmc in", values, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcNotIn(List<String> values) {
            addCriterion("jzmc not in", values, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcBetween(String value1, String value2) {
            addCriterion("jzmc between", value1, value2, "jzmc");
            return (Criteria) this;
        }

        public Criteria andJzmcNotBetween(String value1, String value2) {
            addCriterion("jzmc not between", value1, value2, "jzmc");
            return (Criteria) this;
        }
        
				
        public Criteria andJztmIsNull() {
            addCriterion("jztm is null");
            return (Criteria) this;
        }

        public Criteria andJztmIsNotNull() {
            addCriterion("jztm is not null");
            return (Criteria) this;
        }

        public Criteria andJztmEqualTo(String value) {
            addCriterion("jztm =", value, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmNotEqualTo(String value) {
            addCriterion("jztm <>", value, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmGreaterThan(String value) {
            addCriterion("jztm >", value, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmGreaterThanOrEqualTo(String value) {
            addCriterion("jztm >=", value, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmLessThan(String value) {
            addCriterion("jztm <", value, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmLessThanOrEqualTo(String value) {
            addCriterion("jztm <=", value, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmLike(String value) {
            addCriterion("jztm like", value, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmNotLike(String value) {
            addCriterion("jztm not like", value, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmIn(List<String> values) {
            addCriterion("jztm in", values, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmNotIn(List<String> values) {
            addCriterion("jztm not in", values, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmBetween(String value1, String value2) {
            addCriterion("jztm between", value1, value2, "jztm");
            return (Criteria) this;
        }

        public Criteria andJztmNotBetween(String value1, String value2) {
            addCriterion("jztm not between", value1, value2, "jztm");
            return (Criteria) this;
        }
        
				
        public Criteria andXhIsNull() {
            addCriterion("xh is null");
            return (Criteria) this;
        }

        public Criteria andXhIsNotNull() {
            addCriterion("xh is not null");
            return (Criteria) this;
        }

        public Criteria andXhEqualTo(String value) {
            addCriterion("xh =", value, "xh");
            return (Criteria) this;
        }

        public Criteria andXhNotEqualTo(String value) {
            addCriterion("xh <>", value, "xh");
            return (Criteria) this;
        }

        public Criteria andXhGreaterThan(String value) {
            addCriterion("xh >", value, "xh");
            return (Criteria) this;
        }

        public Criteria andXhGreaterThanOrEqualTo(String value) {
            addCriterion("xh >=", value, "xh");
            return (Criteria) this;
        }

        public Criteria andXhLessThan(String value) {
            addCriterion("xh <", value, "xh");
            return (Criteria) this;
        }

        public Criteria andXhLessThanOrEqualTo(String value) {
            addCriterion("xh <=", value, "xh");
            return (Criteria) this;
        }

        public Criteria andXhLike(String value) {
            addCriterion("xh like", value, "xh");
            return (Criteria) this;
        }

        public Criteria andXhNotLike(String value) {
            addCriterion("xh not like", value, "xh");
            return (Criteria) this;
        }

        public Criteria andXhIn(List<String> values) {
            addCriterion("xh in", values, "xh");
            return (Criteria) this;
        }

        public Criteria andXhNotIn(List<String> values) {
            addCriterion("xh not in", values, "xh");
            return (Criteria) this;
        }

        public Criteria andXhBetween(String value1, String value2) {
            addCriterion("xh between", value1, value2, "xh");
            return (Criteria) this;
        }

        public Criteria andXhNotBetween(String value1, String value2) {
            addCriterion("xh not between", value1, value2, "xh");
            return (Criteria) this;
        }
        
				
        public Criteria andSsflIsNull() {
            addCriterion("ssfl is null");
            return (Criteria) this;
        }

        public Criteria andSsflIsNotNull() {
            addCriterion("ssfl is not null");
            return (Criteria) this;
        }

        public Criteria andSsflEqualTo(String value) {
            addCriterion("ssfl =", value, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflNotEqualTo(String value) {
            addCriterion("ssfl <>", value, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflGreaterThan(String value) {
            addCriterion("ssfl >", value, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflGreaterThanOrEqualTo(String value) {
            addCriterion("ssfl >=", value, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflLessThan(String value) {
            addCriterion("ssfl <", value, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflLessThanOrEqualTo(String value) {
            addCriterion("ssfl <=", value, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflLike(String value) {
            addCriterion("ssfl like", value, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflNotLike(String value) {
            addCriterion("ssfl not like", value, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflIn(List<String> values) {
            addCriterion("ssfl in", values, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflNotIn(List<String> values) {
            addCriterion("ssfl not in", values, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflBetween(String value1, String value2) {
            addCriterion("ssfl between", value1, value2, "ssfl");
            return (Criteria) this;
        }

        public Criteria andSsflNotBetween(String value1, String value2) {
            addCriterion("ssfl not between", value1, value2, "ssfl");
            return (Criteria) this;
        }
        
				
        public Criteria andSscjIsNull() {
            addCriterion("sscj is null");
            return (Criteria) this;
        }

        public Criteria andSscjIsNotNull() {
            addCriterion("sscj is not null");
            return (Criteria) this;
        }

        public Criteria andSscjEqualTo(String value) {
            addCriterion("sscj =", value, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjNotEqualTo(String value) {
            addCriterion("sscj <>", value, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjGreaterThan(String value) {
            addCriterion("sscj >", value, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjGreaterThanOrEqualTo(String value) {
            addCriterion("sscj >=", value, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjLessThan(String value) {
            addCriterion("sscj <", value, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjLessThanOrEqualTo(String value) {
            addCriterion("sscj <=", value, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjLike(String value) {
            addCriterion("sscj like", value, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjNotLike(String value) {
            addCriterion("sscj not like", value, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjIn(List<String> values) {
            addCriterion("sscj in", values, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjNotIn(List<String> values) {
            addCriterion("sscj not in", values, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjBetween(String value1, String value2) {
            addCriterion("sscj between", value1, value2, "sscj");
            return (Criteria) this;
        }

        public Criteria andSscjNotBetween(String value1, String value2) {
            addCriterion("sscj not between", value1, value2, "sscj");
            return (Criteria) this;
        }
        
				
        public Criteria andPchIsNull() {
            addCriterion("pch is null");
            return (Criteria) this;
        }

        public Criteria andPchIsNotNull() {
            addCriterion("pch is not null");
            return (Criteria) this;
        }

        public Criteria andPchEqualTo(String value) {
            addCriterion("pch =", value, "pch");
            return (Criteria) this;
        }

        public Criteria andPchNotEqualTo(String value) {
            addCriterion("pch <>", value, "pch");
            return (Criteria) this;
        }

        public Criteria andPchGreaterThan(String value) {
            addCriterion("pch >", value, "pch");
            return (Criteria) this;
        }

        public Criteria andPchGreaterThanOrEqualTo(String value) {
            addCriterion("pch >=", value, "pch");
            return (Criteria) this;
        }

        public Criteria andPchLessThan(String value) {
            addCriterion("pch <", value, "pch");
            return (Criteria) this;
        }

        public Criteria andPchLessThanOrEqualTo(String value) {
            addCriterion("pch <=", value, "pch");
            return (Criteria) this;
        }

        public Criteria andPchLike(String value) {
            addCriterion("pch like", value, "pch");
            return (Criteria) this;
        }

        public Criteria andPchNotLike(String value) {
            addCriterion("pch not like", value, "pch");
            return (Criteria) this;
        }

        public Criteria andPchIn(List<String> values) {
            addCriterion("pch in", values, "pch");
            return (Criteria) this;
        }

        public Criteria andPchNotIn(List<String> values) {
            addCriterion("pch not in", values, "pch");
            return (Criteria) this;
        }

        public Criteria andPchBetween(String value1, String value2) {
            addCriterion("pch between", value1, value2, "pch");
            return (Criteria) this;
        }

        public Criteria andPchNotBetween(String value1, String value2) {
            addCriterion("pch not between", value1, value2, "pch");
            return (Criteria) this;
        }
        
				
        public Criteria andZdkcIsNull() {
            addCriterion("zdkc is null");
            return (Criteria) this;
        }

        public Criteria andZdkcIsNotNull() {
            addCriterion("zdkc is not null");
            return (Criteria) this;
        }

        public Criteria andZdkcEqualTo(String value) {
            addCriterion("zdkc =", value, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcNotEqualTo(String value) {
            addCriterion("zdkc <>", value, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcGreaterThan(String value) {
            addCriterion("zdkc >", value, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcGreaterThanOrEqualTo(String value) {
            addCriterion("zdkc >=", value, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcLessThan(String value) {
            addCriterion("zdkc <", value, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcLessThanOrEqualTo(String value) {
            addCriterion("zdkc <=", value, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcLike(String value) {
            addCriterion("zdkc like", value, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcNotLike(String value) {
            addCriterion("zdkc not like", value, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcIn(List<String> values) {
            addCriterion("zdkc in", values, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcNotIn(List<String> values) {
            addCriterion("zdkc not in", values, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcBetween(String value1, String value2) {
            addCriterion("zdkc between", value1, value2, "zdkc");
            return (Criteria) this;
        }

        public Criteria andZdkcNotBetween(String value1, String value2) {
            addCriterion("zdkc not between", value1, value2, "zdkc");
            return (Criteria) this;
        }
        
				
        public Criteria andZgkcIsNull() {
            addCriterion("zgkc is null");
            return (Criteria) this;
        }

        public Criteria andZgkcIsNotNull() {
            addCriterion("zgkc is not null");
            return (Criteria) this;
        }

        public Criteria andZgkcEqualTo(String value) {
            addCriterion("zgkc =", value, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcNotEqualTo(String value) {
            addCriterion("zgkc <>", value, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcGreaterThan(String value) {
            addCriterion("zgkc >", value, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcGreaterThanOrEqualTo(String value) {
            addCriterion("zgkc >=", value, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcLessThan(String value) {
            addCriterion("zgkc <", value, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcLessThanOrEqualTo(String value) {
            addCriterion("zgkc <=", value, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcLike(String value) {
            addCriterion("zgkc like", value, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcNotLike(String value) {
            addCriterion("zgkc not like", value, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcIn(List<String> values) {
            addCriterion("zgkc in", values, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcNotIn(List<String> values) {
            addCriterion("zgkc not in", values, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcBetween(String value1, String value2) {
            addCriterion("zgkc between", value1, value2, "zgkc");
            return (Criteria) this;
        }

        public Criteria andZgkcNotBetween(String value1, String value2) {
            addCriterion("zgkc not between", value1, value2, "zgkc");
            return (Criteria) this;
        }
        
				
        public Criteria andJzTypeIsNull() {
            addCriterion("jz_type is null");
            return (Criteria) this;
        }

        public Criteria andJzTypeIsNotNull() {
            addCriterion("jz_type is not null");
            return (Criteria) this;
        }

        public Criteria andJzTypeEqualTo(Integer value) {
            addCriterion("jz_type =", value, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeNotEqualTo(Integer value) {
            addCriterion("jz_type <>", value, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeGreaterThan(Integer value) {
            addCriterion("jz_type >", value, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("jz_type >=", value, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeLessThan(Integer value) {
            addCriterion("jz_type <", value, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeLessThanOrEqualTo(Integer value) {
            addCriterion("jz_type <=", value, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeLike(Integer value) {
            addCriterion("jz_type like", value, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeNotLike(Integer value) {
            addCriterion("jz_type not like", value, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeIn(List<Integer> values) {
            addCriterion("jz_type in", values, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeNotIn(List<Integer> values) {
            addCriterion("jz_type not in", values, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeBetween(Integer value1, Integer value2) {
            addCriterion("jz_type between", value1, value2, "jzType");
            return (Criteria) this;
        }

        public Criteria andJzTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("jz_type not between", value1, value2, "jzType");
            return (Criteria) this;
        }
        
				
        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLike(Date value) {
            addCriterion("create_time like", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotLike(Date value) {
            addCriterion("create_time not like", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }
        
				
        public Criteria andCreateUserIdIsNull() {
            addCriterion("create_user_id is null");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIsNotNull() {
            addCriterion("create_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdEqualTo(String value) {
            addCriterion("create_user_id =", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotEqualTo(String value) {
            addCriterion("create_user_id <>", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdGreaterThan(String value) {
            addCriterion("create_user_id >", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("create_user_id >=", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLessThan(String value) {
            addCriterion("create_user_id <", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLessThanOrEqualTo(String value) {
            addCriterion("create_user_id <=", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdLike(String value) {
            addCriterion("create_user_id like", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotLike(String value) {
            addCriterion("create_user_id not like", value, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdIn(List<String> values) {
            addCriterion("create_user_id in", values, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotIn(List<String> values) {
            addCriterion("create_user_id not in", values, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdBetween(String value1, String value2) {
            addCriterion("create_user_id between", value1, value2, "createUserId");
            return (Criteria) this;
        }

        public Criteria andCreateUserIdNotBetween(String value1, String value2) {
            addCriterion("create_user_id not between", value1, value2, "createUserId");
            return (Criteria) this;
        }
        
				
        public Criteria andCreateUserNameIsNull() {
            addCriterion("create_user_name is null");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameIsNotNull() {
            addCriterion("create_user_name is not null");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameEqualTo(String value) {
            addCriterion("create_user_name =", value, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameNotEqualTo(String value) {
            addCriterion("create_user_name <>", value, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameGreaterThan(String value) {
            addCriterion("create_user_name >", value, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameGreaterThanOrEqualTo(String value) {
            addCriterion("create_user_name >=", value, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameLessThan(String value) {
            addCriterion("create_user_name <", value, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameLessThanOrEqualTo(String value) {
            addCriterion("create_user_name <=", value, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameLike(String value) {
            addCriterion("create_user_name like", value, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameNotLike(String value) {
            addCriterion("create_user_name not like", value, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameIn(List<String> values) {
            addCriterion("create_user_name in", values, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameNotIn(List<String> values) {
            addCriterion("create_user_name not in", values, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameBetween(String value1, String value2) {
            addCriterion("create_user_name between", value1, value2, "createUserName");
            return (Criteria) this;
        }

        public Criteria andCreateUserNameNotBetween(String value1, String value2) {
            addCriterion("create_user_name not between", value1, value2, "createUserName");
            return (Criteria) this;
        }
        
				
        public Criteria andSsjgIdIsNull() {
            addCriterion("ssjg_id is null");
            return (Criteria) this;
        }

        public Criteria andSsjgIdIsNotNull() {
            addCriterion("ssjg_id is not null");
            return (Criteria) this;
        }

        public Criteria andSsjgIdEqualTo(String value) {
            addCriterion("ssjg_id =", value, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdNotEqualTo(String value) {
            addCriterion("ssjg_id <>", value, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdGreaterThan(String value) {
            addCriterion("ssjg_id >", value, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdGreaterThanOrEqualTo(String value) {
            addCriterion("ssjg_id >=", value, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdLessThan(String value) {
            addCriterion("ssjg_id <", value, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdLessThanOrEqualTo(String value) {
            addCriterion("ssjg_id <=", value, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdLike(String value) {
            addCriterion("ssjg_id like", value, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdNotLike(String value) {
            addCriterion("ssjg_id not like", value, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdIn(List<String> values) {
            addCriterion("ssjg_id in", values, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdNotIn(List<String> values) {
            addCriterion("ssjg_id not in", values, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdBetween(String value1, String value2) {
            addCriterion("ssjg_id between", value1, value2, "ssjgId");
            return (Criteria) this;
        }

        public Criteria andSsjgIdNotBetween(String value1, String value2) {
            addCriterion("ssjg_id not between", value1, value2, "ssjgId");
            return (Criteria) this;
        }
        
				
        public Criteria andDpStateIsNull() {
            addCriterion("dp_state is null");
            return (Criteria) this;
        }

        public Criteria andDpStateIsNotNull() {
            addCriterion("dp_state is not null");
            return (Criteria) this;
        }

        public Criteria andDpStateEqualTo(Integer value) {
            addCriterion("dp_state =", value, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateNotEqualTo(Integer value) {
            addCriterion("dp_state <>", value, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateGreaterThan(Integer value) {
            addCriterion("dp_state >", value, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateGreaterThanOrEqualTo(Integer value) {
            addCriterion("dp_state >=", value, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateLessThan(Integer value) {
            addCriterion("dp_state <", value, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateLessThanOrEqualTo(Integer value) {
            addCriterion("dp_state <=", value, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateLike(Integer value) {
            addCriterion("dp_state like", value, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateNotLike(Integer value) {
            addCriterion("dp_state not like", value, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateIn(List<Integer> values) {
            addCriterion("dp_state in", values, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateNotIn(List<Integer> values) {
            addCriterion("dp_state not in", values, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateBetween(Integer value1, Integer value2) {
            addCriterion("dp_state between", value1, value2, "dpState");
            return (Criteria) this;
        }

        public Criteria andDpStateNotBetween(Integer value1, Integer value2) {
            addCriterion("dp_state not between", value1, value2, "dpState");
            return (Criteria) this;
        }
        
				
        public Criteria andCpjgIdIsNull() {
            addCriterion("cpjg_id is null");
            return (Criteria) this;
        }

        public Criteria andCpjgIdIsNotNull() {
            addCriterion("cpjg_id is not null");
            return (Criteria) this;
        }

        public Criteria andCpjgIdEqualTo(String value) {
            addCriterion("cpjg_id =", value, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdNotEqualTo(String value) {
            addCriterion("cpjg_id <>", value, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdGreaterThan(String value) {
            addCriterion("cpjg_id >", value, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdGreaterThanOrEqualTo(String value) {
            addCriterion("cpjg_id >=", value, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdLessThan(String value) {
            addCriterion("cpjg_id <", value, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdLessThanOrEqualTo(String value) {
            addCriterion("cpjg_id <=", value, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdLike(String value) {
            addCriterion("cpjg_id like", value, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdNotLike(String value) {
            addCriterion("cpjg_id not like", value, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdIn(List<String> values) {
            addCriterion("cpjg_id in", values, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdNotIn(List<String> values) {
            addCriterion("cpjg_id not in", values, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdBetween(String value1, String value2) {
            addCriterion("cpjg_id between", value1, value2, "cpjgId");
            return (Criteria) this;
        }

        public Criteria andCpjgIdNotBetween(String value1, String value2) {
            addCriterion("cpjg_id not between", value1, value2, "cpjgId");
            return (Criteria) this;
        }
        
			
		 public Criteria andLikeQuery(Jzgl record) {
		 	List<String> list= new ArrayList<String>();
		 	List<String> list2= new ArrayList<String>();
        	StringBuffer buffer=new StringBuffer();
			if(record.getId()!=null&&StrUtil.isNotEmpty(record.getId().toString())) {
    			 list.add("ifnull(id,'')");
    		}
			if(record.getJzbm()!=null&&StrUtil.isNotEmpty(record.getJzbm().toString())) {
    			 list.add("ifnull(jzbm,'')");
    		}
			if(record.getJzmc()!=null&&StrUtil.isNotEmpty(record.getJzmc().toString())) {
    			 list.add("ifnull(jzmc,'')");
    		}
			if(record.getJztm()!=null&&StrUtil.isNotEmpty(record.getJztm().toString())) {
    			 list.add("ifnull(jztm,'')");
    		}
			if(record.getXh()!=null&&StrUtil.isNotEmpty(record.getXh().toString())) {
    			 list.add("ifnull(xh,'')");
    		}
			if(record.getSsfl()!=null&&StrUtil.isNotEmpty(record.getSsfl().toString())) {
    			 list.add("ifnull(ssfl,'')");
    		}
			if(record.getSscj()!=null&&StrUtil.isNotEmpty(record.getSscj().toString())) {
    			 list.add("ifnull(sscj,'')");
    		}
			if(record.getPch()!=null&&StrUtil.isNotEmpty(record.getPch().toString())) {
    			 list.add("ifnull(pch,'')");
    		}
			if(record.getZdkc()!=null&&StrUtil.isNotEmpty(record.getZdkc().toString())) {
    			 list.add("ifnull(zdkc,'')");
    		}
			if(record.getZgkc()!=null&&StrUtil.isNotEmpty(record.getZgkc().toString())) {
    			 list.add("ifnull(zgkc,'')");
    		}
			if(record.getJzType()!=null&&StrUtil.isNotEmpty(record.getJzType().toString())) {
    			 list.add("ifnull(jz_type,'')");
    		}
			if(record.getCreateTime()!=null&&StrUtil.isNotEmpty(record.getCreateTime().toString())) {
    			 list.add("ifnull(create_time,'')");
    		}
			if(record.getCreateUserId()!=null&&StrUtil.isNotEmpty(record.getCreateUserId().toString())) {
    			 list.add("ifnull(create_user_id,'')");
    		}
			if(record.getCreateUserName()!=null&&StrUtil.isNotEmpty(record.getCreateUserName().toString())) {
    			 list.add("ifnull(create_user_name,'')");
    		}
			if(record.getSsjgId()!=null&&StrUtil.isNotEmpty(record.getSsjgId().toString())) {
    			 list.add("ifnull(ssjg_id,'')");
    		}
			if(record.getDpState()!=null&&StrUtil.isNotEmpty(record.getDpState().toString())) {
    			 list.add("ifnull(dp_state,'')");
    		}
			if(record.getCpjgId()!=null&&StrUtil.isNotEmpty(record.getCpjgId().toString())) {
    			 list.add("ifnull(cpjg_id,'')");
    		}
			if(record.getId()!=null&&StrUtil.isNotEmpty(record.getId().toString())) {
    			list2.add("'%"+record.getId()+"%'");
    		}
			if(record.getJzbm()!=null&&StrUtil.isNotEmpty(record.getJzbm().toString())) {
    			list2.add("'%"+record.getJzbm()+"%'");
    		}
			if(record.getJzmc()!=null&&StrUtil.isNotEmpty(record.getJzmc().toString())) {
    			list2.add("'%"+record.getJzmc()+"%'");
    		}
			if(record.getJztm()!=null&&StrUtil.isNotEmpty(record.getJztm().toString())) {
    			list2.add("'%"+record.getJztm()+"%'");
    		}
			if(record.getXh()!=null&&StrUtil.isNotEmpty(record.getXh().toString())) {
    			list2.add("'%"+record.getXh()+"%'");
    		}
			if(record.getSsfl()!=null&&StrUtil.isNotEmpty(record.getSsfl().toString())) {
    			list2.add("'%"+record.getSsfl()+"%'");
    		}
			if(record.getSscj()!=null&&StrUtil.isNotEmpty(record.getSscj().toString())) {
    			list2.add("'%"+record.getSscj()+"%'");
    		}
			if(record.getPch()!=null&&StrUtil.isNotEmpty(record.getPch().toString())) {
    			list2.add("'%"+record.getPch()+"%'");
    		}
			if(record.getZdkc()!=null&&StrUtil.isNotEmpty(record.getZdkc().toString())) {
    			list2.add("'%"+record.getZdkc()+"%'");
    		}
			if(record.getZgkc()!=null&&StrUtil.isNotEmpty(record.getZgkc().toString())) {
    			list2.add("'%"+record.getZgkc()+"%'");
    		}
			if(record.getJzType()!=null&&StrUtil.isNotEmpty(record.getJzType().toString())) {
    			list2.add("'%"+record.getJzType()+"%'");
    		}
			if(record.getCreateTime()!=null&&StrUtil.isNotEmpty(record.getCreateTime().toString())) {
    			list2.add("'%"+record.getCreateTime()+"%'");
    		}
			if(record.getCreateUserId()!=null&&StrUtil.isNotEmpty(record.getCreateUserId().toString())) {
    			list2.add("'%"+record.getCreateUserId()+"%'");
    		}
			if(record.getCreateUserName()!=null&&StrUtil.isNotEmpty(record.getCreateUserName().toString())) {
    			list2.add("'%"+record.getCreateUserName()+"%'");
    		}
			if(record.getSsjgId()!=null&&StrUtil.isNotEmpty(record.getSsjgId().toString())) {
    			list2.add("'%"+record.getSsjgId()+"%'");
    		}
			if(record.getDpState()!=null&&StrUtil.isNotEmpty(record.getDpState().toString())) {
    			list2.add("'%"+record.getDpState()+"%'");
    		}
			if(record.getCpjgId()!=null&&StrUtil.isNotEmpty(record.getCpjgId().toString())) {
    			list2.add("'%"+record.getCpjgId()+"%'");
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
    		list.add("ifnull(jzbm,'')");
    		list.add("ifnull(jzmc,'')");
    		list.add("ifnull(jztm,'')");
    		list.add("ifnull(xh,'')");
    		list.add("ifnull(ssfl,'')");
    		list.add("ifnull(sscj,'')");
    		list.add("ifnull(pch,'')");
    		list.add("ifnull(zdkc,'')");
    		list.add("ifnull(zgkc,'')");
    		list.add("ifnull(jz_type,'')");
    		list.add("ifnull(create_time,'')");
    		list.add("ifnull(create_user_id,'')");
    		list.add("ifnull(create_user_name,'')");
    		list.add("ifnull(ssjg_id,'')");
    		list.add("ifnull(dp_state,'')");
    		list.add("ifnull(cpjg_id,'')");
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