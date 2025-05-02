# 🖥️ Linux System Monitor (Shell Script)

A simple Bash script to monitor your system’s CPU, RAM, and Disk usage with real-time alerts and log tracking. Ideal for system admins or developers who want to keep an eye on server health.

---

## 📌 Features

- ✅ CPU, RAM, and Disk usage monitoring
- 🔔 Live alerting using `wall` when thresholds are crossed
- 📝 Logs all usage data to `/var/log/system_monitor.log`
- ⏰ Can be automated using `cron` for regular monitoring

---

## 📋 Usage

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/linux-system-monitor.git
cd linux-system-monitor
