import network
import sys

def heard(phrase):
    print('them:' + phrase)

if (len(sys.argv) >= 2):
    network.call(sys.argv[1], whenHearCall=heard)
else:
    network.wait(whenHearCall=heard)

while network.isConnected():
    phrase = input()
    print('me:' + phrase)
    network.say(phrase)
