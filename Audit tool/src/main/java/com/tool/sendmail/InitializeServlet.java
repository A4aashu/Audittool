package com.tool.sendmail;
import org.quartz.CronExpression;
import org.quartz.CronScheduleBuilder;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import com.tool.sendmail.*;
public class InitializeServlet extends HttpServlet {

 public void init() throws ServletException {

    try {
    	System.out.println("myappstarted");
		JobDetail job1 = JobBuilder.newJob(Job1.class)
				.withIdentity("Job1", "group1").build();

		Trigger trigger1 = TriggerBuilder.newTrigger()
				.withIdentity("cronTrigger1", "group1")
				.withSchedule(CronScheduleBuilder.cronSchedule("0 33 10 1/1 * ? *"))
				.build();
		
		Scheduler scheduler1 = new StdSchedulerFactory().getScheduler();
		scheduler1.start();
		scheduler1.scheduleJob(job1, trigger1);

    }
    catch (Exception ex) {
      ex.printStackTrace();
    }

  }

}