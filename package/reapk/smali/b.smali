.class public Lb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2


# instance fields
.field c:Ljava/util/Map;

.field d:Ljava/util/Map;

.field e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 23
    .param p1, "conffile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v16, "ports":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v5, "addresses":Ljava/util/List;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 33
    .local v9, "fs":Ljava/io/FileInputStream;
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 34
    .local v12, "isr":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v6, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lb;->c:Ljava/util/Map;

    .line 43
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lb;->d:Ljava/util/Map;

    .line 44
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lb;->e:Ljava/util/Map;

    .line 46
    const/4 v14, 0x0

    .line 47
    .local v14, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 48
    new-instance v19, Ljava/util/StringTokenizer;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 49
    .local v19, "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 51
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 52
    .local v13, "keyword":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-nez v20, :cond_1

    .line 53
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "Invalid line: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    .end local v13    # "keyword":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v19    # "st":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v20

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    throw v20

    .line 36
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v9    # "fs":Ljava/io/FileInputStream;
    .end local v12    # "isr":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v8

    .line 37
    .local v8, "e":Ljava/lang/Exception;
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "Cannot open "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 56
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "fs":Ljava/io/FileInputStream;
    .restart local v12    # "isr":Ljava/io/InputStreamReader;
    .restart local v13    # "keyword":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v19    # "st":Ljava/util/StringTokenizer;
    :cond_1
    const/16 v20, 0x0

    :try_start_2
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x23

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 58
    const-string v20, "primary"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 59
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_2
    const-string v20, "secondary"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 61
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lb;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_3
    const-string v20, "cache"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 64
    new-instance v7, Lorg/xbill/DNS/b;

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Lorg/xbill/DNS/b;-><init>(Ljava/lang/String;)V

    .line 65
    .local v7, "cache":Lorg/xbill/DNS/b;
    move-object/from16 v0, p0

    iget-object v0, v0, Lb;->c:Ljava/util/Map;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/Integer;

    const/16 v22, 0x1

    invoke-direct/range {v21 .. v22}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 66
    .end local v7    # "cache":Lorg/xbill/DNS/b;
    :cond_4
    const-string v20, "key"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 67
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 68
    .local v17, "s1":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    .line 69
    .local v18, "s2":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 70
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_5
    const-string v20, "hmac-md5"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    .end local v17    # "s1":Ljava/lang/String;
    .end local v18    # "s2":Ljava/lang/String;
    :cond_6
    const-string v20, "port"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 74
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 75
    :cond_7
    const-string v20, "address"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 76
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "addr":Ljava/lang/String;
    invoke-static {v4}, Lorg/xbill/DNS/a;->e(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    .end local v4    # "addr":Ljava/lang/String;
    :cond_8
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "unknown keyword: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    .end local v13    # "keyword":Ljava/lang/String;
    .end local v19    # "st":Ljava/util/StringTokenizer;
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_a

    .line 86
    new-instance v20, Ljava/lang/Integer;

    const/16 v21, 0x35

    invoke-direct/range {v20 .. v21}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_b

    .line 89
    const-string v20, "0.0.0.0"

    invoke-static/range {v20 .. v20}, Lorg/xbill/DNS/a;->e(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 92
    .local v10, "iaddr":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 93
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 94
    .local v4, "addr":Ljava/net/InetAddress;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 95
    .local v11, "iport":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 96
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 97
    .local v15, "port":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lb;->d(Ljava/net/InetAddress;I)V

    .line 98
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lb;->c(Ljava/net/InetAddress;I)V

    .line 99
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "jnamed: listening on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-static {v4, v15}, Lb;->e(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 103
    .end local v4    # "addr":Ljava/net/InetAddress;
    .end local v11    # "iport":Ljava/util/Iterator;
    .end local v15    # "port":I
    :cond_d
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "jnamed: running"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1
.end method

.method private a(Lorg/xbill/DNS/v;II)V
    .locals 5
    .param p1, "response"    # Lorg/xbill/DNS/v;
    .param p2, "section"    # I
    .param p3, "flags"    # I

    .prologue
    .line 239
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/v;->b(I)[Lorg/xbill/DNS/Record;

    move-result-object v3

    .line 240
    .local v3, "records":[Lorg/xbill/DNS/Record;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 241
    aget-object v2, v3, v1

    .line 242
    .local v2, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 243
    .local v0, "glueName":Lorg/xbill/DNS/Name;
    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0, p1, v0, p3}, Lb;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Name;I)V

    .line 240
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "glueName":Lorg/xbill/DNS/Name;
    .end local v2    # "r":Lorg/xbill/DNS/Record;
    :cond_1
    return-void
.end method

.method private a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Name;I)V
    .locals 6
    .param p1, "response"    # Lorg/xbill/DNS/v;
    .param p2, "name"    # Lorg/xbill/DNS/Name;
    .param p3, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 231
    invoke-virtual {p0, p2, v0, v0, v0}, Lb;->a(Lorg/xbill/DNS/Name;IIZ)Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 232
    .local v3, "a":Lorg/xbill/DNS/RRset;
    if-nez v3, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lb;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/RRset;II)V

    goto :goto_0
