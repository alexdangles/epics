#!/usr/bin/perl 
#
# start_alh.pl
# R.Keitel 990726
#
# script to start up alh (first instance)
#
# 990806 RK if alh is already running, kill and restart
# 040817 RK run with alh1.alhConfig in global mode to allow heartbeat
#           for smooth transition, this is identical to start_alh1.pl
# 2004/11/18 CP adapted to take a command line arguement of logfile directroy 
#			and config prefix to make this a single script
#	
#
if ($#ARGV < 1) {
	print "*** start_alh.pl <config prefix> <log directory>\n";
	exit;
}
my $config_prefix = $ARGV[0];
my $directory = $ARGV[1];

my $rawtime = time;
my $timestamp = scalar localtime($rawtime);
#my $host_id = $ENV{'HOST'};
my $host_id = $ENV{'HOSTNAME'};
print "\n****\n**** This machine is $host_id\n";
if ($host_id !~ /acsfile/)
#if ($host_id !~ /sunbeamusr/)
{
	print  "*** ALH runs only on ACSFILE\n*** No new copy started $timestamp\n";
	exit 0;
}

$alhline = 0;

check_alh();

if ($alhcount == 0)
{
	# no alarm handler - start one
	start_alh();
}
elsif ($alhcount == 1)
{
	# one alarm handler - kill it (assume same owner) and restart
	kill_alh();
	check_alh();
	if ($alhcount == 0) {
		start_alh();
	}
	else {
		print "*** Could not kill alarm handler with PID $tokens[2]\n*** No new copy started\n";
	}
}
else {
	$loop = $alhcount;
	$after = $loop;
	print "\n****\n****\n**** $loop copies of the alarm handler are running!!!\n";
	for ($i = 0; $i < $loop; $i++)
	{
		$before = $alhcount;
		kill_alh();
		check_alh();
		if ($alhcount == $before - 1)
		{
			print("--- Successful kill\n");
		}
		else {
			print("*** Unsuccessful kill\n");
		}
	}
	if ($alhcount == 0) {
		start_alh();
	}
	else {
		print "*** Could not kill all running alarm handlers \n*** No new copy started\n";
	}
}
exit 0;




sub check_alh()
{
	my @lines;
	my $line;
	@lines = `ps -Af | grep alh`;

	$alhcount = 0;
	foreach $line(@lines)
	{
		print $line;
#		if ($line =~ /$config_prefix.alhConfig/)
# command is too long, config file not listed is ps -Af (it must be last)
		if ($line =~ /$config_prefix.log/)
		{
			$alhcount++;
			$alhline = $line;
		}	
	}
	return;
}

sub start_alh()
{
	print "\nStarting alarm handler\n";
	chdir "./alh";
	print `pwd`;
	`alh -a $config_prefix.log -global -debug -T -m 100000 -l $directory -o $config_prefix.opmod $config_prefix.alhConfig &`;
	return;
}

sub kill_alh()
{
	my @tokens;
	
	@tokens = split / +/,$alhline;
	if ($#tokens >= 2) {
#		print "\nalarm handler already running for $tokens[1] pid $tokens[2]\n";
		print "\nalarm handler already running for $tokens[0] pid $tokens[1]\n";
#		print "Attempt to kill pid $tokens[2]\n";
		print "Attempt to kill pid $tokens[1]\n";
#		`kill $tokens[2]`;
		`kill $tokens[1]`;
	} else {
		print "\n*** no pid found to kill ***\n";
	}
}
