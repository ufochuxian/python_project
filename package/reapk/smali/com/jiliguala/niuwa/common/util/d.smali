.class public Lcom/jiliguala/niuwa/common/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/jiliguala/niuwa/common/util/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 2
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x5

    .line 164
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljavax/xml/datatype/XMLGregorianCalendar;)J
    .locals 4
    .param p0, "xmlCalendar"    # Ljavax/xml/datatype/XMLGregorianCalendar;

    .prologue
    .line 51
    invoke-virtual {p0}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 52
    .local v0, "ca":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 53
    .local v2, "time":J
    return-wide v2
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 278
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->U()I

    move-result v0

    .line 279
    .local v0, "age":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, -0x1

    mul-int/lit8 v4, v4, 0xc

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "firstNum":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v4, v0, 0xc

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "secondNum":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 35
    const/4 v2, 0x0

    .line 37
    .local v2, "xmlCalendar":Ljavax/xml/datatype/XMLGregorianCalendar;
    :try_start_0
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 38
    .local v1, "timeG":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 39
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 44
    .end local v1    # "timeG":Ljava/util/GregorianCalendar;
    :goto_0
    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v2}, Ljavax/xml/datatype/XMLGregorianCalendar;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    :goto_1
    return-object v3

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 13
    .param p0, "birthday"    # Ljava/util/Date;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 129
    invoke-static {p0}, Lorg/joda/time/LocalDate;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDate;

    move-result-object v1

    .line 130
    .local v1, "bd":Lorg/joda/time/LocalDate;
    new-instance v4, Lorg/joda/time/LocalDate;

    invoke-direct {v4}, Lorg/joda/time/LocalDate;-><init>()V

    .line 131
    .local v4, "now":Lorg/joda/time/LocalDate;
    new-instance v5, Lorg/joda/time/Period;

    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDay()Lorg/joda/time/PeriodType;

    move-result-object v7

    invoke-direct {v5, v1, v4, v7}, Lorg/joda/time/Period;-><init>(Lorg/joda/time/n;Lorg/joda/time/n;Lorg/joda/time/PeriodType;)V

    .line 132
    .local v5, "period":Lorg/joda/time/Period;
    invoke-virtual {v5}, Lorg/joda/time/Period;->getYears()I

    move-result v6

    .line 133
    .local v6, "years":I
    invoke-virtual {v5}, Lorg/joda/time/Period;->getMonths()I

    move-result v3

    .line 134
    .local v3, "months":I
    invoke-virtual {v5}, Lorg/joda/time/Period;->getDays()I

    move-result v2

    .line 135
    .local v2, "days":I
    const-string v0, ""

    .line 136
    .local v0, "age":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lorg/joda/time/LocalDate;->isEqual(Lorg/joda/time/n;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    const-string v0, "0\u5929"

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    invoke-virtual {v4, v1}, Lorg/joda/time/LocalDate;->isAfter(Lorg/joda/time/n;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 139
    if-nez v6, :cond_3

    .line 140
    if-lez v3, :cond_2

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%s\u4e2a\u6708"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_2
    if-lez v2, :cond_0

    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%s\u5929"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_3
    const-string v7, "%s\u5c81"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-lez v3, :cond_0

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%s\u4e2a\u6708"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_4
    invoke-virtual {v4, v1}, Lorg/joda/time/LocalDate;->isBefore(Lorg/joda/time/n;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 153
    const/16 v7, -0xa

    if-le v3, v7, :cond_5

    if-gtz v3, :cond_5

    .line 154
    const-string v0, "\u5907\u5b55\u4e2d"

    goto/16 :goto_0

    .line 156
    :cond_5
    const-string v0, "\u52aa\u529b\u4e2d"

    goto/16 :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/io/File;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 225
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 226
    if-eqz p1, :cond_0

    .line 227
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "mediaScanIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 229
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "mediaScanIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    :try_start_0
    const-string v4, "market://details?id=com.jiliguala.niuwa"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 189
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 195
    :try_start_1
    const-string v4, "http://m.app.haosou.com/detail/index?pname=com.jiliguala.niuwa&id=2315768"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 196
    .restart local v3    # "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 197
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 199
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 200
    .local v1, "e1":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 201
    const-string v4, "\u60a8\u672a\u5b89\u88c5\u4efb\u4f55\u5e94\u7528\u5e02\u573a\uff0c\u8bf7\u5b89\u88c5\u540e\u524d\u5f80\u8bc4\u8bba"

    invoke-static {v4}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "promptInstall":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method private static b(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 4
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 168
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 169
    .local v0, "year":I
    mul-int/lit8 v1, v0, 0xc

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public static b(Ljava/util/Date;)I
    .locals 13
    .param p0, "birthDay"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 242
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 244
    .local v2, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 245
    .local v1, "birthCal":Ljava/util/Calendar;
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 246
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 247
    const/4 v9, 0x0

    .line 274
    :goto_0
    return v9

    .line 250
    :cond_0
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 251
    .local v8, "yearNow":I
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 252
    .local v6, "monthNow":I
    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 255
    .local v4, "dayOfMonthNow":I
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 257
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 258
    .local v7, "yearBirth":I
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 259
    .local v5, "monthBirth":I
    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 261
    .local v3, "dayOfMonthBirth":I
    sub-int v0, v8, v7

    .line 263
    .local v0, "age":I
    if-gt v6, v5, :cond_1

    .line 265
    if-ne v6, v5, :cond_3

    .line 266
    if-ge v4, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 271
    :cond_1
    :goto_1
    if-gez v0, :cond_2

    .line 272
    const/4 v0, 0x0

    .line 274
    :cond_2
    add-int/lit8 v9, v0, 0x1

    goto :goto_0

    .line 268
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.samsungapps.com/appquery/appDetail.as?appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 208
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v1, "goToMarket":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.samsungapps"

    const-string v4, "com.sec.android.app.samsungapps.Main"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    const/4 v3, 0x1

    .line 220
    :goto_0
    return v3

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 174
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 173
    :goto_0
    return v0

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
