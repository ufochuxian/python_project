.class public Lcom/squareup/okhttp/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/h$c;,
        Lcom/squareup/okhttp/internal/h$b;,
        Lcom/squareup/okhttp/internal/h$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/squareup/okhttp/internal/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/squareup/okhttp/internal/h;->c()Lcom/squareup/okhttp/internal/h;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/h;->a:Lcom/squareup/okhttp/internal/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method public static a()Lcom/squareup/okhttp/internal/h;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/squareup/okhttp/internal/h;->a:Lcom/squareup/okhttp/internal/h;

    return-object v0
.end method

.method static a(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    new-instance v2, Lokio/c;

    invoke-direct {v2}, Lokio/c;-><init>()V

    .line 370
    .local v2, "result":Lokio/c;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 371
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/okhttp/Protocol;

    .line 372
    .local v1, "protocol":Lcom/squareup/okhttp/Protocol;
    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-ne v1, v4, :cond_0

    .line 370
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/c;->b(I)Lokio/c;

    .line 374
    invoke-virtual {v1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lokio/c;->a(Ljava/lang/String;)Lokio/c;

    goto :goto_1

    .line 376
    .end local v1    # "protocol":Lcom/squareup/okhttp/Protocol;
    :cond_1
    invoke-virtual {v2}, Lokio/c;->w()[B

    move-result-object v4

    return-object v4
.end method

.method private static c()Lcom/squareup/okhttp/internal/h;
    .locals 25

    .prologue
    .line 115
    :try_start_0
    const-string v2, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v15, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    :try_start_1
    new-instance v3, Lcom/squareup/okhttp/internal/g;

    const/4 v2, 0x0

    const-string v9, "setUseSessionTickets"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v3, v2, v9, v0}, Lcom/squareup/okhttp/internal/g;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 123
    .local v3, "setUseSessionTickets":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    new-instance v4, Lcom/squareup/okhttp/internal/g;

    .end local v15    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    const-string v9, "setHostname"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v4, v2, v9, v0}, Lcom/squareup/okhttp/internal/g;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .local v4, "setHostname":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    const/4 v5, 0x0

    .line 126
    .local v5, "trafficStatsTagSocket":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 127
    .local v6, "trafficStatsUntagSocket":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .line 128
    .local v7, "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    const/4 v8, 0x0

    .line 132
    .local v8, "setAlpnProtocols":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    :try_start_2
    const-string v2, "android.net.TrafficStats"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v21

    .line 133
    .local v21, "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "tagSocket"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/16 v22, 0x0

    const-class v23, Ljava/net/Socket;

    aput-object v23, v9, v22

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 134
    const-string v2, "untagSocket"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/16 v22, 0x0

    const-class v23, Ljava/net/Socket;

    aput-object v23, v9, v22

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v6

    .line 138
    :try_start_3
    const-string v2, "android.net.Network"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 139
    new-instance v16, Lcom/squareup/okhttp/internal/g;

    const-class v2, [B

    const-string v9, "getAlpnSelectedProtocol"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v9, v1}, Lcom/squareup/okhttp/internal/g;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5

    .line 140
    .end local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .local v16, "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    :try_start_4
    new-instance v20, Lcom/squareup/okhttp/internal/g;

    const/4 v2, 0x0

    const-string v9, "setAlpnProtocols"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, [B

    aput-object v24, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v9, v1}, Lcom/squareup/okhttp/internal/g;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6

    .end local v8    # "setAlpnProtocols":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .local v20, "setAlpnProtocols":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    move-object/from16 v8, v20

    .end local v20    # "setAlpnProtocols":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .restart local v8    # "setAlpnProtocols":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    move-object/from16 v7, v16

    .line 146
    .end local v16    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .end local v21    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    :goto_1
    :try_start_5
    new-instance v2, Lcom/squareup/okhttp/internal/h$a;

    invoke-direct/range {v2 .. v8}, Lcom/squareup/okhttp/internal/h$a;-><init>(Lcom/squareup/okhttp/internal/g;Lcom/squareup/okhttp/internal/g;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/g;Lcom/squareup/okhttp/internal/g;)V

    move-object v9, v2

    .line 167
    .end local v3    # "setUseSessionTickets":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .end local v4    # "setHostname":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .end local v5    # "trafficStatsTagSocket":Ljava/lang/reflect/Method;
    .end local v6    # "trafficStatsUntagSocket":Ljava/lang/reflect/Method;
    .end local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .end local v8    # "setAlpnProtocols":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .local v18, "negoClassName":Ljava/lang/String;
    :goto_2
    return-object v9

    .line 116
    .end local v18    # "negoClassName":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 118
    .restart local v15    # "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 148
    :catch_1
    move-exception v2

    .line 154
    .end local v15    # "e":Ljava/lang/ClassNotFoundException;
    :try_start_6
    const-string v18, "org.eclipse.jetty.alpn.ALPN"

    .line 155
    .restart local v18    # "negoClassName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 156
    .local v17, "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "$Provider"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    .line 157
    .local v19, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "$ClientProvider"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 158
    .local v13, "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "$ServerProvider"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 159
    .local v14, "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "put"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/16 v22, 0x0

    const-class v23, Ljavax/net/ssl/SSLSocket;

    aput-object v23, v9, v22

    const/16 v22, 0x1

    aput-object v19, v9, v22

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 160
    .local v10, "putMethod":Ljava/lang/reflect/Method;
    const-string v2, "get"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/16 v22, 0x0

    const-class v23, Ljavax/net/ssl/SSLSocket;

    aput-object v23, v9, v22

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 161
    .local v11, "getMethod":Ljava/lang/reflect/Method;
    const-string v2, "remove"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/16 v22, 0x0

    const-class v23, Ljavax/net/ssl/SSLSocket;

    aput-object v23, v9, v22

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 162
    .local v12, "removeMethod":Ljava/lang/reflect/Method;
    new-instance v9, Lcom/squareup/okhttp/internal/h$b;

    invoke-direct/range {v9 .. v14}, Lcom/squareup/okhttp/internal/h$b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 164
    .end local v10    # "putMethod":Ljava/lang/reflect/Method;
    .end local v11    # "getMethod":Ljava/lang/reflect/Method;
    .end local v12    # "removeMethod":Ljava/lang/reflect/Method;
    .end local v13    # "clientProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "serverProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "negoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v2

    .line 167
    :goto_3
    new-instance v9, Lcom/squareup/okhttp/internal/h;

    invoke-direct {v9}, Lcom/squareup/okhttp/internal/h;-><init>()V

    goto/16 :goto_2

    .line 164
    :catch_3
    move-exception v2

    goto :goto_3

    .line 143
    .end local v18    # "negoClassName":Ljava/lang/String;
    .restart local v3    # "setUseSessionTickets":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .restart local v4    # "setHostname":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .restart local v5    # "trafficStatsTagSocket":Ljava/lang/reflect/Method;
    .restart local v6    # "trafficStatsUntagSocket":Ljava/lang/reflect/Method;
    .restart local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .restart local v8    # "setAlpnProtocols":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    :catch_4
    move-exception v2

    goto/16 :goto_1

    :catch_5
    move-exception v2

    goto/16 :goto_1

    .end local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .restart local v16    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .restart local v21    # "trafficStats":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_6
    move-exception v2

    move-object/from16 v7, v16

    .end local v16    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .restart local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    goto/16 :goto_1

    .line 141
    :catch_7
    move-exception v2

    goto/16 :goto_1

    .end local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .restart local v16    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    :catch_8
    move-exception v2

    move-object/from16 v7, v16

    .end local v16    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    .restart local v7    # "getAlpnSelectedProtocol":Lcom/squareup/okhttp/internal/g;, "Lcom/squareup/okhttp/internal/g<Ljava/net/Socket;>;"
    goto/16 :goto_1
.end method


# virtual methods
.method public a(Ljava/net/URL;)Ljava/net/URI;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "warning"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public a(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 108
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 98
    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "OkHttp"

    return-object v0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 77
    return-void
.end method
