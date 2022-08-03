package com.fc.v2.model.auto;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import cn.hutool.core.util.StrUtil;

/**
 * 磁盘柜号 CpghExample
 * @author fuce_自动生成
 * @date 2022-03-06 15:13:41
 */
public class CpghExample {

    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CpghExample() {
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
        
				
        public Criteria andCpghIsNull() {
            addCriterion("cpgh is null");
            return (Criteria) this;
        }

        public Criteria andCpghIsNotNull() {
            addCriterion("cpgh is not null");
            return (Criteria) this;
        }

        public Criteria andCpghEqualTo(String value) {
            addCriterion("cpgh =", value, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghNotEqualTo(String value) {
            addCriterion("cpgh <>", value, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghGreaterThan(String value) {
            addCriterion("cpgh >", value, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghGreaterThanOrEqualTo(String value) {
            addCriterion("cpgh >=", value, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghLessThan(String value) {
            addCriterion("cpgh <", value, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghLessThanOrEqualTo(String value) {
            addCriterion("cpgh <=", value, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghLike(String value) {
            addCriterion("cpgh like", value, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghNotLike(String value) {
            addCriterion("cpgh not like", value, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghIn(List<String> values) {
            addCriterion("cpgh in", values, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghNotIn(List<String> values) {
            addCriterion("cpgh not in", values, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghBetween(String value1, String value2) {
            addCriterion("cpgh between", value1, value2, "cpgh");
            return (Criteria) this;
        }

        public Criteria andCpghNotBetween(String value1, String value2) {
            addCriterion("cpgh not between", value1, value2, "cpgh");
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
        
				
        public Criteria andMinNumIsNull() {
            addCriterion("min_num is null");
            return (Criteria) this;
        }

        public Criteria andMinNumIsNotNull() {
            addCriterion("min_num is not null");
            return (Criteria) this;
        }

        public Criteria andMinNumEqualTo(Integer value) {
            addCriterion("min_num =", value, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumNotEqualTo(Integer value) {
            addCriterion("min_num <>", value, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumGreaterThan(Integer value) {
            addCriterion("min_num >", value, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("min_num >=", value, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumLessThan(Integer value) {
            addCriterion("min_num <", value, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumLessThanOrEqualTo(Integer value) {
            addCriterion("min_num <=", value, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumLike(Integer value) {
            addCriterion("min_num like", value, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumNotLike(Integer value) {
            addCriterion("min_num not like", value, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumIn(List<Integer> values) {
            addCriterion("min_num in", values, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumNotIn(List<Integer> values) {
            addCriterion("min_num not in", values, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumBetween(Integer value1, Integer value2) {
            addCriterion("min_num between", value1, value2, "minNum");
            return (Criteria) this;
        }

        public Criteria andMinNumNotBetween(Integer value1, Integer value2) {
            addCriterion("min_num not between", value1, value2, "minNum");
            return (Criteria) this;
        }
        
				
        public Criteria andMaxNumIsNull() {
            addCriterion("max_num is null");
            return (Criteria) this;
        }

        public Criteria andMaxNumIsNotNull() {
            addCriterion("max_num is not null");
            return (Criteria) this;
        }

        public Criteria andMaxNumEqualTo(Integer value) {
            addCriterion("max_num =", value, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumNotEqualTo(Integer value) {
            addCriterion("max_num <>", value, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumGreaterThan(Integer value) {
            addCriterion("max_num >", value, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("max_num >=", value, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumLessThan(Integer value) {
            addCriterion("max_num <", value, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumLessThanOrEqualTo(Integer value) {
            addCriterion("max_num <=", value, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumLike(Integer value) {
            addCriterion("max_num like", value, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumNotLike(Integer value) {
            addCriterion("max_num not like", value, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumIn(List<Integer> values) {
            addCriterion("max_num in", values, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumNotIn(List<Integer> values) {
            addCriterion("max_num not in", values, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumBetween(Integer value1, Integer value2) {
            addCriterion("max_num between", value1, value2, "maxNum");
            return (Criteria) this;
        }

        public Criteria andMaxNumNotBetween(Integer value1, Integer value2) {
            addCriterion("max_num not between", value1, value2, "maxNum");
            return (Criteria) this;
        }
        
				
        public Criteria andEarlyWarNumIsNull() {
            addCriterion("early_war_num is null");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumIsNotNull() {
            addCriterion("early_war_num is not null");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumEqualTo(Integer value) {
            addCriterion("early_war_num =", value, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumNotEqualTo(Integer value) {
            addCriterion("early_war_num <>", value, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumGreaterThan(Integer value) {
            addCriterion("early_war_num >", value, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("early_war_num >=", value, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumLessThan(Integer value) {
            addCriterion("early_war_num <", value, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumLessThanOrEqualTo(Integer value) {
            addCriterion("early_war_num <=", value, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumLike(Integer value) {
            addCriterion("early_war_num like", value, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumNotLike(Integer value) {
            addCriterion("early_war_num not like", value, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumIn(List<Integer> values) {
            addCriterion("early_war_num in", values, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumNotIn(List<Integer> values) {
            addCriterion("early_war_num not in", values, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumBetween(Integer value1, Integer value2) {
            addCriterion("early_war_num between", value1, value2, "earlyWarNum");
            return (Criteria) this;
        }

        public Criteria andEarlyWarNumNotBetween(Integer value1, Integer value2) {
            addCriterion("early_war_num not between", value1, value2, "earlyWarNum");
            return (Criteria) this;
        }
        
				
        public Criteria andSsjgIsNull() {
            addCriterion("ssjg is null");
            return (Criteria) this;
        }

        public Criteria andSsjgIsNotNull() {
            addCriterion("ssjg is not null");
            return (Criteria) this;
        }

        public Criteria andSsjgEqualTo(String value) {
            addCriterion("ssjg =", value, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgNotEqualTo(String value) {
            addCriterion("ssjg <>", value, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgGreaterThan(String value) {
            addCriterion("ssjg >", value, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgGreaterThanOrEqualTo(String value) {
            addCriterion("ssjg >=", value, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgLessThan(String value) {
            addCriterion("ssjg <", value, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgLessThanOrEqualTo(String value) {
            addCriterion("ssjg <=", value, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgLike(String value) {
            addCriterion("ssjg like", value, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgNotLike(String value) {
            addCriterion("ssjg not like", value, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgIn(List<String> values) {
            addCriterion("ssjg in", values, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgNotIn(List<String> values) {
            addCriterion("ssjg not in", values, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgBetween(String value1, String value2) {
            addCriterion("ssjg between", value1, value2, "ssjg");
            return (Criteria) this;
        }

        public Criteria andSsjgNotBetween(String value1, String value2) {
            addCriterion("ssjg not between", value1, value2, "ssjg");
            return (Criteria) this;
        }
        
			
		 public Criteria andLikeQuery(Cpgh record) {
		 	List<String> list= new ArrayList<String>();
		 	List<String> list2= new ArrayList<String>();
        	StringBuffer buffer=new StringBuffer();
			if(record.getId()!=null&&StrUtil.isNotEmpty(record.getId().toString())) {
    			 list.add("ifnull(id,'')");
    		}
			if(record.getCpgh()!=null&&StrUtil.isNotEmpty(record.getCpgh().toString())) {
    			 list.add("ifnull(cpgh,'')");
    		}
			if(record.getRemarks()!=null&&StrUtil.isNotEmpty(record.getRemarks().toString())) {
    			 list.add("ifnull(remarks,'')");
    		}
			if(record.getMinNum()!=null&&StrUtil.isNotEmpty(record.getMinNum().toString())) {
    			 list.add("ifnull(min_num,'')");
    		}
			if(record.getMaxNum()!=null&&StrUtil.isNotEmpty(record.getMaxNum().toString())) {
    			 list.add("ifnull(max_num,'')");
    		}
			if(record.getEarlyWarNum()!=null&&StrUtil.isNotEmpty(record.getEarlyWarNum().toString())) {
    			 list.add("ifnull(early_war_num,'')");
    		}
			if(record.getSsjg()!=null&&StrUtil.isNotEmpty(record.getSsjg().toString())) {
    			 list.add("ifnull(ssjg,'')");
    		}
			if(record.getId()!=null&&StrUtil.isNotEmpty(record.getId().toString())) {
    			list2.add("'%"+record.getId()+"%'");
    		}
			if(record.getCpgh()!=null&&StrUtil.isNotEmpty(record.getCpgh().toString())) {
    			list2.add("'%"+record.getCpgh()+"%'");
    		}
			if(record.getRemarks()!=null&&StrUtil.isNotEmpty(record.getRemarks().toString())) {
    			list2.add("'%"+record.getRemarks()+"%'");
    		}
			if(record.getMinNum()!=null&&StrUtil.isNotEmpty(record.getMinNum().toString())) {
    			list2.add("'%"+record.getMinNum()+"%'");
    		}
			if(record.getMaxNum()!=null&&StrUtil.isNotEmpty(record.getMaxNum().toString())) {
    			list2.add("'%"+record.getMaxNum()+"%'");
    		}
			if(record.getEarlyWarNum()!=null&&StrUtil.isNotEmpty(record.getEarlyWarNum().toString())) {
    			list2.add("'%"+record.getEarlyWarNum()+"%'");
    		}
			if(record.getSsjg()!=null&&StrUtil.isNotEmpty(record.getSsjg().toString())) {
    			list2.add("'%"+record.getSsjg()+"%'");
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
    		list.add("ifnull(cpgh,'')");
    		list.add("ifnull(remarks,'')");
    		list.add("ifnull(min_num,'')");
    		list.add("ifnull(max_num,'')");
    		list.add("ifnull(early_war_num,'')");
    		list.add("ifnull(ssjg,'')");
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