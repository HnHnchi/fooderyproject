document.getElementById('showNotificationBtn').addEventListener('click', function () {
    showNotification();
});

function showNotification() {
    var notification = document.getElementById('notificationPopup');
    notification.style.display = 'block';

    setTimeout(function () {
        notification.style.display = 'none';
    }, 7000); // Close the notification after 3 seconds
}

function closeNotification() {
    var notification = document.getElementById('notificationPopup');
    notification.style.display = 'none';
}
