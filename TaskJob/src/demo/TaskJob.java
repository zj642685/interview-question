package demo;

import org.apache.log4j.Logger;




public class TaskJob {

	   public static Logger log = Logger
               .getLogger(TaskJob.class);
	
	
	
	public static void main(String[] args) {
		TaskJob job = new TaskJob();
		job.SayHello();

	}

	public void SayHello() {
		// TODO Auto-generated method stub
		try {
			log.info("处理任务开始>........");

			log.info("处理任务结束!");

		} catch (Exception e) {
			log.error("处理任务出现异常", e);
		}
	}

}
