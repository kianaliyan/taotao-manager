package com.kiki.utils;

public class ItemResult {
	//状态码
		private int status;
		//消息
		private String message;
		public int getStatus() {
			return status;
		}
		public void setStatus(int status) {
			this.status = status;
		}
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
		@Override
		public String toString() {
			return "BookResult [status=" + status + ", message=" + message + "]";
		}
		public static ItemResult ok(int status,String message){
			return new ItemResult(status,message);
		}
		public ItemResult(int status, String message) {
			this.status = status;
			this.message = message;
		}
		public ItemResult() {

		}
}
