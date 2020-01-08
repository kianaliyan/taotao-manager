package com.kiki.domain;

import java.util.List;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ItemResult {
		 // 定义jackson对象
	    private static final ObjectMapper MAPPER = new ObjectMapper();

		//状态码,响应业务状态
		private Integer status;
		//响应消息
		private String message;
		//响应中的数据 data表示向页面传的json格式的数据
		private Object data;
		public Integer getStatus() {
			return status;
		}
		public void setStatus(Integer status) {
			this.status = status;
		}
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
		public Object getData() {
			return data;
		}
		public void setData(Object data) {
			this.data = data;
		}
		@Override
		public String toString() {
			return "ItemResult [status=" + status + ", message=" + message + ", data=" + data + "]";
		}
		public ItemResult(Integer status, String message, Object data) {
			super();
			this.status = status;
			this.message = message;
			this.data = data;
		}
		public ItemResult() {

		}
		public ItemResult(Object data) {
			this.status = 200;
			this.message = "OK";
			this.data = data;
		}
		public static ItemResult ok(){
			return new ItemResult(null);
			
		}
		public static ItemResult ok(Object data){
			return new ItemResult(data);
		}
		public static ItemResult build(Integer status,String message, Object data){
			return new ItemResult(status,message,null);
		}
		public static ItemResult build(Integer status, String msg) {
		        return new ItemResult(status, msg, null);
		    }
		 /**
	     * 将json结果集转化为TaotaoResult对象
	     * 
	     * @param jsonData json数据
	     * @param clazz TaotaoResult中的object类型
	     * @return
	     */
	    public static ItemResult formatToPojo(String jsonData, Class<?> clazz) {
	        try {
	            if (clazz == null) {
	                return MAPPER.readValue(jsonData, ItemResult.class);
	            }
	            JsonNode jsonNode = MAPPER.readTree(jsonData);
	            JsonNode data = jsonNode.get("data");
	            Object obj = null;
	            if (clazz != null) {
	                if (data.isObject()) {
	                    obj = MAPPER.readValue(data.traverse(), clazz);
	                } else if (data.isTextual()) {
	                    obj = MAPPER.readValue(data.asText(), clazz);
	                }
	            }
	            return build(jsonNode.get("status").intValue(), jsonNode.get("msg").asText(), obj);
	        } catch (Exception e) {
	            return null;
	        }
	    }

	    /**
	     * 没有object对象的转化
	     * 
	     * @param json
	     * @return
	     */
	    public static ItemResult format(String json) {
	        try {
	            return MAPPER.readValue(json, ItemResult.class);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return null;
	    }

	    /**
	     * Object是集合转化
	     * 
	     * @param jsonData json数据
	     * @param clazz 集合中的类型
	     * @return
	     */
	    public static ItemResult formatToList(String jsonData, Class<?> clazz) {
	        try {
	            JsonNode jsonNode = MAPPER.readTree(jsonData);
	            JsonNode data = jsonNode.get("data");
	            Object obj = null;
	            if (data.isArray() && data.size() > 0) {
	                obj = MAPPER.readValue(data.traverse(),
	                        MAPPER.getTypeFactory().constructCollectionType(List.class, clazz));
	            }
	            return build(jsonNode.get("status").intValue(), jsonNode.get("msg").asText(), obj);
	        } catch (Exception e) {
	            return null;
	        }
	    }
}
