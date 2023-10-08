main('192.168.0.43', 20121, 0)
pause(0.5)
main('192.168.0.43', 20121, 1,10000001) %first defined program = ramp and hold
pause(0.5)
main('192.168.0.43', 20121, 2) %start - pretest
pause(1)
main('192.168.0.43', 20121, 2,00000010) %start

count=1;
while count<1000
main('192.168.0.43', 20121, 0)
pause(0.05)
count=count+1;
end


main('192.168.0.43', 20121, 3) %pause
main('192.168.0.43', 20121, 5) %stop

main('192.168.0.43', 20121, 1,01000000) %another defined program = Search

main('192.168.0.43', 20121, 2) %start - pretest
main('192.168.0.43', 20121, 2) %start

main('192.168.0.43', 20121, 7) %Yes

main('192.168.0.43', 20121, 8) %No

main('192.168.0.43', 20121, 7) %Yes


main('192.168.0.43', 20121, 1, 10000000) %another defined program = VAS Search

main('192.168.0.43', 20121, 4)%Trigger

main('192.168.0.43', 20121, 12,500) %Increase temp

main('192.168.0.43', 20121, 14) %Keyup

main('192.168.0.43', 20121, 13,1000) %Decrease temp
main('192.168.0.43', 20121, 5) %stop


% command_to_id = {
%     'GET_STATUS':   0,
%     'SELECT_TP':    1,
%     'START':        2,
%     'PAUSE':        3,
%     'TRIGGER':      4,
%     'STOP':         5,
%     'ABORT':        6,
%     'YES':          7,  # used to start increasing the temperature
%     'NO':           8,  # used to start decreasing the temperature
%     'COVAS':        9,
%     'VAS':         10,
%     'SPECIFY_NEXT':11,
%     'T_UP':        12,
%     'T_DOWN':      13,
%     'KEYUP':       14,  # used to stop the temperature gradient,
%     'UNNAMED':     15
% }