package web.sontan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import web.sontan.dao.TaskDao;
import web.sontan.model.Task;

import java.util.List;

/**
 * Created by 残 on 2019/5/15.
 */
@Repository
@Transactional(rollbackFor = {Exception.class, RuntimeException.class})
public class TaskService {
    private final TaskDao taskDao;

    @Autowired
    public TaskService(TaskDao taskDao) {
        this.taskDao = taskDao;
    }

    public Task findById(String taskId) {
        return taskDao.findById(taskId);
    }

    public List<Task> findAll() {
        return taskDao.findAll();
    }

    public List<Task> findByUserId(String userId) {
        return taskDao.findByUserId(userId);
    }

    public List<Task> findByRecipient(String taskRecipient) {
        return taskDao.findByRecipient(taskRecipient);
    }

    public boolean addTask(Task task) {
        return taskDao.addTask(task);
    }

    public boolean modifyTask(Task task) {
        return taskDao.updateTask(task);
    }
    public boolean acceptTask(Task task){
        task.setTaskStatus(-1);
        return taskDao.acceptTask(task);
    }
    public boolean deleteTask(Task task) {
        task.setTaskStatus(2);
        return taskDao.updateTask(task);
    }
    public boolean completeTask(Task task){
        task.setTaskStatus(3);
        return taskDao.updateTask(task);
    }
}
