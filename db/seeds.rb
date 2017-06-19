[
[306756698,"David Mizrachi"],
[308557339,"Shmuel Mizrachi"],
[316758322,"Moshe Agever"],
[343582351,"Naomi Michael"],
[665873945,"Sara Malka"],
[687668673,"Dana Levi"],
[767676898,"Yoav Moshe"],
[854732562,"David Levi"]
].each do |idd, n|
  Soldier.create idd: idd, name:n
end






'"1;306756698;""Talents"";""C#"""
"2;306756698;""Talents"";"".Net"""
"3;306756698;""Unit"";""8200"""
"4;306756698;""University_Name_1"";""Tecnion"""
"5;306756698;""University_Grades_1"";""90+"""
"6;306756698;""University_Skope_1"";""BA-Computer-Science"""
"7;306756698;""University_Name_2"";""Ben-Gurion"""
"8;306756698;""University_Grades_2"";""80+"""
"9;306756698;""University_Skope_2"";""Mce-Computer-Science"""
"10;308557339;""Talents"";"".Net"""
"11;308557339;""Talents"";""C#"""
"12;308557339;""University_Name_1"";""Bar-Ilan"""
"13;308557339;""Unit"";""8200"""
"14;308557339;""Gender"";""Man"""
"15;306756698;""Gender"";""Man"""
"16;308557339;""University_Grades_1"";""80+"""
"17;308557339;""University_Skope_1"";""BA-Computer-Science"""
"18;316758322;""Talents"";""Java"""
"19;316758322;""Talents"";""Pyton"""
"20;316758322;""Unit"";""8153"""
"21;316758322;""University_Name_1"";""Bar-Ilan"""
"22;316758322;""University_Grades_1"";""90+"""
"23;316758322;""University_Skope_1"";""BSC-Information-Systems"""
"24;316758322;""Gender"";""Man"""
"25;343582351;""Talents"";""C++"""
"26;343582351;""Unit"";""8200"""
"27;343582351;""School_Name"";""Bar-Ilan"""
"28;343582351;""School_Grades"";""80+"""
"29;343582351;""Gender"";""Woman"""
"30;343582351;""University_Name_1"";""Bar-Ilan"""
"31;343582351;""University_Grades_1"";""BA-Computer-Science"""
"32;343582351;""University_Skope_1"";""90+"""
"33;665873945;""Talents"";""Java"""
"34;665873945;""Talents"";""Pyton"""
"35;665873945;""Unit"";""9900"""
"36;665873945;""Gender"";""Woman"""
"37;665873945;""University_Name_1"";""Tecnion"""
"38;665873945;""University_Grades_1"";""90+"""
"39;665873945;""University_Skope_1"";""BA-Computer-Science"""
"40;687668673;""Talents"";""DBA Oracle"""
"41;687668673;""Unit"";""8200"""
"42;687668673;""School_Name"";""Mekif"""
"43;687668673;""School_Grades"";""90+"""
"44;687668673;""Gender"";""Woman"""
"45;687668673;""University_Name_1"";""Tecnion"""
"46;687668673;""University_Grades_1"";""80+"""
"47;687668673;""University_Skope_1"";""BSC-Information-Systems"""
"48;767676898;""Talents"";""Baker"""
"49;767676898;""Talents"";""Rasar Worker"""
"50;767676898;""School_Name"";""Mekif"""
"51;767676898;""School_Grades"";""80+"""
"52;767676898;""Gender"";""Man"""
"53;854732562;""Talents"";""HTML"""
"54;854732562;""Talents"";""Web"""
"55;854732562;""School_Name"";""Mekif"""
"56;854732562;""School_Grades"";""90+"""
"57;854732562;""Gender"";""Man"""
"58;854732562;""University_Name_1"";""Tecnion"""
"59;854732562;""University_Grades_1"";""80+"""
"60;854732562;""University_Skope_1"";""BSC-Information-Systems"""
"61;854732562;""University_Name_2"";""Ben-Gurion"""
"62;854732562;""University_Grades_2"";""80+"""
"63;854732562;""University_Grades_2"";""Mce-Computer-Science"""'.gsub('"','').split("\n").each do |line|
  parms = line.split(';')
Stag.create soldier_id: Soldier.where(idd: parms[1]).first.id, key: parms[2], value: parms[3]
end




[
'C# Developer',
'C++ Developer',
'Java Developer',
'Pyton Developer',
'DBA Oracle',
'Baker',
'Rasar Worker',
'HTML Developer',
'Web Developer',
'8HACK'
].each do |j|
  Job.create name: j
end

'"1;1;""Talents"";""C#"""
"2;1;""Talents"";"".Net"""
"3;1;""Unit"";""8200"""
"4;1;""University_Name"";""Tecnion"""
"5;1;""University_Name"";""Bar-Ilan"""
"6;1;""University_Name"";""Ben-Gurion"""
"7;1;""University_Grades"";""90+"""
"8;1;""Gender"";""Man"""
"9;1;""Gender"";""Woman"""
"10;2;""Talents"";""C++"""
"11;2;""University"";""Tecnion"""
"12;2;""School_Name"";""Bar-Ilan"""
"13;3;""Talents"";""Java"""
"14;3;""University_Name"";""Tecnion"""
"15;3;""Unit"";""8153"""
"16;4;""Talents"";""Pyton"""
"17;4;""Unit"";""8200"""
"18;4;""Unit"";""8153"""
"19;4;""Unit"";""9900"""
"20;4;""University_Name"";""Tecnion"""
"21;5;""Talents"";""DBA Oracle"""
"22;5;""University_Name"";""Tecnion"""
"23;5;""University_Grade"";""90+"""
"24;6;""Talents"";""Baker"""
"25;6;""Gender"";""Man"""
"26;6;""Gender"";""Woman"""
"27;7;""Talents"";""Rasar Worker"""
"28;8;""Talents"";""HTML"""
"29;8;""School_Grade"";""90+"""
"30;8;""Talents"";""Web"""
"31;9;""Talents"";""Web"""
"32;9;""University_Name"";""Tecnion"""
"33;9;""University_Name"";""Bar-Ilan"""
"34;9;""University_Name"";""Ben-Gurion"""
"35;9;""University_Name"";""Tel-Aviv"""
"36;9;""University_Grade"";""80+"""
"37;10;""Talents"";""8HACK"""'.gsub('"','').split("\n").each do |line|
  params = line.split(';')
  Jtag.create job_id: params[1], key: params[2], value: params[3]
end
