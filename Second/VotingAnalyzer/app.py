import json
import os

import ibm_db
from flask import Flask, render_template, request, Response

app = Flask(__name__)


def createDBConnection():
    dsn_driver = "IBM DB2 ODBC DRIVER"
    dsn_database = "BLUDB"
    dsn_hostname = "dashdb-txn-sbox-yp-dal09-14.services.dal.bluemix.net"
    dsn_port = "50000"
    dsn_protocol = "TCPIP"
    dsn_uid = "tjc56306"
    dsn_pwd = "g^5xc405vf1cj7qc"
    # conn = ibm_db.connect("dashdb-txn-sbox-yp-dal09-11.services.dal.bluemix.net", "mdx41676", "5nx1zx61^9jf8p24")

    dsn = (
        "DRIVER={{IBM DB2 ODBC DRIVER}};"
        "DATABASE={0};"
        "HOSTNAME={1};"
        "PORT={2};"
        "PROTOCOL=TCPIP;"
        "UID={3};"
        "PWD={4};").format(dsn_database, dsn_hostname, dsn_port, dsn_uid, dsn_pwd)

    try:
        conn = ibm_db.connect(dsn, "", "")
        return conn
    except Exception as ex:
        print("Could'nt establish a connection to the database! Cause is :" + str(ex))


@app.route('/')
def lander():
    return render_template('index.html')


@app.route('/home')
def goHome():
    return render_template('index.html')


