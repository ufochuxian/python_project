.class public La;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lorg/xbill/DNS/Name;

.field static b:I

.field static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11
    const/4 v0, 0x0

    sput-object v0, La;->a:Lorg/xbill/DNS/Name;

    .line 12
    sput v1, La;->b:I

    sput v1, La;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: dig [@server] name [<type>] [<class>] [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 19
    return-void
.end method

.method static a(Lorg/xbill/DNS/v;)V
    .locals 6
    .param p0, "response"    # Lorg/xbill/DNS/v;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 30
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "; java dig 0.0 <> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, La;->a:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " axfr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lorg/xbill/DNS/v;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ";; TSIG "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lorg/xbill/DNS/v;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/v;->g()I

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 53
    :goto_1
    return-void

    .line 36
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "failed"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p0, v5}, Lorg/xbill/DNS/v;->b(I)[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 45
    .local v1, "records":[Lorg/xbill/DNS/Record;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 46
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 48
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ";; done ("

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 49
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/xbill/DNS/r;->i(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(I)V

    .line 50
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " records, "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 51
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/r;->i(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(I)V

    .line 52
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " additional)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static a(Lorg/xbill/DNS/v;J)V
    .locals 3
    .param p0, "response"    # Lorg/xbill/DNS/v;
    .param p1, "ms"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "; java dig 0.0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 25
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ";; Query time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 32
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/16 v25, 0x0

    .line 61
    .local v25, "server":Ljava/lang/String;
    const/16 v22, 0x0

    .line 62
    .local v22, "res":Lorg/xbill/DNS/am;
    const/16 v19, 0x0

    .line 65
    .local v19, "printQuery":Z
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 66
    invoke-static {}, La;->a()V

    .line 70
    :cond_0
    const/4 v8, 0x0

    .line 71
    .local v8, "arg":I
    :try_start_0
    aget-object v28, p0, v8

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v28

    if-eqz v28, :cond_11

    .line 72
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "arg":I
    .local v9, "arg":I
    :try_start_1
    aget-object v28, p0, v8

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 74
    :goto_0
    if-eqz v25, :cond_1

    .line 75
    new-instance v23, Lorg/xbill/DNS/am;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v22    # "res":Lorg/xbill/DNS/am;
    .local v23, "res":Lorg/xbill/DNS/am;
    move-object/from16 v22, v23

    .line 79
    .end local v23    # "res":Lorg/xbill/DNS/am;
    .restart local v22    # "res":Lorg/xbill/DNS/am;
    :goto_1
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "arg":I
    .restart local v8    # "arg":I
    :try_start_2
    aget-object v16, p0, v9

    .line 80
    .local v16, "nameString":Ljava/lang/String;
    const-string v28, "-x"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v28

    if-eqz v28, :cond_2

    .line 81
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "arg":I
    .restart local v9    # "arg":I
    :try_start_3
    aget-object v28, p0, v8

    invoke-static/range {v28 .. v28}, Lorg/xbill/DNS/ag;->a(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v28

    sput-object v28, La;->a:Lorg/xbill/DNS/Name;

    .line 82
    const/16 v28, 0xc

    sput v28, La;->b:I

    .line 83
    const/16 v28, 0x1

    sput v28, La;->c:I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    move v8, v9

    .line 100
    .end local v9    # "arg":I
    .restart local v8    # "arg":I
    :goto_2
    :try_start_4
    aget-object v28, p0, v8

    const-string v29, "-"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    aget-object v28, p0, v8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    .line 101
    aget-object v28, p0, v8

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->charAt(I)C

    move-result v28

    packed-switch v28, :pswitch_data_0

    .line 177
    :pswitch_0
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "Invalid option: "

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 178
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v29, p0, v8

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 180
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 77
    .end local v8    # "arg":I
    .end local v16    # "nameString":Ljava/lang/String;
    .restart local v9    # "arg":I
    :cond_1
    :try_start_5
    new-instance v23, Lorg/xbill/DNS/am;

    invoke-direct/range {v23 .. v23}, Lorg/xbill/DNS/am;-><init>()V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v22    # "res":Lorg/xbill/DNS/am;
    .restart local v23    # "res":Lorg/xbill/DNS/am;
    move-object/from16 v22, v23

    .end local v23    # "res":Lorg/xbill/DNS/am;
    .restart local v22    # "res":Lorg/xbill/DNS/am;
    goto :goto_1

    .line 86
    .end local v9    # "arg":I
    .restart local v8    # "arg":I
    .restart local v16    # "nameString":Ljava/lang/String;
    :cond_2
    :try_start_6
    sget-object v28, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v28

    sput-object v28, La;->a:Lorg/xbill/DNS/Name;

    .line 87
    aget-object v28, p0, v8

    invoke-static/range {v28 .. v28}, Lorg/xbill/DNS/au;->a(Ljava/lang/String;)I

    move-result v28

    sput v28, La;->b:I

    .line 88
    sget v28, La;->b:I

    if-gez v28, :cond_6

    .line 89
    const/16 v28, 0x1

    sput v28, La;->b:I

    .line 93
    :goto_4
    aget-object v28, p0, v8

    invoke-static/range {v28 .. v28}, Lorg/xbill/DNS/g;->a(Ljava/lang/String;)I

    move-result v28

    sput v28, La;->c:I

    .line 94
    sget v28, La;->c:I

    if-gez v28, :cond_7

    .line 95
    const/16 v28, 0x1

    sput v28, La;->c:I
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 184
    .end local v16    # "nameString":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 185
    .local v10, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_5
    sget-object v28, La;->a:Lorg/xbill/DNS/Name;

    if-nez v28, :cond_3

    .line 186
    invoke-static {}, La;->a()V

    .line 188
    .end local v10    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    if-nez v22, :cond_4

    .line 189
    new-instance v22, Lorg/xbill/DNS/am;

    .end local v22    # "res":Lorg/xbill/DNS/am;
    invoke-direct/range {v22 .. v22}, Lorg/xbill/DNS/am;-><init>()V

    .line 191
    .restart local v22    # "res":Lorg/xbill/DNS/am;
    :cond_4
    sget-object v28, La;->a:Lorg/xbill/DNS/Name;

    sget v29, La;->b:I

    sget v30, La;->c:I

    invoke-static/range {v28 .. v30}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v21

    .line 192
    .local v21, "rec":Lorg/xbill/DNS/Record;
    invoke-static/range {v21 .. v21}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/v;

    move-result-object v20

    .line 193
    .local v20, "query":Lorg/xbill/DNS/v;
    if-eqz v19, :cond_5

    .line 194
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 195
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 196
    .local v26, "startTime":J
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/am;->a(Lorg/xbill/DNS/v;)Lorg/xbill/DNS/v;

    move-result-object v24

    .line 197
    .local v24, "response":Lorg/xbill/DNS/v;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 199
    .local v14, "endTime":J
    sget v28, La;->b:I

    const/16 v29, 0xfc

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 200
    invoke-static/range {v24 .. v24}, La;->a(Lorg/xbill/DNS/v;)V

    .line 203
    .end local v14    # "endTime":J
    .end local v20    # "query":Lorg/xbill/DNS/v;
    .end local v21    # "rec":Lorg/xbill/DNS/Record;
    .end local v24    # "response":Lorg/xbill/DNS/v;
    .end local v26    # "startTime":J
    :goto_6
    return-void

    .line 91
    .restart local v16    # "nameString":Ljava/lang/String;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 97
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 105
    :pswitch_1
    :try_start_7
    aget-object v28, p0, v8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_9

    .line 106
    aget-object v28, p0, v8

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 109
    .local v18, "portStr":Ljava/lang/String;
    :goto_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 110
    .local v17, "port":I
    if-ltz v17, :cond_8

    const/high16 v28, 0x10000

    move/from16 v0, v17

    move/from16 v1, v28

    if-le v0, v1, :cond_a

    .line 111
    :cond_8
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "Invalid port"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 108
    .end local v17    # "port":I
    .end local v18    # "portStr":Ljava/lang/String;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    aget-object v18, p0, v8

    .restart local v18    # "portStr":Ljava/lang/String;
    goto :goto_7

    .line 114
    .restart local v17    # "port":I
    :cond_a
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/am;->a(I)V

    goto/16 :goto_3

    .line 119
    .end local v17    # "port":I
    .end local v18    # "portStr":Ljava/lang/String;
    :pswitch_2
    aget-object v28, p0, v8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_b

    .line 120
    aget-object v28, p0, v8

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v7

    .line 125
    .local v7, "addrStr":Ljava/lang/String;
    :goto_8
    :try_start_8
    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v6

    .line 131
    .local v6, "addr":Ljava/net/InetAddress;
    :try_start_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/am;->b(Ljava/net/InetAddress;)V

    goto/16 :goto_3

    .line 122
    .end local v6    # "addr":Ljava/net/InetAddress;
    .end local v7    # "addrStr":Ljava/lang/String;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    aget-object v7, p0, v8

    .restart local v7    # "addrStr":Ljava/lang/String;
    goto :goto_8

    .line 127
    :catch_1
    move-exception v10

    .line 128
    .local v10, "e":Ljava/lang/Exception;
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v29, "Invalid address"

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 136
    .end local v7    # "addrStr":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    :pswitch_3
    aget-object v28, p0, v8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_c

    .line 137
    aget-object v28, p0, v8

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 140
    .local v13, "key":Ljava/lang/String;
    :goto_9
    invoke-static {v13}, Lorg/xbill/DNS/aq;->a(Ljava/lang/String;)Lorg/xbill/DNS/aq;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/am;->a(Lorg/xbill/DNS/aq;)V

    goto/16 :goto_3

    .line 139
    .end local v13    # "key":Ljava/lang/String;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    aget-object v13, p0, v8

    .restart local v13    # "key":Ljava/lang/String;
    goto :goto_9

    .line 144
    .end local v13    # "key":Ljava/lang/String;
    :pswitch_4
    const/16 v28, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/am;->a(Z)V

    goto/16 :goto_3

    .line 148
    :pswitch_5
    const/16 v28, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/am;->b(Z)V

    goto/16 :goto_3

    .line 154
    :pswitch_6
    aget-object v28, p0, v8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_e

    .line 155
    aget-object v28, p0, v8

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 158
    .local v12, "ednsStr":Ljava/lang/String;
    :goto_a
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 159
    .local v11, "edns":I
    if-ltz v11, :cond_d

    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v11, v0, :cond_f

    .line 160
    :cond_d
    sget-object v28, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    const-string v30, "Unsupported EDNS level: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 157
    .end local v11    # "edns":I
    .end local v12    # "ednsStr":Ljava/lang/String;
    :cond_e
    add-int/lit8 v8, v8, 0x1

    aget-object v12, p0, v8

    .restart local v12    # "ednsStr":Ljava/lang/String;
    goto :goto_a

    .line 165
    .restart local v11    # "edns":I
    :cond_f
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/am;->b(I)V

    goto/16 :goto_3

    .line 169
    .end local v11    # "edns":I
    .end local v12    # "ednsStr":Ljava/lang/String;
    :pswitch_7
    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0x8000

    const/16 v31, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/xbill/DNS/am;->a(IIILjava/util/List;)V
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3

    .line 173
    :pswitch_8
    const/16 v19, 0x1

    .line 174
    goto/16 :goto_3

    .line 202
    .end local v16    # "nameString":Ljava/lang/String;
    .restart local v14    # "endTime":J
    .restart local v20    # "query":Lorg/xbill/DNS/v;
    .restart local v21    # "rec":Lorg/xbill/DNS/Record;
    .restart local v24    # "response":Lorg/xbill/DNS/v;
    .restart local v26    # "startTime":J
    :cond_10
    sub-long v28, v14, v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, La;->a(Lorg/xbill/DNS/v;J)V

    goto/16 :goto_6

    .line 184
    .end local v8    # "arg":I
    .end local v14    # "endTime":J
    .end local v20    # "query":Lorg/xbill/DNS/v;
    .end local v21    # "rec":Lorg/xbill/DNS/Record;
    .end local v24    # "response":Lorg/xbill/DNS/v;
    .end local v26    # "startTime":J
    .restart local v9    # "arg":I
    :catch_2
    move-exception v10

    move v8, v9

    .end local v9    # "arg":I
    .restart local v8    # "arg":I
    goto/16 :goto_5

    :cond_11
    move v9, v8

    .end local v8    # "arg":I
    .restart local v9    # "arg":I
    goto/16 :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
