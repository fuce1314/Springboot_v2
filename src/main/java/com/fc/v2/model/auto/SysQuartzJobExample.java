package com.fc.v2.model.auto;

import java.util.ArrayList;
import java.util.List;

/**
 * 定时任务调度表 SysQuartzJobExample
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2019-09-13 00:03:35
 */
public class SysQuartzJobExample {

    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysQuartzJobExample() {
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
        
			
        public Criteria andJobNameIsNull() {
            addCriterion("job_name is null");
            return (Criteria) this;
        }

        public Criteria andJobNameIsNotNull() {
            addCriterion("job_name is not null");
            return (Criteria) this;
        }

        public Criteria andJobNameEqualTo(String value) {
            addCriterion("job_name =", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameNotEqualTo(String value) {
            addCriterion("job_name <>", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameGreaterThan(String value) {
            addCriterion("job_name >", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameGreaterThanOrEqualTo(String value) {
            addCriterion("job_name >=", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameLessThan(String value) {
            addCriterion("job_name <", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameLessThanOrEqualTo(String value) {
            addCriterion("job_name <=", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameLike(String value) {
            addCriterion("job_name like", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameNotLike(String value) {
            addCriterion("job_name not like", value, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameIn(List<String> values) {
            addCriterion("job_name in", values, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameNotIn(List<String> values) {
            addCriterion("job_name not in", values, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameBetween(String value1, String value2) {
            addCriterion("job_name between", value1, value2, "jobName");
            return (Criteria) this;
        }

        public Criteria andJobNameNotBetween(String value1, String value2) {
            addCriterion("job_name not between", value1, value2, "jobName");
            return (Criteria) this;
        }
        
			
        public Criteria andJobGroupIsNull() {
            addCriterion("job_group is null");
            return (Criteria) this;
        }

        public Criteria andJobGroupIsNotNull() {
            addCriterion("job_group is not null");
            return (Criteria) this;
        }

        public Criteria andJobGroupEqualTo(String value) {
            addCriterion("job_group =", value, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupNotEqualTo(String value) {
            addCriterion("job_group <>", value, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupGreaterThan(String value) {
            addCriterion("job_group >", value, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupGreaterThanOrEqualTo(String value) {
            addCriterion("job_group >=", value, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupLessThan(String value) {
            addCriterion("job_group <", value, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupLessThanOrEqualTo(String value) {
            addCriterion("job_group <=", value, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupLike(String value) {
            addCriterion("job_group like", value, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupNotLike(String value) {
            addCriterion("job_group not like", value, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupIn(List<String> values) {
            addCriterion("job_group in", values, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupNotIn(List<String> values) {
            addCriterion("job_group not in", values, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupBetween(String value1, String value2) {
            addCriterion("job_group between", value1, value2, "jobGroup");
            return (Criteria) this;
        }

        public Criteria andJobGroupNotBetween(String value1, String value2) {
            addCriterion("job_group not between", value1, value2, "jobGroup");
            return (Criteria) this;
        }
        
			
        public Criteria andInvokeTargetIsNull() {
            addCriterion("invoke_target is null");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetIsNotNull() {
            addCriterion("invoke_target is not null");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetEqualTo(String value) {
            addCriterion("invoke_target =", value, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetNotEqualTo(String value) {
            addCriterion("invoke_target <>", value, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetGreaterThan(String value) {
            addCriterion("invoke_target >", value, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetGreaterThanOrEqualTo(String value) {
            addCriterion("invoke_target >=", value, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetLessThan(String value) {
            addCriterion("invoke_target <", value, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetLessThanOrEqualTo(String value) {
            addCriterion("invoke_target <=", value, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetLike(String value) {
            addCriterion("invoke_target like", value, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetNotLike(String value) {
            addCriterion("invoke_target not like", value, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetIn(List<String> values) {
            addCriterion("invoke_target in", values, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetNotIn(List<String> values) {
            addCriterion("invoke_target not in", values, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetBetween(String value1, String value2) {
            addCriterion("invoke_target between", value1, value2, "invokeTarget");
            return (Criteria) this;
        }

        public Criteria andInvokeTargetNotBetween(String value1, String value2) {
            addCriterion("invoke_target not between", value1, value2, "invokeTarget");
            return (Criteria) this;
        }
        
			
        public Criteria andCronExpressionIsNull() {
            addCriterion("cron_expression is null");
            return (Criteria) this;
        }

        public Criteria andCronExpressionIsNotNull() {
            addCriterion("cron_expression is not null");
            return (Criteria) this;
        }

        public Criteria andCronExpressionEqualTo(String value) {
            addCriterion("cron_expression =", value, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionNotEqualTo(String value) {
            addCriterion("cron_expression <>", value, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionGreaterThan(String value) {
            addCriterion("cron_expression >", value, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionGreaterThanOrEqualTo(String value) {
            addCriterion("cron_expression >=", value, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionLessThan(String value) {
            addCriterion("cron_expression <", value, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionLessThanOrEqualTo(String value) {
            addCriterion("cron_expression <=", value, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionLike(String value) {
            addCriterion("cron_expression like", value, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionNotLike(String value) {
            addCriterion("cron_expression not like", value, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionIn(List<String> values) {
            addCriterion("cron_expression in", values, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionNotIn(List<String> values) {
            addCriterion("cron_expression not in", values, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionBetween(String value1, String value2) {
            addCriterion("cron_expression between", value1, value2, "cronExpression");
            return (Criteria) this;
        }

        public Criteria andCronExpressionNotBetween(String value1, String value2) {
            addCriterion("cron_expression not between", value1, value2, "cronExpression");
            return (Criteria) this;
        }
        
			
        public Criteria andMisfirePolicyIsNull() {
            addCriterion("misfire_policy is null");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyIsNotNull() {
            addCriterion("misfire_policy is not null");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyEqualTo(String value) {
            addCriterion("misfire_policy =", value, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyNotEqualTo(String value) {
            addCriterion("misfire_policy <>", value, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyGreaterThan(String value) {
            addCriterion("misfire_policy >", value, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyGreaterThanOrEqualTo(String value) {
            addCriterion("misfire_policy >=", value, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyLessThan(String value) {
            addCriterion("misfire_policy <", value, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyLessThanOrEqualTo(String value) {
            addCriterion("misfire_policy <=", value, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyLike(String value) {
            addCriterion("misfire_policy like", value, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyNotLike(String value) {
            addCriterion("misfire_policy not like", value, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyIn(List<String> values) {
            addCriterion("misfire_policy in", values, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyNotIn(List<String> values) {
            addCriterion("misfire_policy not in", values, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyBetween(String value1, String value2) {
            addCriterion("misfire_policy between", value1, value2, "misfirePolicy");
            return (Criteria) this;
        }

        public Criteria andMisfirePolicyNotBetween(String value1, String value2) {
            addCriterion("misfire_policy not between", value1, value2, "misfirePolicy");
            return (Criteria) this;
        }
        
			
        public Criteria andConcurrentIsNull() {
            addCriterion("concurrent is null");
            return (Criteria) this;
        }

        public Criteria andConcurrentIsNotNull() {
            addCriterion("concurrent is not null");
            return (Criteria) this;
        }

        public Criteria andConcurrentEqualTo(String value) {
            addCriterion("concurrent =", value, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentNotEqualTo(String value) {
            addCriterion("concurrent <>", value, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentGreaterThan(String value) {
            addCriterion("concurrent >", value, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentGreaterThanOrEqualTo(String value) {
            addCriterion("concurrent >=", value, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentLessThan(String value) {
            addCriterion("concurrent <", value, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentLessThanOrEqualTo(String value) {
            addCriterion("concurrent <=", value, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentLike(String value) {
            addCriterion("concurrent like", value, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentNotLike(String value) {
            addCriterion("concurrent not like", value, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentIn(List<String> values) {
            addCriterion("concurrent in", values, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentNotIn(List<String> values) {
            addCriterion("concurrent not in", values, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentBetween(String value1, String value2) {
            addCriterion("concurrent between", value1, value2, "concurrent");
            return (Criteria) this;
        }

        public Criteria andConcurrentNotBetween(String value1, String value2) {
            addCriterion("concurrent not between", value1, value2, "concurrent");
            return (Criteria) this;
        }
        
			
        public Criteria andStatusIsNull() {
            addCriterion("status is null");
            return (Criteria) this;
        }

        public Criteria andStatusIsNotNull() {
            addCriterion("status is not null");
            return (Criteria) this;
        }

        public Criteria andStatusEqualTo(Integer value) {
            addCriterion("status =", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotEqualTo(Integer value) {
            addCriterion("status <>", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThan(Integer value) {
            addCriterion("status >", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("status >=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThan(Integer value) {
            addCriterion("status <", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLessThanOrEqualTo(Integer value) {
            addCriterion("status <=", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusLike(Integer value) {
            addCriterion("status like", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotLike(Integer value) {
            addCriterion("status not like", value, "status");
            return (Criteria) this;
        }

        public Criteria andStatusIn(List<Integer> values) {
            addCriterion("status in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotIn(List<Integer> values) {
            addCriterion("status not in", values, "status");
            return (Criteria) this;
        }

        public Criteria andStatusBetween(Integer value1, Integer value2) {
            addCriterion("status between", value1, value2, "status");
            return (Criteria) this;
        }

        public Criteria andStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("status not between", value1, value2, "status");
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