import  yagmail

args = {
    "user":"3453667697@qq.com",
    "password":"euymebcvccqcdaei",
    "host":"smtp.qq.com",
    "port":"465"
}

reciver = ["wang115byby@163.com","3453667697@qq.com"]
email = yagmail.SMTP(**args)

email.send(to=reciver, subject="hello",contents="i am van")