package pl.coderslab.warstat3krajee04.model;

import java.time.LocalDateTime;

public class Solution {
    private int id;
    private LocalDateTime created;
    private LocalDateTime updated;
    private String description;
    private int point;
    private String commentar;
    private int exerciseId;
    private int userId;
    private String exercise;

    public Solution(int id, LocalDateTime created, LocalDateTime updated, String description, int point, String commentar, int exerciseId, int userId, String exercise, String user) {
        this.id = id;
        this.created = created;
        this.updated = updated;
        this.description = description;
        this.point = point;
        this.commentar = commentar;
        this.exerciseId = exerciseId;
        this.userId = userId;
        this.exercise = exercise;
        this.user = user;
    }

    public Solution(LocalDateTime created, int exerciseId, int userId) {
        this.created = created;
        this.exerciseId = exerciseId;
        this.userId = userId;
    }

    public String getExercise() {
        return exercise;
    }

    public void setExercise(String exercise) {
        this.exercise = exercise;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    private String user;

    public Solution() {
    }

    public Solution(int id, LocalDateTime created, LocalDateTime updated, String description, int exerciseId, int userId) {
        this.id = id;
        this.created = created;
        this.updated = updated;
        this.description = description;
        this.exerciseId = exerciseId;
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Solution{" +
                "id=" + id +
                ", created=" + created +
                ", updated=" + updated +
                ", description='" + description + '\'' +
                ", exerciseId=" + exerciseId +
                ", userId=" + userId +
                '}';
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public String getCommentar() {
        return commentar;
    }

    public void setCommentar(String commentar) {
        this.commentar = commentar;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    public LocalDateTime getUpdated() {
        return updated;
    }

    public void setUpdated(LocalDateTime updated) {
        this.updated = updated;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getExerciseId() {
        return exerciseId;
    }

    public void setExerciseId(int exerciseId) {
        this.exerciseId = exerciseId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
