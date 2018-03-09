rgb_24bit = imread('spectre.png');
check_area = rgb_24bit(224:1052,2857:3313,:);
check_sq_pix = 5.2791*10^(-5);
main_sq_pix = 3.7624*10^(-5);
%defining main colors
red = check_area(200,287,:);
yellow = check_area(409,286,:);
violet = check_area(579,285,:);
green = check_area(718,287,:);
blue = check_area(786,279,:);
wht = rgb_24bit(1431,414,:);
rp = 0;
gp = 0;
yp = 0;
vp = 0;
bp = 0;
lrp = 0;
lgp = 0;
lyp = 0;
lvp = 0;
lbp = 0;
f = 0;
fr = 0;
fy = 0;
fv = 0;
fg = 0;
fb = 0;
l_string = 1655;
for j = 1:3430
    for i = (l_string+3):-1:1
        if rgb_24bit(i,j,:) == red
           f = 1;
           fr = 1;
           lrp = l_string - i;
        elseif rgb_24bit(i,j,:) == yellow
           f = 1;
           fy = 1;
           lyp = l_string - i;
        elseif rgb_24bit(i,j,:) == violet
           f = 1;
           fv = 1;
           lvp = l_string - i;
        elseif rgb_24bit(i,j,:) == green
           f = 1;
           fg = 1;
           lgp = l_string - i;
        elseif rgb_24bit(i,j,:) == blue
           f = 1;
           fb = 1;
           lbp = l_string - i;
        elseif (f ~= 0) && (min(rgb_24bit(i,j,:) == wht))
            break
        end
    end
    if fr == 0
        lrp = max([lyp lvp lgp lbp]);
    elseif fg == 0
        lgp = max([lyp lvp lrp lbp]);
    elseif fb == 0
        lbp = max([lyp lvp lrp lgp]);
    elseif fv == 0
        lvp = max([lyp lgp lrp lbp]);
    elseif fy == 0
        lyp = max([lgp lvp lrp lbp]);
    end
    f = 0;
    fr = 0;
    fy = 0;
    fv = 0;
    fg = 0;
    fb = 0;
    rp = rp + lrp;
    gp = gp + lgp;
    yp = yp + lyp;
    vp = vp + lvp;
    bp = bp + lbp;
    lrp = 0;
    lgp = 0;
    lyp = 0;
    lvp = 0;
    lbp = 0;
    
end
crp = 0;
cgp = 0;
cyp = 0;
cvp = 0;
cbp = 0;
for j = 1:457
    for i = 829:-1:1
        if check_area(i,j,:) == red
           f = 1;
           fr = 1;
           lrp = l_string - i;
        elseif check_area(i,j,:) == yellow
           f = 1;
           fy = 1;
           lyp = l_string - i;
        elseif check_area(i,j,:) == violet
           f = 1;
           fv = 1;
           lvp = l_string - i;
        elseif check_area(i,j,:) == green
           f = 1;
           fg = 1;
           lgp = l_string - i;
        elseif check_area(i,j,:) == blue
           f = 1;
           fb = 1;
           lbp = l_string - i;
        elseif (f ~= 0) && (min(check_area(i,j,:) == wht))
            break
        end
    end
    if fr == 0
        lrp = max([lyp lvp lgp lbp]);
    elseif fg == 0
        lgp = max([lyp lvp lrp lbp]);
    elseif fb == 0
        lbp = max([lyp lvp lrp lgp]);
    elseif fv == 0
        lvp = max([lyp lgp lrp lbp]);
    elseif fy == 0
        lyp = max([lgp lvp lrp lbp]);
    end
    f = 0;
    fr = 0;
    fy = 0;
    fv = 0;
    fg = 0;
    fb = 0;
    crp = crp + lrp;
    cgp = cgp + lgp;
    cyp = cyp + lyp;
    cvp = cvp + lvp;
    cbp = cbp + lbp;
    lrp = 0;
    lgp = 0;
    lyp = 0;
    lvp = 0;
    lbp = 0;
end
ccrp = 0;
ccgp = 0;
ccyp = 0;
ccvp = 0;
ccbp = 0;
for j = 1612:1656
    for i = (l_string+3):-1:1
        if rgb_24bit(i,j,:) == red
           f = 1;
           fr = 1;
           lrp = l_string - i;
        elseif rgb_24bit(i,j,:) == yellow
           f = 1;
           fy = 1;
           lyp = l_string - i;
        elseif rgb_24bit(i,j,:) == violet
           f = 1;
           fv = 1;
           lvp = l_string - i;
        elseif rgb_24bit(i,j,:) == green
           f = 1;
           fg = 1;
           lgp = l_string - i;
        elseif rgb_24bit(i,j,:) == blue
           f = 1;
           fb = 1;
           lbp = l_string - i;
        elseif (f ~= 0) && (min(rgb_24bit(i,j,:) == wht))
            break
        end
    end
    if fr == 0
        lrp = max([lyp lvp lgp lbp]);
    elseif fg == 0
        lgp = max([lyp lvp lrp lbp]);
    elseif fb == 0
        lbp = max([lyp lvp lrp lgp]);
    elseif fv == 0
        lvp = max([lyp lgp lrp lbp]);
    elseif fy == 0
        lyp = max([lgp lvp lrp lbp]);
    end
    f = 0;
    fr = 0;
    fy = 0;
    fv = 0;
    fg = 0;
    fb = 0;
    ccrp = ccrp + lrp;
    ccgp = ccgp + lgp;
    ccyp = ccyp + lyp;
    ccvp = ccvp + lvp;
    ccbp = ccbp + lbp;
    lrp = 0;
    lgp = 0;
    lyp = 0;
    lvp = 0;
    lbp = 0;
    
end
dg = (ccgp * main_sq_pix) / (cgp * check_sq_pix) * 100;
dr = (ccrp * main_sq_pix) / (crp * check_sq_pix) * 100;
db = (ccbp * main_sq_pix) / (cbp * check_sq_pix) * 100;
dy = (ccyp * main_sq_pix) / (cyp * check_sq_pix) * 100;
dv = (ccvp * main_sq_pix) / (cvp * check_sq_pix) * 100;
gs = (ccgp * main_sq_pix);
rs = (ccrp * main_sq_pix);
bs = (ccbp * main_sq_pix);
ys = (ccyp * main_sq_pix);
vs = (ccvp * main_sq_pix);
fprintf('Difference for green color is %f percents \n',dg);
fprintf('Integral for green color is %f popugaev(mult. xlabel and ylabel of main area) \n',gs);
fprintf('Difference for red color is %f percents \n',dr);
fprintf('Integral for red color is %f popugaev(mult. xlabel and ylabel of main area) \n',rs);
fprintf('Difference for blue color is %f percents \n',db);
fprintf('Integral for blue color is %f popugaev(mult. xlabel and ylabel of main area) \n',bs);
fprintf('Difference for violet color is %f percents \n',dv);
fprintf('Integral for violet color is %f popugaev(mult. xlabel and ylabel of main area) \n',vs);
fprintf('Difference for yellow color is %f percents \n',dy);
fprintf('Integral for yellow color is %f popugaev(mult. xlabel and ylabel of main area) \n',ys);
    