.class public Lcom/jiliguala/niuwa/logic/downloader/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/downloader/d/c;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "type":I
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 83
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 84
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "typeName":Ljava/lang/String;
    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    const/4 v3, 0x4

    .line 94
    .end local v4    # "typeName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 88
    .restart local v4    # "typeName":Ljava/lang/String;
    :cond_1
    const-string v5, "MOBILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "proxyHost":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x3

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    if-eqz v0, :cond_2

    .line 157
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 159
    .local v3, "nif":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 161
    .local v1, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_0

    .line 162
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 164
    .local v2, "ip":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 170
    .end local v1    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "ip":Ljava/net/InetAddress;
    .end local v3    # "nif":Ljava/net/NetworkInterface;
    :goto_1
    return-object v4

    :cond_2
    const-string v4, ""

    goto :goto_1

    .line 152
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 62
    .local v0, "connection":Ljava/net/HttpURLConnection;
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->POST:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->CONNECT_TIMEOUT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 64
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    sget-object v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT_RANGE:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    sget-object v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT_RANGE:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT_LANGUAGE:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    sget-object v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->ACCEPT_LANGUAGE:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->CHARSET:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    sget-object v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->CHARSET:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    sget-object v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->KEEP_CONNECT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    sget-object v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->KEEP_CONNECT:Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcom/jiliguala/niuwa/logic/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/downloader/d/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":8080/web-mobile/index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/d/a;->l(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "absolutePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://localhost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getInstance()Lcom/yanzhenjie/andserver/util/CoreServiceConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yanzhenjie/andserver/util/CoreServiceConfig;->getServerPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/index.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "url":Ljava/lang/String;
    return-object v2
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 104
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 105
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    move v1, v2

    .line 113
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 115
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 119
    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 121
    goto :goto_0

    :pswitch_5
    move v1, v2

    .line 123
    goto :goto_0

    :pswitch_6
    move v1, v2

    .line 125
    goto :goto_0

    :pswitch_7
    move v1, v2

    .line 127
    goto :goto_0

    :pswitch_8
    move v1, v2

    .line 129
    goto :goto_0

    :pswitch_9
    move v1, v2

    .line 131
    goto :goto_0

    :pswitch_a
    move v1, v2

    .line 135
    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 194
    sget-object v0, Lcom/jiliguala/niuwa/logic/downloader/d/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
