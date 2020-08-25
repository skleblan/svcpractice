#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
	//posix functions (big list)(generic os functs)
#include <signal.h>
#include <sys/types.h>
	//pid_t, uid_t, gid_t
#include <sys/stat.h>
#include <syslog.h>

static void skeleton_daemon()
{
	pid_t pid;
	pid = fork();
	if(pid < 0)
		exit(EXIT_FAILURE);
	if(pid > 0)
		exit(EXIT_SUCCESS);
	if(setsid() < 0)
		exit(EXIT_FAILURE);
	
	signal(SIGCHLD, SIG_IGN);
	signal(SIGHUP, SIG_IGN);
	
	pid = fork();
	if(pid < 0)
		exit(EXIT_FAILURE);
	if(pid > 0)
		exit(EXIT_SUCCESS);
	umask(0);
	chdir("/");
	int x;
	for(x = sysconf(_SC_OPEN_MAX); x>=0; x--)
	{
		close(x); //close all open fd
	}
	openlog("skeleton", LOG_PID, LOG_DAEMON);
}