.end method

.method private final a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Zone;)V
    .locals 2
    .param p1, "response"    # Lorg/xbill/DNS/v;
    .param p2, "zone"    # Lorg/xbill/DNS/Zone;

    .prologue
    .line 206
    invoke-virtual {p2}, Lorg/xbill/DNS/Zone;->getSOA()Lorg/xbill/DNS/SOARecord;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 207
    return-void
.end method

.method private final a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Zone;I)V
    .locals 6
    .param p1, "response"    # Lorg/xbill/DNS/v;
    .param p2, "zone"    # Lorg/xbill/DNS/Zone;
    .param p3, "flags"    # I

    .prologue
    .line 211
    invoke-virtual {p2}, Lorg/xbill/DNS/Zone;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 212
    .local v3, "nsRecords":Lorg/xbill/DNS/RRset;
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v4, 0x2

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lb;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/RRset;II)V

    .line 214
    return-void
.end method

.method private final a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/b;Lorg/xbill/DNS/Name;)V
    .locals 6
    .param p1, "response"    # Lorg/xbill/DNS/v;
    .param p2, "cache"    # Lorg/xbill/DNS/b;
    .param p3, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    const/4 v5, 0x2

    .line 218
    const/4 v4, 0x0

    invoke-virtual {p2, p3, v5, v4}, Lorg/xbill/DNS/b;->b(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/al;

    move-result-object v3

    .line 219
    .local v3, "sr":Lorg/xbill/DNS/al;
    invoke-virtual {v3}, Lorg/xbill/DNS/al;->d()Z

    move-result v4

    if-nez v4, :cond_1

    .line 227
    :cond_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {v3}, Lorg/xbill/DNS/al;->k()Lorg/xbill/DNS/RRset;

    move-result-object v1

    .line 222
    .local v1, "nsRecords":Lorg/xbill/DNS/RRset;
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .line 223
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 225
    .local v2, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1, v2, v5}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 619
    array-length v3, p0

    if-le v3, v6, :cond_0

    .line 620
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "usage: jnamed [conf]"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 626
    :cond_0
    :try_start_0
    array-length v3, p0

    if-ne v3, v6, :cond_1

    .line 627
    const/4 v3, 0x0

    aget-object v0, p0, v3

    .line 630
    .local v0, "conf":Ljava/lang/String;
    :goto_0
    new-instance v2, Lb;

    invoke-direct {v2, v0}, Lb;-><init>(Ljava/lang/String;)V

    .line 638
    .end local v0    # "conf":Ljava/lang/String;
    :goto_1
    return-void

    .line 629
    :cond_1
    const-string v0, "jnamed.conf"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xbill/DNS/ZoneTransferException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v0    # "conf":Ljava/lang/String;
    goto :goto_0

    .line 632
    .end local v0    # "conf":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 633
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 635
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 636
    .local v1, "e":Lorg/xbill/DNS/ZoneTransferException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private final b(Lorg/xbill/DNS/v;I)V
    .locals 1
    .param p1, "response"    # Lorg/xbill/DNS/v;
    .param p2, "flags"    # I

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lb;->a(Lorg/xbill/DNS/v;II)V

    .line 251
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lb;->a(Lorg/xbill/DNS/v;II)V

    .line 252
    return-void
.end method

