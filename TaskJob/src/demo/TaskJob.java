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
			log.info("��������ʼ>........");

			log.info("�����������!");

		} catch (Exception e) {
			log.error("������������쳣", e);
		}
	}

}
