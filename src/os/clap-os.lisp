(cl:defpackage :clap-os
  (:documentation "os module implementation")
  (:import-from :osicat-posix
                . #0=(:chdir
                      :getegid
                      :geteuid
                      :getgid
                      :getpgid
                      :getpgrp
                      :getpid
                      :getppid
                      :getuid
                      :getenv
                      :setegid
                      :seteuid
                      :setgid
                      :setpgrp
                      :setpgid
                      :setregid
                      :setreuid
                      :setsid
                      :setuid
                      :strerror
                      :umask
                      :uname
                      :unsetenv
                      :close
                      :dup
                      :dup2
                      :fchmod
                      :fchown
                      #+linux :fdatasync
                      :fstat
                      :fstatvfs
                      :fsync
                      :ftruncate
                      :isatty
                      :lseek
                      :open
                      :pipe
                      :read
                      :write
                      :access
                      :chdir
                      :fchdir
                      :getcwd
                      :chmod
                      :chown
                      :lchown
                      :link
                      :lstat
                      :mkfifo
                      :mknod
                      :mkdir
                      :readlink
                      :remove
                      :rename
                      :rmdir
                      :stat
                      :statvfs
                      :symlink
                      :unlink
                      :utime
                      :abort
                      :fork
                      :kill
                      :nice
                      :wait
                      :waitpid
                      :sysconf))
  #+sbcl (:import-from :sb-posix
                       . #1=(:getresuid
                             :getresgid
                             :putenv
                             :setresgid
                             :setresuid
                             :getsid
                             :chroot
                             :killpg
                             :wifstopped
                             :wifsignaled
                             :wifexited
                             :wexitstatus
                             :wstopsig
                             :wtermsig))
  (:export . #0#)
  #+sbcl (:export . #1#)
  (:export :*environ*))

#|||
not yet implemented

:CTERMID
:GETGROUPS
:INITGROUPS
:GETLOGIN
:GETRESUID
:GETRESGID
:PUTENV
:SETGROUPS
:SETRESGID
:SETRESUID
:GETSID
:STRERROR
:UNAME
:FDOPEN
:POPEN
:TMPFILE
:POPEN2
:POPEN3
:POPEN4
:CLOSERANGE
:FPATHCONF
:FSTATVFS
:ISATTY
:OPENPTY
:TCGETPGRP
:TCSETPGRP
:TTYNAME
:GETCWDU
:CHFLAGS
:CHROOT
:LCHFLAGS
:LCHMOD
:LISTDIR
:MKNOD
:MAJOR
:MINOR
:MAKEDEV
:MAKEDIRS
:PATHCONF
:REMOVEDIRS
:RENAMES
:STAT_FLOAT_TIMES
:STATVFS
:TEMPNAM
:TMPNAM
:WALK
:EXECL
:_EXIT
:FORKPTY
:KILLPG
:NICE
:PLOCK
:POPEN
:SPAWNL
:STARTFILE
:SYSTEM
:TIMES
:WAIT3
:WAIT4
:WCOREDUMP
:WIFCONTINUED
:WIFSTOPPED
:WIFSIGNALED
:WIFEXITED
:WEXITSTATUS
:WSTOPSIG
:WTERMSIG
:CONFSTR
:GETLOADAVG
:SYSCONF
:URANDOM
|||#