@app.route('/saveVoter', methods=['POST'])
def saveVoter():
    dataFromUI = request.form.to_dict()
    # dataFromUI = dataFromUI.strip()
    # dataFromUI = dataFromUI.split("~")
    print(f"dataFromUI >> {dataFromUI}")
    conn = createDBConnection()

    sql = "INSERT INTO voter(firstName,lastName,age,sex,ethnicity,state,profession,selection) VALUES(?,?,?,?,?,?,?,?);"
    stmt = ibm_db.prepare(conn, sql)

    ibm_db.bind_param(stmt, 1, dataFromUI['firstName'])
    ibm_db.bind_param(stmt, 2, dataFromUI['lastName'])
    ibm_db.bind_param(stmt, 3, int(dataFromUI['age']))
    ibm_db.bind_param(stmt, 4, dataFromUI['sex'])
    ibm_db.bind_param(stmt, 5, dataFromUI['ethnicity'])
    ibm_db.bind_param(stmt, 6, dataFromUI['state'])
    ibm_db.bind_param(stmt, 7, dataFromUI['profession'])
    ibm_db.bind_param(stmt, 8, dataFromUI['selection'])

    # params = ('firstName', 'lastName', 20, 'MALE', 'Texas', 'Government Employee', 'White', 'Trump')
    ibm_db.execute(stmt)
    result_rows = []
    # --------------------
    maleForTrump = getAnalysisForSex("Male", "Trump")
    femaleForTrump = getAnalysisForSex("Female", "Trump")
    neutralForTrump = getAnalysisForSex("Neutral", "Trump")
    otherForTrump = getAnalysisForSex("Other", "Trump")
    maleForBiden = getAnalysisForSex("Male", "Biden")
    femaleForBiden = getAnalysisForSex("Female", "Biden")
    neutralForBiden = getAnalysisForSex("Neutral", "Biden")
    otherForBiden = getAnalysisForSex("Other", "Biden")

    sexTotal = maleForTrump + femaleForTrump + neutralForTrump + otherForTrump + maleForBiden + femaleForBiden + neutralForBiden + otherForBiden

    if sexTotal == 0:
        sexTotal = sexTotal + 1

    percent = 100 / sexTotal

    sexAnalysisTrump = {}
    sexAnalysisBiden = {}
    sexAnalysisTrump.update({"maleForTrump": round((maleForTrump * percent), 2)})
    sexAnalysisTrump.update({"femaleForTrump": round((femaleForTrump * percent), 2)})
    sexAnalysisTrump.update({"neutralForTrump": round((neutralForTrump * percent), 2)})
    sexAnalysisTrump.update({"otherForTrump": round((otherForTrump * percent), 2)})
    sexAnalysisBiden.update({"maleForBiden": round((maleForBiden * percent), 2)})
    sexAnalysisBiden.update({"femaleForBiden": round((femaleForBiden * percent), 2)})
    sexAnalysisBiden.update({"neutralForBiden": round((neutralForBiden * percent), 2)})
    sexAnalysisBiden.update({"otherForBiden": round((otherForBiden * percent), 2)})

    # ------- AGE --------
    ageAnalysisForTrump = {}
    ageAnalysisForBiden = {}
    age20To30ForTrump = getAnalysisForAge(18, 30, "Trump");
    age30To40ForTrump = getAnalysisForAge(30, 40, "Trump");
    age40To50ForTrump = getAnalysisForAge(40, 50, "Trump");
    age50To60ForTrump = getAnalysisForAge(50, 60, "Trump");
    age60To70ForTrump = getAnalysisForAge(60, 70, "Trump");
    age70To80ForTrump = getAnalysisForAge(70, 80, "Trump");
    age80To90ForTrump = getAnalysisForAge(80, 90, "Trump");
    age90To100ForTrump = getAnalysisForAge(90, 100, "Trump");
    age100To110ForTrump = getAnalysisForAge(100, 110, "Trump");
    age20To30ForBiden = getAnalysisForAge(18, 30, "Biden");
    age30To40ForBiden = getAnalysisForAge(30, 40, "Biden");
    age40To50ForBiden = getAnalysisForAge(40, 50, "Biden");
    age50To60ForBiden = getAnalysisForAge(50, 60, "Biden");
    age60To70ForBiden = getAnalysisForAge(60, 70, "Biden");
    age70To80ForBiden = getAnalysisForAge(70, 80, "Biden");
    age80To90ForBiden = getAnalysisForAge(80, 90, "Biden");
    age90To100ForBiden = getAnalysisForAge(90, 100, "Biden");
    age100To110ForBiden = getAnalysisForAge(100, 110, "Biden");
    ageTotal = age20To30ForTrump + age30To40ForTrump + age40To50ForTrump + age50To60ForTrump + age60To70ForTrump + age70To80ForTrump
    + age80To90ForTrump + age90To100ForTrump + age100To110ForTrump + age20To30ForBiden + age30To40ForBiden + age40To50ForBiden + age50To60ForBiden + age60To70ForBiden + age70To80ForBiden
    + age80To90ForBiden + age90To100ForBiden + age100To110ForBiden;

    if ageTotal == 0:
        ageTotal = ageTotal + 1
    agePercent = 100 / ageTotal;

    ageAnalysisForTrump.update({"age20To30ForTrump": round((age20To30ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age30To40ForTrump": round((age30To40ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age40To50ForTrump": round((age40To50ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age50To60ForTrump": round((age50To60ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age60To70ForTrump": round((age60To70ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age70To80ForTrump": round((age70To80ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age80To90ForTrump": round((age80To90ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age90To100ForTrump": round((age90To100ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age100To110ForTrump": round((age100To110ForTrump * agePercent), 2)})
    ageAnalysisForBiden.update({"age20To30ForBiden": round((age20To30ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age30To40ForBiden": round((age30To40ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age40To50ForBiden": round((age40To50ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age50To60ForBiden": round((age50To60ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age60To70ForBiden": round((age60To70ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age70To80ForBiden": round((age70To80ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age80To90ForBiden": round((age80To90ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age90To100ForBiden": round((age90To100ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age100To110ForBiden": round((age100To110ForBiden * agePercent), 2)})

    # ------- AGE END --------

    # ------- Ethnicity --------

    ethnicityAnalysisForTrump = {}
    ethnicityAnalysisForBiden = {}

    americanIndianForTrump = getAnalysisForEthnicity("American Indian or Alaska Native", "Trump");
    asianForTrump = getAnalysisForEthnicity("Asian", "Trump");
    blackForTrump = getAnalysisForEthnicity("Black or African American", "Trump");
    hispanicForTrump = getAnalysisForEthnicity("Hispanic or Latino", "Trump");
    nativeForTrump = getAnalysisForEthnicity("Native Hawaiian or Other Pacific Islander", "Trump");
    whiteForTrump = getAnalysisForEthnicity("White", "Trump");
    americanIndianForBiden = getAnalysisForEthnicity("American Indian or Alaska Native", "Biden");
    asianForBiden = getAnalysisForEthnicity("Asian", "Biden");
    blackForBiden = getAnalysisForEthnicity("Black or African American", "Biden");
    hispanicForBiden = getAnalysisForEthnicity("Hispanic or Latino", "Biden");
    nativeForBiden = getAnalysisForEthnicity("Native Hawaiian or Other Pacific Islander", "Biden");
    whiteForBiden = getAnalysisForEthnicity("White", "Biden");
    ethnicityTotal = americanIndianForTrump + asianForTrump + blackForTrump + hispanicForTrump + nativeForTrump + whiteForTrump + americanIndianForBiden + asianForBiden + blackForBiden + hispanicForBiden + nativeForBiden + whiteForBiden;

    if ethnicityTotal == 0:
        ethnicityTotal = ethnicityTotal + 1
    ethnicityPercent = 100 / ethnicityTotal;

    ethnicityAnalysisForTrump.update({"americanIndianForTrump": round((americanIndianForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForTrump.update({"asianForTrump": round((asianForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForTrump.update({"blackForTrump": round((blackForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForTrump.update({"hispanicForTrump": round((hispanicForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForTrump.update({"nativeForTrump": round((nativeForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForTrump.update({"whiteForTrump": round((whiteForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"americanIndianForBiden": round((americanIndianForBiden * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"asianForBiden": round((asianForBiden * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"blackForBiden": round((blackForBiden * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"hispanicForBiden": round((hispanicForBiden * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"nativeForBiden": round((nativeForBiden * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"whiteForBiden": round((whiteForBiden * ethnicityPercent), 2)})

    # ------ End of Ethnicity ------

    resAsJson = json.dumps(result_rows)
    str1 = str(resAsJson)
    print(f"str1 >>>>> {str1}")
    return render_template("lander.html", sexAnalysisTrump=sexAnalysisTrump,
                           sexAnalysisBiden=sexAnalysisBiden,
                           ageAnalysisForTrump=ageAnalysisForTrump,
                           ageAnalysisForBiden=ageAnalysisForBiden,
                           ethnicityAnalysisForTrump=ethnicityAnalysisForTrump,
                           ethnicityAnalysisForBiden=ethnicityAnalysisForBiden)


@app.route('/demoAnalysis')
def demoAnalysis():

    # --------------------
    maleForTrump = getAnalysisForSex("Male", "Trump")
    femaleForTrump = getAnalysisForSex("Female", "Trump")
    neutralForTrump = getAnalysisForSex("Neutral", "Trump")
    otherForTrump = getAnalysisForSex("Other", "Trump")
    maleForBiden = getAnalysisForSex("Male", "Biden")
    femaleForBiden = getAnalysisForSex("Female", "Biden")
    neutralForBiden = getAnalysisForSex("Neutral", "Biden")
    otherForBiden = getAnalysisForSex("Other", "Biden")

    sexTotal = maleForTrump + femaleForTrump + neutralForTrump + otherForTrump + maleForBiden + femaleForBiden + neutralForBiden + otherForBiden

    if sexTotal == 0:
        sexTotal = sexTotal + 1

    percent = 100 / sexTotal

    sexAnalysisTrump = {}
    sexAnalysisBiden = {}
    sexAnalysisTrump.update({"maleForTrump": round((maleForTrump * percent), 2)})
    sexAnalysisTrump.update({"femaleForTrump": round((femaleForTrump * percent), 2)})
    sexAnalysisTrump.update({"neutralForTrump": round((neutralForTrump * percent), 2)})
    sexAnalysisTrump.update({"otherForTrump": round((otherForTrump * percent), 2)})
    sexAnalysisBiden.update({"maleForBiden": round((maleForBiden * percent), 2)})
    sexAnalysisBiden.update({"femaleForBiden": round((femaleForBiden * percent), 2)})
    sexAnalysisBiden.update({"neutralForBiden": round((neutralForBiden * percent), 2)})
    sexAnalysisBiden.update({"otherForBiden": round((otherForBiden * percent), 2)})

    # ------- AGE --------
    ageAnalysisForTrump = {}
    ageAnalysisForBiden = {}
    age20To30ForTrump = getAnalysisForAge(18, 30, "Trump");
    age30To40ForTrump = getAnalysisForAge(30, 40, "Trump");
    age40To50ForTrump = getAnalysisForAge(40, 50, "Trump");
    age50To60ForTrump = getAnalysisForAge(50, 60, "Trump");
    age60To70ForTrump = getAnalysisForAge(60, 70, "Trump");
    age70To80ForTrump = getAnalysisForAge(70, 80, "Trump");
    age80To90ForTrump = getAnalysisForAge(80, 90, "Trump");
    age90To100ForTrump = getAnalysisForAge(90, 100, "Trump");
    age100To110ForTrump = getAnalysisForAge(100, 110, "Trump");
    age20To30ForBiden = getAnalysisForAge(18, 30, "Biden");
    age30To40ForBiden = getAnalysisForAge(30, 40, "Biden");
    age40To50ForBiden = getAnalysisForAge(40, 50, "Biden");
    age50To60ForBiden = getAnalysisForAge(50, 60, "Biden");
    age60To70ForBiden = getAnalysisForAge(60, 70, "Biden");
    age70To80ForBiden = getAnalysisForAge(70, 80, "Biden");
    age80To90ForBiden = getAnalysisForAge(80, 90, "Biden");
    age90To100ForBiden = getAnalysisForAge(90, 100, "Biden");
    age100To110ForBiden = getAnalysisForAge(100, 110, "Biden");
    ageTotal = age20To30ForTrump + age30To40ForTrump + age40To50ForTrump + age50To60ForTrump + age60To70ForTrump + age70To80ForTrump
    + age80To90ForTrump + age90To100ForTrump + age100To110ForTrump + age20To30ForBiden + age30To40ForBiden + age40To50ForBiden + age50To60ForBiden + age60To70ForBiden + age70To80ForBiden
    + age80To90ForBiden + age90To100ForBiden + age100To110ForBiden;

    if ageTotal == 0:
        ageTotal = ageTotal + 1
    agePercent = 100 / ageTotal;

    ageAnalysisForTrump.update({"age20To30ForTrump": round((age20To30ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age30To40ForTrump": round((age30To40ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age40To50ForTrump": round((age40To50ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age50To60ForTrump": round((age50To60ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age60To70ForTrump": round((age60To70ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age70To80ForTrump": round((age70To80ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age80To90ForTrump": round((age80To90ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age90To100ForTrump": round((age90To100ForTrump * agePercent), 2)})
    ageAnalysisForTrump.update({"age100To110ForTrump": round((age100To110ForTrump * agePercent), 2)})
    ageAnalysisForBiden.update({"age20To30ForBiden": round((age20To30ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age30To40ForBiden": round((age30To40ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age40To50ForBiden": round((age40To50ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age50To60ForBiden": round((age50To60ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age60To70ForBiden": round((age60To70ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age70To80ForBiden": round((age70To80ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age80To90ForBiden": round((age80To90ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age90To100ForBiden": round((age90To100ForBiden * agePercent), 2)})
    ageAnalysisForBiden.update({"age100To110ForBiden": round((age100To110ForBiden * agePercent), 2)})

    # ------- AGE END --------

    # ------- Ethnicity --------

    ethnicityAnalysisForTrump = {}
    ethnicityAnalysisForBiden = {}

    americanIndianForTrump = getAnalysisForEthnicity("American Indian or Alaska Native", "Trump");
    asianForTrump = getAnalysisForEthnicity("Asian", "Trump");
    blackForTrump = getAnalysisForEthnicity("Black or African American", "Trump");
    hispanicForTrump = getAnalysisForEthnicity("Hispanic or Latino", "Trump");
    nativeForTrump = getAnalysisForEthnicity("Native Hawaiian or Other Pacific Islander", "Trump");
    whiteForTrump = getAnalysisForEthnicity("White", "Trump");
    americanIndianForBiden = getAnalysisForEthnicity("American Indian or Alaska Native", "Biden");
    asianForBiden = getAnalysisForEthnicity("Asian", "Biden");
    blackForBiden = getAnalysisForEthnicity("Black or African American", "Biden");
    hispanicForBiden = getAnalysisForEthnicity("Hispanic or Latino", "Biden");
    nativeForBiden = getAnalysisForEthnicity("Native Hawaiian or Other Pacific Islander", "Biden");
    whiteForBiden = getAnalysisForEthnicity("White", "Biden");
    ethnicityTotal = americanIndianForTrump + asianForTrump + blackForTrump + hispanicForTrump + nativeForTrump + whiteForTrump + americanIndianForBiden + asianForBiden + blackForBiden + hispanicForBiden + nativeForBiden + whiteForBiden;

    if ethnicityTotal == 0:
        ethnicityTotal = ethnicityTotal + 1
    ethnicityPercent = 100 / ethnicityTotal;

    ethnicityAnalysisForTrump.update({"americanIndianForTrump": round((americanIndianForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForTrump.update({"asianForTrump": round((asianForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForTrump.update({"blackForTrump": round((blackForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForTrump.update({"hispanicForTrump": round((hispanicForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForTrump.update({"nativeForTrump": round((nativeForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForTrump.update({"whiteForTrump": round((whiteForTrump * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"americanIndianForBiden": round((americanIndianForBiden * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"asianForBiden": round((asianForBiden * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"blackForBiden": round((blackForBiden * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"hispanicForBiden": round((hispanicForBiden * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"nativeForBiden": round((nativeForBiden * ethnicityPercent), 2)})
    ethnicityAnalysisForBiden.update({"whiteForBiden": round((whiteForBiden * ethnicityPercent), 2)})

    # ------ End of Ethnicity ------

    #print(f"str1 >>>>> {str1}")
    return render_template("lander.html", sexAnalysisTrump=sexAnalysisTrump,
                           sexAnalysisBiden=sexAnalysisBiden,
                           ageAnalysisForTrump=ageAnalysisForTrump,
                           ageAnalysisForBiden=ageAnalysisForBiden,
                           ethnicityAnalysisForTrump=ethnicityAnalysisForTrump,
                           ethnicityAnalysisForBiden=ethnicityAnalysisForBiden)



# Utility FUnctions
def getAnalysisForSex(sex, candidate):
    conn = createDBConnection()
    q2 = 'SELECT count(*) FROM VOTER WHERE sex = ? and selection = ?;'

    stmt_insert = ibm_db.prepare(conn, q2)
    ibm_db.bind_param(stmt_insert, 1, sex)
    ibm_db.bind_param(stmt_insert, 2, candidate)

    id_execute = ibm_db.execute(stmt_insert)
    # fetch the result
    res = []
    result = ibm_db.fetch_assoc(stmt_insert)
    while result:
        res.append(result.copy())
        result = ibm_db.fetch_assoc(stmt_insert)
    print(f"res >>>>> {res[0].get('1')}")
    return int(res[0].get('1'))


def getAnalysisForAge(min, max, candidate):
    conn = createDBConnection()
    q2 = 'select count(*) from voter where age>=? and age<? and selection=?;'

    stmt_insert = ibm_db.prepare(conn, q2)
    ibm_db.bind_param(stmt_insert, 1, int(min))
    ibm_db.bind_param(stmt_insert, 2, int(max))
    ibm_db.bind_param(stmt_insert, 3, candidate)

    id_execute = ibm_db.execute(stmt_insert)
    # fetch the result
    res = []
    result = ibm_db.fetch_assoc(stmt_insert)
    while result:
        res.append(result.copy())
        result = ibm_db.fetch_assoc(stmt_insert)
    print(f"res >>>>> {res[0].get('1')}")
    return int(res[0].get('1'))


def getAnalysisForEthnicity(ethnicity, candidate):
    conn = createDBConnection()
    q2 = 'select count(*) from voter where ethnicity=? and selection=?;'

    stmt_insert = ibm_db.prepare(conn, q2)
    ibm_db.bind_param(stmt_insert, 1, ethnicity)
    ibm_db.bind_param(stmt_insert, 2, candidate)

    id_execute = ibm_db.execute(stmt_insert)
    # fetch the result
    res = []
    result = ibm_db.fetch_assoc(stmt_insert)
    while result:
        res.append(result.copy())
        result = ibm_db.fetch_assoc(stmt_insert)
    print(f"res >>>>> {res[0].get('1')}")
    return int(res[0].get('1'))


port = int(os.getenv('PORT', '3000'))
app.run(host='0.0.0.0', port=port, debug=True)
