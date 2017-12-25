run=1
while [ run -gt 0 ]
do
    curl -k "https://twitter.com/officialmcafee" > content.html
    cat content.html | grep -A 5 "class=\"time\"" | grep "[0-9]m</span"
    if [ $? -eq 0]; then
        curl "http://rest.esms.vn/MainService.svc/json/SendMultipleMessage_V4_get?Phone=0983040320&Content=mcafee&ApiKey=8643E77ECB1AD9C88CA3BAA40B18DB&SecretKey=493833B34903D23D889FA8A949FB6D&SmsType=4"
    fi
    sleep 60
done
