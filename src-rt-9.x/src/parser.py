target = open("target.mak", "r")
dist = open("mango.mak", "w+")
lines = target.readlines()
for line in lines:
    s = line.split(' ')
    option = s[3:]
    option.sort()
    dist.write("%s %s %s\\\n" % (s[0],s[1],s[2]))
    dist.write(' '.join(option))
dist.close()
target.close()
