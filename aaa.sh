#!/bin/bash

echo "use chat" | cat > find.mongo
echo "var cursor = db.chat.find(); null;" | cat >> find.mongo
echo "while (cursor.hasNext()){" | cat >> find.mongo
echo "obj = cursor.next();" | cat >> find.mongo
echo "print(\"<p><b>\" + obj[\"NAME\"] + \"</b>: \" + obj[\"MSG\"] + \"</p>\");" | cat >> find.mongo
echo "}" | cat >> find.mongo

echo "Content-type: text/html"
echo ""
echo "<html><head><title>simple chat</title></head><body>"

IFS="&"
read -ra ARR <<< "$QUERY_STRING"
IFS=""

NAME="${ARR[0]}"
NAME=${NAME:5}

MSG="${ARR[1]}"
MSG=${MSG:4}

echo "$(mongo < find.mongo | grep "^<p>")"

if (( ${#NAME}!=0 && ${#MSG}!=0 )); then
	echo "use chat" | cat > insert.mongo
	echo "db.chat.insertOne({\"NAME\":\"$NAME\", \"MSG\": \"$MSG\"})" | cat >> insert.mongo
	mongo < insert.mongo > /dev/null
fi;

echo "<form action=\"/cgi-bin/aaa.sh\" method=\"GET\"><p>nme: <input name=\"name\"type=\"text\" size=20></p>"
echo "<p>msg: <input name=\"msg\" type=\"text\" size=20></p>"
echo "<p><input type=\"submit\" value=\"send\"></p></form></body></html>"

rm insert.mongo
rm find.mongo