.method private static e(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "port"    # I

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Name;IIII)B
    .locals 32
    .param p1, "response"    # Lorg/xbill/DNS/v;
    .param p2, "name"    # Lorg/xbill/DNS/Name;
    .param p3, "type"    # I
    .param p4, "dclass"    # I
    .param p5, "iterations"    # I
    .param p6, "flags"    # I

    .prologue
    .line 259
    const/16 v28, 0x0

    .line 261
    .local v28, "rcode":B
    const/4 v4, 0x6

    move/from16 v0, p5

    if-le v0, v4, :cond_0

    .line 262
    const/4 v4, 0x0

    .line 341
    :goto_0
    return v4

    .line 264
    :cond_0
    const/16 v4, 0x18

    move/from16 v0, p3

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2e

    move/from16 v0, p3

    if-ne v0, v4, :cond_2

    .line 265
    :cond_1
    const/16 p3, 0xff

    .line 266
    or-int/lit8 p6, p6, 0x2

    .line 269
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lb;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Zone;

    move-result-object v31

    .line 270
    .local v31, "zone":Lorg/xbill/DNS/Zone;
    if-eqz v31, :cond_6

    .line 271
    move-object/from16 v0, v31

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Zone;->findRecords(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/al;

    move-result-object v30

    .line 277
    .local v30, "sr":Lorg/xbill/DNS/al;
    :goto_1
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lb;->a(I)Lorg/xbill/DNS/b;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2}, Lb;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/b;Lorg/xbill/DNS/Name;)V

    .line 280
    :cond_3
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 281
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/r;->e(I)V

    .line 282
    if-eqz v31, :cond_4

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lb;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Zone;)V

    .line 284
    if-nez p5, :cond_4

    .line 285
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/r;->a(I)V

    .line 287
    :cond_4
    const/16 v28, 0x3

    :cond_5
    :goto_2
    move/from16 v4, v28

    .line 341
    goto :goto_0

    .line 273
    .end local v30    # "sr":Lorg/xbill/DNS/al;
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lb;->a(I)Lorg/xbill/DNS/b;

    move-result-object v23

    .line 274
    .local v23, "cache":Lorg/xbill/DNS/b;
    const/4 v4, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Lorg/xbill/DNS/b;->b(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/al;

    move-result-object v30

    .restart local v30    # "sr":Lorg/xbill/DNS/al;
    goto :goto_1

    .line 289
    .end local v23    # "cache":Lorg/xbill/DNS/b;
    :cond_7
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->c()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 290
    if-eqz v31, :cond_5

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lb;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Zone;)V

    .line 292
    if-nez p5, :cond_5

    .line 293
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/r;->a(I)V

    goto :goto_2

    .line 296
    :cond_8
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 297
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->k()Lorg/xbill/DNS/RRset;

    move-result-object v7

    .line 298
    .local v7, "nsRecords":Lorg/xbill/DNS/RRset;
    invoke-virtual {v7}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    const/4 v8, 0x2

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lb;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/RRset;II)V

    goto :goto_2

    .line 301
    .end local v7    # "nsRecords":Lorg/xbill/DNS/RRset;
    :cond_9
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->e()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 302
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->i()Lorg/xbill/DNS/CNAMERecord;

    move-result-object v24

    .line 303
    .local v24, "cname":Lorg/xbill/DNS/CNAMERecord;
    new-instance v11, Lorg/xbill/DNS/RRset;

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 304
    .local v11, "rrset":Lorg/xbill/DNS/RRset;
    const/4 v12, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lb;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/RRset;II)V

    .line 305
    if-eqz v31, :cond_a

    if-nez p5, :cond_a

    .line 306
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/r;->a(I)V

    .line 307
    :cond_a
    invoke-virtual/range {v24 .. v24}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v14

    add-int/lit8 v17, p5, 0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v18, p6

    invoke-virtual/range {v12 .. v18}, Lb;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Name;IIII)B

    move-result v28

    .line 309
    goto/16 :goto_2

    .line 310
    .end local v11    # "rrset":Lorg/xbill/DNS/RRset;
    .end local v24    # "cname":Lorg/xbill/DNS/CNAMERecord;
    :cond_b
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->f()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 311
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->j()Lorg/xbill/DNS/DNAMERecord;

    move-result-object v25

    .line 312
    .local v25, "dname":Lorg/xbill/DNS/DNAMERecord;
    new-instance v11, Lorg/xbill/DNS/RRset;

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 313
    .restart local v11    # "rrset":Lorg/xbill/DNS/RRset;
    const/4 v12, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lb;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/RRset;II)V

    .line 316
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 321
    .local v18, "newname":Lorg/xbill/DNS/Name;
    new-instance v11, Lorg/xbill/DNS/RRset;

    .end local v11    # "rrset":Lorg/xbill/DNS/RRset;
    new-instance v13, Lorg/xbill/DNS/CNAMERecord;

    const-wide/16 v16, 0x0

    move-object/from16 v14, p2

    move/from16 v15, p4

    invoke-direct/range {v13 .. v18}, Lorg/xbill/DNS/CNAMERecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    invoke-direct {v11, v13}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 322
    .restart local v11    # "rrset":Lorg/xbill/DNS/RRset;
    const/4 v12, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lb;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/RRset;II)V

    .line 323
    if-eqz v31, :cond_c

    if-nez p5, :cond_c

    .line 324
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/r;->a(I)V

    .line 325
    :cond_c
    add-int/lit8 v21, p5, 0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v19, p3

    move/from16 v20, p4

    move/from16 v22, p6

    invoke-virtual/range {v16 .. v22}, Lb;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Name;IIII)B

    move-result v28

    .line 327
    goto/16 :goto_2

    .line 318
    .end local v18    # "newname":Lorg/xbill/DNS/Name;
    :catch_0
    move-exception v26

    .line 319
    .local v26, "e":Lorg/xbill/DNS/NameTooLongException;
    const/4 v4, 0x6

    goto/16 :goto_0

    .line 328
    .end local v11    # "rrset":Lorg/xbill/DNS/RRset;
    .end local v25    # "dname":Lorg/xbill/DNS/DNAMERecord;
    .end local v26    # "e":Lorg/xbill/DNS/NameTooLongException;
    :cond_d
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 329
    invoke-virtual/range {v30 .. v30}, Lorg/xbill/DNS/al;->h()[Lorg/xbill/DNS/RRset;

    move-result-object v29

    .line 330
    .local v29, "rrsets":[Lorg/xbill/DNS/RRset;
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_3
    move-object/from16 v0, v29

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_e

    .line 331
    aget-object v15, v29, v27

    const/16 v16, 0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p1

    move/from16 v17, p6

    invoke-virtual/range {v12 .. v17}, Lb;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/RRset;II)V

    .line 330
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 333
    :cond_e
    if-eqz v31, :cond_f

    .line 334
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lb;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Zone;I)V

    .line 335
    if-nez p5, :cond_5

    .line 336
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/r;->a(I)V

    goto/16 :goto_2

    .line 339
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lb;->a(I)Lorg/xbill/DNS/b;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2}, Lb;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/b;Lorg/xbill/DNS/Name;)V

    goto/16 :goto_2
