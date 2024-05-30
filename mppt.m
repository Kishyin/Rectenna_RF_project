close all
clear
clc

mppt20dbm = load('20dbm.txt');
mppt10dbm = load('10dbm.txt');
mppt0dbm = load('0dbm.txt');

load20dbm = mppt20dbm(:,1);
power20dbm = mppt20dbm(:,2);
voltage20dbm = mppt20dbm(:,3);
current20dbm = mppt20dbm(:,4);

load10dbm = mppt10dbm(:,1);
power10dbm = mppt10dbm(:,2);
voltage10dbm = mppt10dbm(:,3);
current10dbm = mppt10dbm(:,4);

load0dbm = mppt0dbm(:,1);
power0dbm = mppt0dbm(:,2);
voltage0dbm = mppt0dbm(:,3);
current0dbm = mppt0dbm(:,4);


grid on;
yyaxis left;
plot(current20dbm, voltage20dbm);
yyaxis right;
plot(current20dbm, power20dbm);
figure;
grid on;
yyaxis left;
plot(current10dbm, voltage10dbm);
yyaxis right;
plot(current10dbm, power10dbm);
figure;
grid on;
yyaxis left;
plot(current0dbm, voltage0dbm);
yyaxis right;
hold on;
plot(current0dbm, power0dbm);
[max_power0dbm, idx] = max(power0dbm);
plot(current0dbm(idx), max_power0dbm, 'ro');