.end method

.method public a(Lorg/xbill/DNS/Name;IIZ)Lorg/xbill/DNS/RRset;
    .locals 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "glue"    # Z

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lb;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Zone;

    move-result-object v2

    .line 163
    .local v2, "zone":Lorg/xbill/DNS/Zone;
    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v2, p1, p2}, Lorg/xbill/DNS/Zone;->findExactMatch(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 175
    :goto_0
    return-object v3

    .line 167
    :cond_0
    invoke-virtual {p0, p3}, Lb;->a(I)Lorg/xbill/DNS/b;

    move-result-object v0

    .line 168
    .local v0, "cache":Lorg/xbill/DNS/b;
    if-eqz p4, :cond_1

    .line 169
    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/b;->b(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;

    move-result-object v1

    .line 172
    .local v1, "rrsets":[Lorg/xbill/DNS/RRset;
    :goto_1
    if-nez v1, :cond_2

    .line 173
    const/4 v3, 0x0

    goto :goto_0

    .line 171
    .end local v1    # "rrsets":[Lorg/xbill/DNS/RRset;
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/b;->a(Lorg/xbill/DNS/Name;I)[Lorg/xbill/DNS/RRset;

    move-result-object v1

    .restart local v1    # "rrsets":[Lorg/xbill/DNS/RRset;
    goto :goto_1

    .line 175
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v1, v3

    goto :goto_0
.end method

.method public a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Zone;
    .locals 5
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "foundzone":Lorg/xbill/DNS/Zone;
    iget-object v4, p0, Lb;->d:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "foundzone":Lorg/xbill/DNS/Zone;
    check-cast v0, Lorg/xbill/DNS/Zone;

    .line 148
    .restart local v0    # "foundzone":Lorg/xbill/DNS/Zone;
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 157
    :goto_0
    return-object v4

    .line 150
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    .line 151
    .local v2, "labels":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 152
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, p1, v1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 153
    .local v3, "tname":Lorg/xbill/DNS/Name;
    iget-object v4, p0, Lb;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "foundzone":Lorg/xbill/DNS/Zone;
    check-cast v0, Lorg/xbill/DNS/Zone;

    .line 154
    .restart local v0    # "foundzone":Lorg/xbill/DNS/Zone;
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 155
    goto :goto_0

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    .end local v3    # "tname":Lorg/xbill/DNS/Name;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public a(I)Lorg/xbill/DNS/b;
    .locals 3
    .param p1, "dclass"    # I

    .prologue
    .line 136
    iget-object v1, p0, Lb;->c:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/b;

    .line 137
    .local v0, "c":Lorg/xbill/DNS/b;
    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lorg/xbill/DNS/b;

    .end local v0    # "c":Lorg/xbill/DNS/b;
    invoke-direct {v0, p1}, Lorg/xbill/DNS/b;-><init>(I)V

    .line 139
    .restart local v0    # "c":Lorg/xbill/DNS/b;
    iget-object v1, p0, Lb;->c:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "zname"    # Ljava/lang/String;
    .param p2, "zonefile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, "origin":Lorg/xbill/DNS/Name;
    if-eqz p1, :cond_0

    .line 114
    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 115
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Zone;

    invoke-direct {v0, v1, p2}, Lorg/xbill/DNS/Zone;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    .line 116
    .local v0, "newzone":Lorg/xbill/DNS/Zone;
    iget-object v2, p0, Lb;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/xbill/DNS/Zone;->getOrigin()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "algstr"    # Ljava/lang/String;
    .param p2, "namestr"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 131
    .local v0, "name":Lorg/xbill/DNS/Name;
    iget-object v1, p0, Lb;->e:Ljava/util/Map;

    new-instance v2, Lorg/xbill/DNS/aq;

    invoke-direct {v2, p1, p2, p3}, Lorg/xbill/DNS/aq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public a(Ljava/net/InetAddress;I)V
    .locals 7
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 538
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    const/16 v4, 0x80

    invoke-direct {v2, p2, v4, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 540
    .local v2, "sock":Ljava/net/ServerSocket;
    :goto_0
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 542
    .local v1, "s":Ljava/net/Socket;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lc;

    invoke-direct {v4, p0, v1}, Lc;-><init>(Lb;Ljava/net/Socket;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 544
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    .end local v1    # "s":Ljava/net/Socket;
    .end local v2    # "sock":Ljava/net/ServerSocket;
    .end local v3    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "serveTCP("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {p1, p2}, Lb;->e(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public a(Ljava/net/Socket;)V
    .locals 12
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 500
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 501
    .local v5, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 502
    .local v0, "dataIn":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 503
    .local v4, "inLength":I
    new-array v3, v4, [B

    .line 504
    .local v3, "in":[B
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    const/4 v7, 0x0

    .line 509
    .local v7, "response":[B
    :try_start_1
    new-instance v6, Lorg/xbill/DNS/v;

    invoke-direct {v6, v3}, Lorg/xbill/DNS/v;-><init>([B)V

    .line 510
    .local v6, "query":Lorg/xbill/DNS/v;
    array-length v8, v3

    invoke-virtual {p0, v6, v3, v8, p1}, Lb;->a(Lorg/xbill/DNS/v;[BILjava/net/Socket;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 511
    if-nez v7, :cond_0

    .line 529
    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 533
    .end local v0    # "dataIn":Ljava/io/DataInputStream;
    .end local v3    # "in":[B
    .end local v4    # "inLength":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "query":Lorg/xbill/DNS/v;
    .end local v7    # "response":[B
    :goto_0
    return-void

    .line 514
    .restart local v0    # "dataIn":Ljava/io/DataInputStream;
    .restart local v3    # "in":[B
    .restart local v4    # "inLength":I
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "response":[B
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v3}, Lb;->a([B)[B

    move-result-object v7

    .line 517
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 518
    .local v1, "dataOut":Ljava/io/DataOutputStream;
    array-length v8, v7

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 519
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 529
    :try_start_4
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 531
    :catch_1
    move-exception v8

    goto :goto_0

    .line 521
    .end local v0    # "dataIn":Ljava/io/DataInputStream;
    .end local v1    # "dataOut":Ljava/io/DataOutputStream;
    .end local v3    # "in":[B
    .end local v4    # "inLength":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "response":[B
    :catch_2
    move-exception v2

    .line 522
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_5
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "TCPclient("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result v11

    invoke-static {v10, v11}, Lb;->e(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 529
    :try_start_6
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 531
    :catch_3
    move-exception v8

    goto :goto_0

    .line 528
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 529
    :try_start_7
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 531
    :goto_1
    throw v8

    .restart local v0    # "dataIn":Ljava/io/DataInputStream;
    .restart local v3    # "in":[B
    .restart local v4    # "inLength":I
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "query":Lorg/xbill/DNS/v;
    .restart local v7    # "response":[B
    :catch_4
    move-exception v8

    goto :goto_0

    .end local v0    # "dataIn":Ljava/io/DataInputStream;
    .end local v3    # "in":[B
    .end local v4    # "inLength":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "query":Lorg/xbill/DNS/v;
    .end local v7    # "response":[B
    :catch_5
    move-exception v9

    goto :goto_1
.end method

.method a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/RRset;II)V
    .locals 4
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "response"    # Lorg/xbill/DNS/v;
    .param p3, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p4, "section"    # I
    .param p5, "flags"    # I

    .prologue
    .line 181
    const/4 v2, 0x1

    .local v2, "s":I
    :goto_0
    if-gt v2, p4, :cond_2

    .line 182
    invoke-virtual {p3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    invoke-virtual {p2, p1, v3, v2}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Name;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    :cond_0
    return-void

    .line 181
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_2
    and-int/lit8 v3, p5, 0x2

    if-nez v3, :cond_4

    .line 185
    invoke-virtual {p3}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .line 186
    .local v0, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 188
    .local v1, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v3

    if-nez v3, :cond_3

    .line 189
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/Record;->withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 190
    :cond_3
    invoke-virtual {p2, v1, p4}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    goto :goto_1

    .line 193
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "r":Lorg/xbill/DNS/Record;
    :cond_4
    and-int/lit8 v3, p5, 0x3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {p3}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v0

    .line 195
    .restart local v0    # "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 197
    .restart local v1    # "r":Lorg/xbill/DNS/Record;
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v3

    if-nez v3, :cond_5

    .line 198
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/Record;->withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 199
    :cond_5
    invoke-virtual {p2, v1, p4}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    goto :goto_2
.end method

.method a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/aq;Lorg/xbill/DNS/TSIGRecord;Ljava/net/Socket;)[B
    .locals 16
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "query"    # Lorg/xbill/DNS/v;
    .param p3, "tsig"    # Lorg/xbill/DNS/aq;
    .param p4, "qtsig"    # Lorg/xbill/DNS/TSIGRecord;
    .param p5, "s"    # Ljava/net/Socket;

    .prologue
    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lb;->d:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/xbill/DNS/Zone;

    .line 347
    .local v15, "zone":Lorg/xbill/DNS/Zone;
    const/4 v10, 0x1

    .line 348
    .local v10, "first":Z
    if-nez v15, :cond_0

    .line 349
    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lb;->a(Lorg/xbill/DNS/v;I)[B

    move-result-object v2

    .line 381
    :goto_0
    return-object v2

    .line 350
    :cond_0
    invoke-virtual {v15}, Lorg/xbill/DNS/Zone;->AXFR()Ljava/util/Iterator;

    move-result-object v13

    .line 353
    .local v13, "it":Ljava/util/Iterator;
    :try_start_0
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual/range {p5 .. p5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 354
    .local v8, "dataOut":Ljava/io/DataOutputStream;
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/r;->c()I

    move-result v12

    .line 355
    .local v12, "id":I
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/RRset;

    .line 357
    .local v5, "rrset":Lorg/xbill/DNS/RRset;
    new-instance v4, Lorg/xbill/DNS/v;

    invoke-direct {v4, v12}, Lorg/xbill/DNS/v;-><init>(I)V

    .line 358
    .local v4, "response":Lorg/xbill/DNS/v;
    invoke-virtual {v4}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v11

    .line 359
    .local v11, "header":Lorg/xbill/DNS/r;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lorg/xbill/DNS/r;->a(I)V

    .line 360
    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Lorg/xbill/DNS/r;->a(I)V

    .line 361
    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lb;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/RRset;II)V

    .line 363
    if-eqz p3, :cond_1

    .line 364
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1, v10}, Lorg/xbill/DNS/aq;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/TSIGRecord;Z)V

    .line 365
    invoke-virtual {v4}, Lorg/xbill/DNS/v;->c()Lorg/xbill/DNS/TSIGRecord;

    move-result-object p4

    .line 367
    :cond_1
    const/4 v10, 0x0

    .line 368
    invoke-virtual {v4}, Lorg/xbill/DNS/v;->h()[B

    move-result-object v14

    .line 369
    .local v14, "out":[B
    array-length v2, v14

    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 370
    invoke-virtual {v8, v14}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 373
    .end local v4    # "response":Lorg/xbill/DNS/v;
    .end local v5    # "rrset":Lorg/xbill/DNS/RRset;
    .end local v8    # "dataOut":Ljava/io/DataOutputStream;
    .end local v11    # "header":Lorg/xbill/DNS/r;
    .end local v12    # "id":I
    .end local v14    # "out":[B
    :catch_0
    move-exception v9

    .line 374
    .local v9, "ex":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "AXFR failed"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 377
    .end local v9    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 379
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method a(Lorg/xbill/DNS/r;ILorg/xbill/DNS/Record;)[B
    .locals 3
    .param p1, "header"    # Lorg/xbill/DNS/r;
    .param p2, "rcode"    # I
    .param p3, "question"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 464
    new-instance v1, Lorg/xbill/DNS/v;

    invoke-direct {v1}, Lorg/xbill/DNS/v;-><init>()V

    .line 465
    .local v1, "response":Lorg/xbill/DNS/v;
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/r;)V

    .line 466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 467
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/v;->a(I)V

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 469
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 470
    :cond_1
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/r;->e(I)V

    .line 471
    invoke-virtual {v1}, Lorg/xbill/DNS/v;->h()[B

    move-result-object v2

    return-object v2
.end method

.method public a(Lorg/xbill/DNS/v;I)[B
    .locals 2
    .param p1, "query"    # Lorg/xbill/DNS/v;
    .param p2, "rcode"    # I

    .prologue
    .line 488
    invoke-virtual {p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/v;->b()Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lb;->a(Lorg/xbill/DNS/r;ILorg/xbill/DNS/Record;)[B

    move-result-object v0

    return-object v0
.end method

.method a(Lorg/xbill/DNS/v;[BILjava/net/Socket;)[B
    .locals 22
    .param p1, "query"    # Lorg/xbill/DNS/v;
    .param p2, "in"    # [B
    .param p3, "length"    # I
    .param p4, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v14, 0x0

    .line 398
    .local v14, "flags":I
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v15

    .line 399
    .local v15, "header":Lorg/xbill/DNS/r;
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lorg/xbill/DNS/r;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    const/4 v3, 0x0

    .line 459
    :goto_0
    return-object v3

    .line 401
    :cond_0
    invoke-virtual {v15}, Lorg/xbill/DNS/r;->d()I

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lb;->a(Lorg/xbill/DNS/v;I)[B

    move-result-object v3

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v15}, Lorg/xbill/DNS/r;->e()I

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lb;->a(Lorg/xbill/DNS/v;I)[B

    move-result-object v3

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->b()Lorg/xbill/DNS/Record;

    move-result-object v20

    .line 408
    .local v20, "queryRecord":Lorg/xbill/DNS/Record;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->c()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v7

    .line 409
    .local v7, "queryTSIG":Lorg/xbill/DNS/TSIGRecord;
    const/4 v6, 0x0

    .line 410
    .local v6, "tsig":Lorg/xbill/DNS/aq;
    if-eqz v7, :cond_4

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lb;->e:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tsig":Lorg/xbill/DNS/aq;
    check-cast v6, Lorg/xbill/DNS/aq;

    .line 412
    .restart local v6    # "tsig":Lorg/xbill/DNS/aq;
    if-eqz v6, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v6, v0, v1, v2, v3}, Lorg/xbill/DNS/aq;->b(Lorg/xbill/DNS/v;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v3

    if-eqz v3, :cond_4

    .line 414
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lb;->a([B)[B

    move-result-object v3

    goto :goto_0

    .line 417
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->f()Lorg/xbill/DNS/OPTRecord;

    move-result-object v19

    .line 418
    .local v19, "queryOPT":Lorg/xbill/DNS/OPTRecord;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lorg/xbill/DNS/OPTRecord;->getVersion()I

    move-result v3

    if-lez v3, :cond_5

    .line 421
    :cond_5
    if-eqz p4, :cond_8

    .line 422
    const v16, 0xffff

    .line 428
    .local v16, "maxLength":I
    :goto_1
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Lorg/xbill/DNS/OPTRecord;->getFlags()I

    move-result v3

    const v5, 0x8000

    and-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 429
    const/4 v14, 0x1

    .line 431
    :cond_6
    new-instance v9, Lorg/xbill/DNS/v;

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/r;->c()I

    move-result v3

    invoke-direct {v9, v3}, Lorg/xbill/DNS/v;-><init>(I)V

    .line 432
    .local v9, "response":Lorg/xbill/DNS/v;
    invoke-virtual {v9}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/xbill/DNS/r;->a(I)V

    .line 433
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lorg/xbill/DNS/r;->c(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 434
    invoke-virtual {v9}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lorg/xbill/DNS/r;->a(I)V

    .line 435
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v3}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 437
    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 438
    .local v4, "name":Lorg/xbill/DNS/Name;
    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/Record;->getType()I

    move-result v11

    .line 439
    .local v11, "type":I
    invoke-virtual/range {v20 .. v20}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v12

    .line 440
    .local v12, "dclass":I
    const/16 v3, 0xfc

    if-ne v11, v3, :cond_a

    if-eqz p4, :cond_a

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p4

    .line 441
    invoke-virtual/range {v3 .. v8}, Lb;->a(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/v;Lorg/xbill/DNS/aq;Lorg/xbill/DNS/TSIGRecord;Ljava/net/Socket;)[B

    move-result-object v3

    goto/16 :goto_0

    .line 423
    .end local v4    # "name":Lorg/xbill/DNS/Name;
    .end local v9    # "response":Lorg/xbill/DNS/v;
    .end local v11    # "type":I
    .end local v12    # "dclass":I
    .end local v16    # "maxLength":I
    :cond_8
    if-eqz v19, :cond_9

    .line 424
    invoke-virtual/range {v19 .. v19}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v3

    const/16 v5, 0x200

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .restart local v16    # "maxLength":I
    goto :goto_1

    .line 426
    .end local v16    # "maxLength":I
    :cond_9
    const/16 v16, 0x200

    .restart local v16    # "maxLength":I
    goto :goto_1

    .line 442
    .restart local v4    # "name":Lorg/xbill/DNS/Name;
    .restart local v9    # "response":Lorg/xbill/DNS/v;
    .restart local v11    # "type":I
    .restart local v12    # "dclass":I
    :cond_a
    invoke-static {v11}, Lorg/xbill/DNS/au;->d(I)Z

    move-result v3

    if-nez v3, :cond_b

    const/16 v3, 0xff

    if-eq v11, v3, :cond_b

    .line 443
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lb;->a(Lorg/xbill/DNS/v;I)[B

    move-result-object v3

    goto/16 :goto_0

    .line 445
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v10, v4

    invoke-virtual/range {v8 .. v14}, Lb;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/Name;IIII)B

    move-result v21

    .line 446
    .local v21, "rcode":B
    if-eqz v21, :cond_c

    const/4 v3, 0x3

    move/from16 v0, v21

    if-eq v0, v3, :cond_c

    .line 447
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lb;->a(Lorg/xbill/DNS/v;I)[B

    move-result-object v3

    goto/16 :goto_0

    .line 449
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lb;->b(Lorg/xbill/DNS/v;I)V

    .line 451
    if-eqz v19, :cond_d

    .line 452
    const/4 v3, 0x1

    if-ne v14, v3, :cond_e

    const v18, 0x8000

    .line 453
    .local v18, "optflags":I
    :goto_2
    new-instance v17, Lorg/xbill/DNS/OPTRecord;

    const/16 v3, 0x1000

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-direct {v0, v3, v1, v5, v2}, Lorg/xbill/DNS/OPTRecord;-><init>(IIII)V

    .line 455
    .local v17, "opt":Lorg/xbill/DNS/OPTRecord;
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v3}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 458
    .end local v17    # "opt":Lorg/xbill/DNS/OPTRecord;
    .end local v18    # "optflags":I
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v9, v6, v3, v7}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/aq;ILorg/xbill/DNS/TSIGRecord;)V

    .line 459
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/xbill/DNS/v;->d(I)[B

    move-result-object v3

    goto/16 :goto_0

    .line 452
    :cond_e
    const/16 v18, 0x0

    goto :goto_2
.end method

.method public a([B)[B
    .locals 4
    .param p1, "in"    # [B

    .prologue
    const/4 v2, 0x0

    .line 478
    :try_start_0
    new-instance v1, Lorg/xbill/DNS/r;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/r;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .local v1, "header":Lorg/xbill/DNS/r;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lb;->a(Lorg/xbill/DNS/r;ILorg/xbill/DNS/Record;)[B

    move-result-object v2

    .end local v1    # "header":Lorg/xbill/DNS/r;
    :goto_0
    return-object v2

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "zone"    # Ljava/lang/String;
    .param p2, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 123
    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 124
    .local v1, "zname":Lorg/xbill/DNS/Name;
    new-instance v0, Lorg/xbill/DNS/Zone;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Lorg/xbill/DNS/Zone;-><init>(Lorg/xbill/DNS/Name;ILjava/lang/String;)V

    .line 125
    .local v0, "newzone":Lorg/xbill/DNS/Zone;
    iget-object v2, p0, Lb;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public b(Ljava/net/InetAddress;I)V
    .locals 11
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 556
    :try_start_0
    new-instance v6, Ljava/net/DatagramSocket;

    invoke-direct {v6, p2, p1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 557
    .local v6, "sock":Ljava/net/DatagramSocket;
    const/16 v7, 0x200

    .line 558
    .local v7, "udpLength":S
    const/16 v8, 0x200

    new-array v1, v8, [B

    .line 559
    .local v1, "in":[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v8, v1

    invoke-direct {v2, v1, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 560
    .local v2, "indp":Ljava/net/DatagramPacket;
    const/4 v3, 0x0

    .line 562
    .local v3, "outdp":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    array-length v8, v1

    invoke-virtual {v2, v8}, Ljava/net/DatagramPacket;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 570
    const/4 v5, 0x0

    .line 572
    .local v5, "response":[B
    :try_start_2
    new-instance v4, Lorg/xbill/DNS/v;

    invoke-direct {v4, v1}, Lorg/xbill/DNS/v;-><init>([B)V

    .line 573
    .local v4, "query":Lorg/xbill/DNS/v;
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p0, v4, v1, v8, v9}, Lb;->a(Lorg/xbill/DNS/v;[BILjava/net/Socket;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 576
    if-eqz v5, :cond_0

    .line 582
    .end local v4    # "query":Lorg/xbill/DNS/v;
    :goto_1
    if-nez v3, :cond_1

    .line 583
    :try_start_3
    new-instance v3, Ljava/net/DatagramPacket;

    .end local v3    # "outdp":Ljava/net/DatagramPacket;
    array-length v8, v5

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v10

    invoke-direct {v3, v5, v8, v9, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 593
    .restart local v3    # "outdp":Ljava/net/DatagramPacket;
    :goto_2
    invoke-virtual {v6, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 596
    .end local v1    # "in":[B
    .end local v2    # "indp":Ljava/net/DatagramPacket;
    .end local v3    # "outdp":Ljava/net/DatagramPacket;
    .end local v5    # "response":[B
    .end local v6    # "sock":Ljava/net/DatagramSocket;
    .end local v7    # "udpLength":S
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/io/IOException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "serveUDP("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {p1, p2}, Lb;->e(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 600
    return-void

    .line 566
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "in":[B
    .restart local v2    # "indp":Ljava/net/DatagramPacket;
    .restart local v3    # "outdp":Ljava/net/DatagramPacket;
    .restart local v6    # "sock":Ljava/net/DatagramSocket;
    .restart local v7    # "udpLength":S
    :catch_1
    move-exception v0

    .line 567
    .local v0, "e":Ljava/io/InterruptedIOException;
    goto :goto_0

    .line 579
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .restart local v5    # "response":[B
    :catch_2
    move-exception v0

    .line 580
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {p0, v1}, Lb;->a([B)[B

    move-result-object v5

    goto :goto_1

    .line 588
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v3, v5}, Ljava/net/DatagramPacket;->setData([B)V

    .line 589
    array-length v8, v5

    invoke-virtual {v3, v8}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 590
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 591
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/net/DatagramPacket;->setPort(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method public c(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 605
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ld;

    invoke-direct {v1, p0, p1, p2}, Ld;-><init>(Lb;Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 607
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 608
    return-void
.end method

.method public d(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 613
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Le;

    invoke-direct {v1, p0, p1, p2}, Le;-><init>(Lb;Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 615
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 616
    return-void
.end method
