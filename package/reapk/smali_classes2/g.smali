.class public Lg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lorg/xbill/DNS/v;

.field b:Lorg/xbill/DNS/v;

.field c:Lorg/xbill/DNS/ad;

.field d:Ljava/lang/String;

.field e:Lorg/xbill/DNS/Name;

.field f:J

.field g:I

.field h:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 30
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->d:Ljava/lang/String;

    .line 15
    sget-object v27, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->e:Lorg/xbill/DNS/Name;

    .line 17
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lg;->g:I

    .line 18
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->h:Ljava/io/PrintStream;

    .line 36
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 37
    .local v7, "inputs":Ljava/util/List;
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 39
    .local v13, "istreams":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Lg;->a()Lorg/xbill/DNS/v;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->a:Lorg/xbill/DNS/v;

    .line 41
    new-instance v12, Ljava/io/InputStreamReader;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    .local v12, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .local v4, "br":Ljava/io/BufferedReader;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    :goto_0
    const/16 v17, 0x0

    .line 52
    .local v17, "line":Ljava/lang/String;
    :cond_1
    const/16 v27, 0x0

    :try_start_0
    move/from16 v0, v27

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/InputStream;

    .line 53
    .local v11, "is":Ljava/io/InputStream;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/io/BufferedReader;

    move-object v4, v0

    .line 55
    sget-object v27, Ljava/lang/System;->in:Ljava/io/InputStream;

    move-object/from16 v0, v27

    if-ne v11, v0, :cond_2

    .line 56
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v28, "> "

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .line 59
    if-nez v17, :cond_3

    .line 60
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 61
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 204
    :goto_1
    return-void

    .line 66
    :cond_3
    if-eqz v17, :cond_1

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->h:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->h:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v29, "> "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_0

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v28, 0x23

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    .line 75
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    const/16 v28, 0x3e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 76
    const/16 v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 78
    :cond_5
    new-instance v23, Lorg/xbill/DNS/at;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/xbill/DNS/at;-><init>(Ljava/lang/String;)V

    .line 79
    .local v23, "st":Lorg/xbill/DNS/at;
    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v25

    .line 81
    .local v25, "token":Lorg/xbill/DNS/at$a;
    invoke-virtual/range {v25 .. v25}, Lorg/xbill/DNS/at$a;->b()Z

    move-result v27

    if-nez v27, :cond_0

    .line 83
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 85
    .local v20, "operation":Ljava/lang/String;
    const-string v27, "server"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 86
    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->d:Ljava/lang/String;

    .line 87
    new-instance v27, Lorg/xbill/DNS/am;

    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->d:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->c:Lorg/xbill/DNS/ad;

    .line 88
    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v25

    .line 89
    invoke-virtual/range {v25 .. v25}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 90
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 91
    .local v21, "portstr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->c:Lorg/xbill/DNS/ad;

    move-object/from16 v27, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v28

    invoke-interface/range {v27 .. v28}, Lorg/xbill/DNS/ad;->a(I)V
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 229
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v20    # "operation":Ljava/lang/String;
    .end local v21    # "portstr":Ljava/lang/String;
    .end local v23    # "st":Lorg/xbill/DNS/at;
    .end local v25    # "token":Lorg/xbill/DNS/at$a;
    :catch_0
    move-exception v26

    .line 230
    .local v26, "tpe":Lorg/xbill/DNS/TextParseException;
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v26 .. v26}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    .end local v26    # "tpe":Lorg/xbill/DNS/TextParseException;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v20    # "operation":Ljava/lang/String;
    .restart local v23    # "st":Lorg/xbill/DNS/at;
    .restart local v25    # "token":Lorg/xbill/DNS/at$a;
    :cond_6
    :try_start_1
    const-string v27, "key"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 96
    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, "keyname":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v15

    .line 98
    .local v15, "keydata":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->c:Lorg/xbill/DNS/ad;

    move-object/from16 v27, v0

    if-nez v27, :cond_7

    .line 99
    new-instance v27, Lorg/xbill/DNS/am;

    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->d:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->c:Lorg/xbill/DNS/ad;

    .line 100
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->c:Lorg/xbill/DNS/ad;

    move-object/from16 v27, v0

    new-instance v28, Lorg/xbill/DNS/aq;

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lorg/xbill/DNS/aq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v27 .. v28}, Lorg/xbill/DNS/ad;->a(Lorg/xbill/DNS/aq;)V
    :try_end_1
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 232
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v15    # "keydata":Ljava/lang/String;
    .end local v16    # "keyname":Ljava/lang/String;
    .end local v20    # "operation":Ljava/lang/String;
    .end local v23    # "st":Lorg/xbill/DNS/at;
    .end local v25    # "token":Lorg/xbill/DNS/at$a;
    :catch_1
    move-exception v6

    .line 233
    .local v6, "iioe":Ljava/io/InterruptedIOException;
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v28, "Operation timed out"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    .end local v6    # "iioe":Ljava/io/InterruptedIOException;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v20    # "operation":Ljava/lang/String;
    .restart local v23    # "st":Lorg/xbill/DNS/at;
    .restart local v25    # "token":Lorg/xbill/DNS/at$a;
    :cond_8
    :try_start_2
    const-string v27, "edns"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->c:Lorg/xbill/DNS/ad;

    move-object/from16 v27, v0

    if-nez v27, :cond_9

    .line 105
    new-instance v27, Lorg/xbill/DNS/am;

    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->d:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->c:Lorg/xbill/DNS/ad;

    .line 106
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->c:Lorg/xbill/DNS/ad;

    move-object/from16 v27, v0

    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->g()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Lorg/xbill/DNS/ad;->b(I)V
    :try_end_2
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 235
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v20    # "operation":Ljava/lang/String;
    .end local v23    # "st":Lorg/xbill/DNS/at;
    .end local v25    # "token":Lorg/xbill/DNS/at$a;
    :catch_2
    move-exception v22

    .line 236
    .local v22, "se":Ljava/net/SocketException;
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v28, "Socket error"

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    .end local v22    # "se":Ljava/net/SocketException;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v20    # "operation":Ljava/lang/String;
    .restart local v23    # "st":Lorg/xbill/DNS/at;
    .restart local v25    # "token":Lorg/xbill/DNS/at$a;
    :cond_a
    :try_start_3
    const-string v27, "port"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->c:Lorg/xbill/DNS/ad;

    move-object/from16 v27, v0

    if-nez v27, :cond_b

    .line 111
    new-instance v27, Lorg/xbill/DNS/am;

    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->d:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->c:Lorg/xbill/DNS/ad;

    .line 112
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->c:Lorg/xbill/DNS/ad;

    move-object/from16 v27, v0

    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->g()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Lorg/xbill/DNS/ad;->a(I)V
    :try_end_3
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 238
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v20    # "operation":Ljava/lang/String;
    .end local v23    # "st":Lorg/xbill/DNS/at;
    .end local v25    # "token":Lorg/xbill/DNS/at$a;
    :catch_3
    move-exception v10

    .line 239
    .local v10, "ioe":Ljava/io/IOException;
    sget-object v27, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 115
    .end local v10    # "ioe":Ljava/io/IOException;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v20    # "operation":Ljava/lang/String;
    .restart local v23    # "st":Lorg/xbill/DNS/at;
    .restart local v25    # "token":Lorg/xbill/DNS/at$a;
    :cond_c
    :try_start_4
    const-string v27, "tcp"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->c:Lorg/xbill/DNS/ad;

    move-object/from16 v27, v0

    if-nez v27, :cond_d

    .line 117
    new-instance v27, Lorg/xbill/DNS/am;

    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->d:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->c:Lorg/xbill/DNS/ad;

    .line 118
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->c:Lorg/xbill/DNS/ad;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-interface/range {v27 .. v28}, Lorg/xbill/DNS/ad;->a(Z)V

    goto/16 :goto_0

    .line 121
    :cond_e
    const-string v27, "class"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 122
    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "classStr":Ljava/lang/String;
    invoke-static {v5}, Lorg/xbill/DNS/g;->a(Ljava/lang/String;)I

    move-result v18

    .line 124
    .local v18, "newClass":I
    if-lez v18, :cond_f

    .line 125
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lg;->g:I

    goto/16 :goto_0

    .line 127
    :cond_f
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    const-string v28, "Invalid class "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lg;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 130
    .end local v5    # "classStr":Ljava/lang/String;
    .end local v18    # "newClass":I
    :cond_10
    const-string v27, "ttl"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 131
    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->i()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lg;->f:J

    goto/16 :goto_0

    .line 133
    :cond_11
    const-string v27, "origin"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_12

    const-string v27, "zone"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 136
    :cond_12
    sget-object v27, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->e:Lorg/xbill/DNS/Name;

    goto/16 :goto_0

    .line 139
    :cond_13
    const-string v27, "require"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lg;->a(Lorg/xbill/DNS/at;)V

    goto/16 :goto_0

    .line 142
    :cond_14
    const-string v27, "prohibit"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lg;->b(Lorg/xbill/DNS/at;)V

    goto/16 :goto_0

    .line 145
    :cond_15
    const-string v27, "add"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lg;->c(Lorg/xbill/DNS/at;)V

    goto/16 :goto_0

    .line 148
    :cond_16
    const-string v27, "delete"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lg;->d(Lorg/xbill/DNS/at;)V

    goto/16 :goto_0

    .line 151
    :cond_17
    const-string v27, "glue"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lg;->e(Lorg/xbill/DNS/at;)V

    goto/16 :goto_0

    .line 154
    :cond_18
    const-string v27, "help"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_19

    const-string v27, "?"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 157
    :cond_19
    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v25

    .line 158
    invoke-virtual/range {v25 .. v25}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 159
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lg;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_1a
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lg;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_1b
    const-string v27, "echo"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 165
    const/16 v27, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lg;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 167
    :cond_1c
    const-string v27, "send"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 168
    invoke-virtual/range {p0 .. p0}, Lg;->b()V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lg;->a()Lorg/xbill/DNS/v;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->a:Lorg/xbill/DNS/v;

    goto/16 :goto_0

    .line 172
    :cond_1d
    const-string v27, "show"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1e

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->a:Lorg/xbill/DNS/v;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lg;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 176
    :cond_1e
    const-string v27, "clear"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1f

    .line 177
    invoke-virtual/range {p0 .. p0}, Lg;->a()Lorg/xbill/DNS/v;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lg;->a:Lorg/xbill/DNS/v;

    goto/16 :goto_0

    .line 179
    :cond_1f
    const-string v27, "query"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_20

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lg;->f(Lorg/xbill/DNS/at;)V

    goto/16 :goto_0

    .line 182
    :cond_20
    const-string v27, "quit"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_21

    const-string v27, "q"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_24

    .line 185
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->h:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    if-eqz v27, :cond_22

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lg;->h:Ljava/io/PrintStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintStream;->close()V

    .line 187
    :cond_22
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 188
    .local v14, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_23

    .line 190
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/io/BufferedReader;

    .line 191
    .local v24, "tbr":Ljava/io/BufferedReader;
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    .line 193
    .end local v24    # "tbr":Ljava/io/BufferedReader;
    :cond_23
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 196
    .end local v14    # "it":Ljava/util/Iterator;
    :cond_24
    const-string v27, "file"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_25

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7, v13}, Lg;->a(Lorg/xbill/DNS/at;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 199
    :cond_25
    const-string v27, "log"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_26

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lg;->g(Lorg/xbill/DNS/at;)V

    goto/16 :goto_0

    .line 202
    :cond_26
    const-string v27, "assert"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_27

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lg;->h(Lorg/xbill/DNS/at;)Z

    move-result v27

    if-nez v27, :cond_0

    goto/16 :goto_1

    .line 207
    :cond_27
    const-string v27, "sleep"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_28

    .line 208
    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->f()J
    :try_end_4
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v8

    .line 210
    .local v8, "interval":J
    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 212
    :catch_4
    move-exception v27

    goto/16 :goto_0

    .line 216
    .end local v8    # "interval":J
    :cond_28
    :try_start_6
    const-string v27, "date"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2a

    .line 217
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    .line 218
    .local v19, "now":Ljava/util/Date;
    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v25

    .line 219
    invoke-virtual/range {v25 .. v25}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v27

    if-eqz v27, :cond_29

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "-ms"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_29

    .line 221
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lg;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 223
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lg;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 227
    .end local v19    # "now":Ljava/util/Date;
    :cond_2a
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    const-string v28, "invalid keyword: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lg;->a(Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 3
    .param p0, "topic"    # Ljava/lang/String;

    .prologue
    .line 540
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 541
    if-nez p0, :cond_0

    .line 542
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "The following are supported commands:\nadd      assert   class    clear    date     delete\necho     edns     file     glue     help     key\nlog      port     prohibit query    quit     require\nsend     server   show     sleep    tcp      ttl\nzone     #\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 673
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 552
    const-string v0, "add"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "add <name> [ttl] [class] <type> <data>\n\nspecify a record to be added\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_1
    const-string v0, "assert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "assert <field> <value> [msg]\n\nasserts that the value of the field in the last\nresponse matches the value specified.  If not,\nthe message is printed (if present) and the\nprogram exits.  The field may be any of <rcode>,\n<serial>, <tsig>, <qu>, <an>, <au>, or <ad>.\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_2
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 565
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "class <class>\n\nclass of the zone to be updated (default: IN)\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_3
    const-string v0, "clear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 569
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "clear\n\nclears the current update packet\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_4
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 573
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "date [-ms]\n\nprints the current date and time in human readable\nformat or as the number of milliseconds since the\nepoch"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_5
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 579
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "delete <name> [ttl] [class] <type> <data> \ndelete <name> <type> \ndelete <name>\n\nspecify a record or set to be deleted, or that\nall records at a name should be deleted\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_6
    const-string v0, "echo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 586
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "echo <text>\n\nprints the text\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_7
    const-string v0, "edns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 590
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "edns <level>\n\nEDNS level specified when sending messages\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    :cond_8
    const-string v0, "file"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 594
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "file <file>\n\nopens the specified file as the new input source\n(- represents stdin)\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 598
    :cond_9
    const-string v0, "glue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 599
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "glue <name> [ttl] [class] <type> <data>\n\nspecify an additional record\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 602
    :cond_a
    const-string v0, "help"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 603
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "help\nhelp [topic]\n\nprints a list of commands or help about a specific\ncommand\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 608
    :cond_b
    const-string v0, "key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 609
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "key <name> <data>\n\nTSIG key used to sign messages\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 612
    :cond_c
    const-string v0, "log"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 613
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "log <file>\n\nopens the specified file and uses it to log output\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 616
    :cond_d
    const-string v0, "port"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 617
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "port <port>\n\nUDP/TCP port messages are sent to (default: 53)\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    :cond_e
    const-string v0, "prohibit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 621
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "prohibit <name> <type> \nprohibit <name>\n\nrequire that a set or name is not present\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 625
    :cond_f
    const-string v0, "query"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 626
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "query <name> [type [class]] \n\nissues a query\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    :cond_10
    const-string v0, "q"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "quit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 630
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "quit\n\nquits the program\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    :cond_12
    const-string v0, "require"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 634
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "require <name> [ttl] [class] <type> <data> \nrequire <name> <type> \nrequire <name>\n\nrequire that a record, set, or name is present\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    :cond_13
    const-string v0, "send"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 640
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "send\n\nsends and resets the current update packet\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    :cond_14
    const-string v0, "server"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 644
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "server <name> [port]\n\nserver that receives send updates/queries\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    :cond_15
    const-string v0, "show"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 648
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "show\n\nshows the current update packet\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 651
    :cond_16
    const-string v0, "sleep"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 652
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "sleep <milliseconds>\n\npause for interval before next command\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 655
    :cond_17
    const-string v0, "tcp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 656
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "tcp\n\nTCP should be used to send all messages\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 659
    :cond_18
    const-string v0, "ttl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 660
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ttl <ttl>\n\ndefault ttl of added records (default: 0)\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 663
    :cond_19
    const-string v0, "zone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "origin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 664
    :cond_1a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "zone <zone>\n\nzone to update (default: .\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 667
    :cond_1b
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 668
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "# <text>\n\na comment\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    :cond_1c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Topic \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' unrecognized\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 678
    const/4 v1, 0x0

    .line 679
    .local v1, "in":Ljava/io/InputStream;
    array-length v4, p0

    if-lt v4, v7, :cond_0

    .line 681
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    move-object v1, v2

    .line 690
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :goto_0
    new-instance v3, Lg;

    invoke-direct {v3, v1}, Lg;-><init>(Ljava/io/InputStream;)V

    .line 691
    .local v3, "u":Lg;
    return-void

    .line 683
    .end local v3    # "u":Lg;
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v6, p0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 685
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 689
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    goto :goto_0
.end method


# virtual methods
.method a(Lorg/xbill/DNS/at;IJ)Lorg/xbill/DNS/Record;
    .locals 11
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "classValue"    # I
    .param p3, "TTLValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v3, p0, Lg;->e:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 291
    .local v1, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Lorg/xbill/DNS/ar;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 295
    .local v4, "ttl":J
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 301
    :goto_0
    invoke-static {v9}, Lorg/xbill/DNS/g;->a(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 302
    invoke-static {v9}, Lorg/xbill/DNS/g;->a(Ljava/lang/String;)I

    move-result p2

    .line 303
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v9

    .line 306
    :cond_0
    invoke-static {v9}, Lorg/xbill/DNS/au;->a(Ljava/lang/String;)I

    move-result v2

    .local v2, "type":I
    if-gez v2, :cond_1

    .line 307
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 297
    .end local v2    # "type":I
    .end local v4    # "ttl":J
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v4, p3

    .restart local v4    # "ttl":J
    goto :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "type":I
    :cond_1
    iget-object v7, p0, Lg;->e:Lorg/xbill/DNS/Name;

    move v3, p2

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v8

    .line 310
    .local v8, "record":Lorg/xbill/DNS/Record;
    if-eqz v8, :cond_2

    .line 311
    return-object v8

    .line 313
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v6, "Parse error"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public a()Lorg/xbill/DNS/v;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lorg/xbill/DNS/v;

    invoke-direct {v0}, Lorg/xbill/DNS/v;-><init>()V

    .line 30
    .local v0, "msg":Lorg/xbill/DNS/v;
    invoke-virtual {v0}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/r;->f(I)V

    .line 31
    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lg;->h:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lg;->h:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 25
    :cond_0
    return-void
.end method

.method a(Lorg/xbill/DNS/at;)V
    .locals 10
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/16 v6, 0xff

    .line 323
    iget-object v3, p0, Lg;->e:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 324
    .local v1, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v9

    .line 325
    .local v9, "token":Lorg/xbill/DNS/at$a;
    invoke-virtual {v9}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    iget-object v3, v9, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-static {v3}, Lorg/xbill/DNS/au;->a(Ljava/lang/String;)I

    move-result v2

    .local v2, "type":I
    if-gez v2, :cond_0

    .line 327
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v9, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 328
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v9

    .line 329
    invoke-virtual {v9}, Lorg/xbill/DNS/at$a;->b()Z

    move-result v0

    .line 330
    .local v0, "iseol":Z
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->b()V

    .line 331
    if-nez v0, :cond_1

    .line 332
    iget v3, p0, Lg;->g:I

    iget-object v7, p0, Lg;->e:Lorg/xbill/DNS/Name;

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v8

    .line 340
    .end local v0    # "iseol":Z
    .end local v2    # "type":I
    .local v8, "record":Lorg/xbill/DNS/Record;
    :goto_0
    iget-object v3, p0, Lg;->a:Lorg/xbill/DNS/v;

    const/4 v4, 0x1

    invoke-virtual {v3, v8, v4}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 341
    invoke-virtual {p0, v8}, Lg;->a(Ljava/lang/Object;)V

    .line 342
    return-void

    .line 335
    .end local v8    # "record":Lorg/xbill/DNS/Record;
    .restart local v0    # "iseol":Z
    .restart local v2    # "type":I
    :cond_1
    invoke-static {v1, v2, v6, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v8

    .restart local v8    # "record":Lorg/xbill/DNS/Record;
    goto :goto_0

    .line 338
    .end local v0    # "iseol":Z
    .end local v2    # "type":I
    .end local v8    # "record":Lorg/xbill/DNS/Record;
    :cond_2
    invoke-static {v1, v6, v6, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v8

    .restart local v8    # "record":Lorg/xbill/DNS/Record;
    goto :goto_0
.end method

.method a(Lorg/xbill/DNS/at;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "inputs"    # Ljava/util/List;
    .param p3, "istreams"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "s":Ljava/lang/String;
    :try_start_0
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 450
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p3, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 451
    const/4 v3, 0x0

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-interface {p2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 456
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_1
    return-void

    .line 449
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 453
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lg;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 246
    iget-object v5, p0, Lg;->a:Lorg/xbill/DNS/v;

    invoke-virtual {v5}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/r;->i(I)I

    move-result v5

    if-nez v5, :cond_0

    .line 247
    const-string v5, "Empty update message.  Ignoring."

    invoke-virtual {p0, v5}, Lg;->a(Ljava/lang/Object;)V

    .line 276
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v5, p0, Lg;->a:Lorg/xbill/DNS/v;

    invoke-virtual {v5}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/xbill/DNS/r;->i(I)I

    move-result v5

    if-nez v5, :cond_3

    .line 252
    iget-object v4, p0, Lg;->e:Lorg/xbill/DNS/Name;

    .line 253
    .local v4, "updzone":Lorg/xbill/DNS/Name;
    iget v0, p0, Lg;->g:I

    .line 254
    .local v0, "dclass":I
    if-nez v4, :cond_2

    .line 255
    iget-object v5, p0, Lg;->a:Lorg/xbill/DNS/v;

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/v;->b(I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 256
    .local v2, "recs":[Lorg/xbill/DNS/Record;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_2

    .line 257
    if-nez v4, :cond_1

    .line 258
    new-instance v4, Lorg/xbill/DNS/Name;

    .end local v4    # "updzone":Lorg/xbill/DNS/Name;
    aget-object v5, v2, v1

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 260
    .restart local v4    # "updzone":Lorg/xbill/DNS/Name;
    :cond_1
    aget-object v5, v2, v1

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v5

    const/16 v6, 0xfe

    if-eq v5, v6, :cond_5

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v5

    const/16 v6, 0xff

    if-eq v5, v6, :cond_5

    .line 263
    aget-object v5, v2, v1

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    .line 268
    .end local v1    # "i":I
    .end local v2    # "recs":[Lorg/xbill/DNS/Record;
    :cond_2
    const/4 v5, 0x6

    invoke-static {v4, v5, v0}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v3

    .line 269
    .local v3, "soa":Lorg/xbill/DNS/Record;
    iget-object v5, p0, Lg;->a:Lorg/xbill/DNS/v;

    invoke-virtual {v5, v3, v7}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 272
    .end local v0    # "dclass":I
    .end local v3    # "soa":Lorg/xbill/DNS/Record;
    .end local v4    # "updzone":Lorg/xbill/DNS/Name;
    :cond_3
    iget-object v5, p0, Lg;->c:Lorg/xbill/DNS/ad;

    if-nez v5, :cond_4

    .line 273
    new-instance v5, Lorg/xbill/DNS/am;

    iget-object v6, p0, Lg;->d:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lg;->c:Lorg/xbill/DNS/ad;

    .line 274
    :cond_4
    iget-object v5, p0, Lg;->c:Lorg/xbill/DNS/ad;

    iget-object v6, p0, Lg;->a:Lorg/xbill/DNS/v;

    invoke-interface {v5, v6}, Lorg/xbill/DNS/ad;->a(Lorg/xbill/DNS/v;)Lorg/xbill/DNS/v;

    move-result-object v5

    iput-object v5, p0, Lg;->b:Lorg/xbill/DNS/v;

    .line 275
    iget-object v5, p0, Lg;->b:Lorg/xbill/DNS/v;

    invoke-virtual {p0, v5}, Lg;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    .restart local v0    # "dclass":I
    .restart local v1    # "i":I
    .restart local v2    # "recs":[Lorg/xbill/DNS/Record;
    .restart local v4    # "updzone":Lorg/xbill/DNS/Name;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method b(Lorg/xbill/DNS/at;)V
    .locals 8
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v4, p0, Lg;->e:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 352
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v2

    .line 353
    .local v2, "token":Lorg/xbill/DNS/at$a;
    invoke-virtual {v2}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 354
    iget-object v4, v2, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-static {v4}, Lorg/xbill/DNS/au;->a(Ljava/lang/String;)I

    move-result v3

    .local v3, "type":I
    if-gez v3, :cond_1

    .line 355
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v2, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 357
    .end local v3    # "type":I
    :cond_0
    const/16 v3, 0xff

    .line 358
    .restart local v3    # "type":I
    :cond_1
    const/16 v4, 0xfe

    const-wide/16 v6, 0x0

    invoke-static {v0, v3, v4, v6, v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 359
    .local v1, "record":Lorg/xbill/DNS/Record;
    iget-object v4, p0, Lg;->a:Lorg/xbill/DNS/v;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 360
    invoke-virtual {p0, v1}, Lg;->a(Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method c(Lorg/xbill/DNS/at;)V
    .locals 4
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget v1, p0, Lg;->g:I

    iget-wide v2, p0, Lg;->f:J

    invoke-virtual {p0, p1, v1, v2, v3}, Lg;->a(Lorg/xbill/DNS/at;IJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 366
    .local v0, "record":Lorg/xbill/DNS/Record;
    iget-object v1, p0, Lg;->a:Lorg/xbill/DNS/v;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 367
    invoke-virtual {p0, v0}, Lg;->a(Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method d(Lorg/xbill/DNS/at;)V
    .locals 11
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/16 v6, 0xff

    .line 378
    iget-object v3, p0, Lg;->e:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 379
    .local v1, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v10

    .line 380
    .local v10, "token":Lorg/xbill/DNS/at$a;
    invoke-virtual {v10}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 381
    iget-object v9, v10, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    .line 382
    .local v9, "s":Ljava/lang/String;
    invoke-static {v9}, Lorg/xbill/DNS/g;->a(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 383
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v9

    .line 385
    :cond_0
    invoke-static {v9}, Lorg/xbill/DNS/au;->a(Ljava/lang/String;)I

    move-result v2

    .local v2, "type":I
    if-gez v2, :cond_1

    .line 386
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 387
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v10

    .line 388
    invoke-virtual {v10}, Lorg/xbill/DNS/at$a;->b()Z

    move-result v0

    .line 389
    .local v0, "iseol":Z
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->b()V

    .line 390
    if-nez v0, :cond_2

    .line 391
    const/16 v3, 0xfe

    iget-object v7, p0, Lg;->e:Lorg/xbill/DNS/Name;

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v8

    .line 399
    .end local v0    # "iseol":Z
    .end local v2    # "type":I
    .end local v9    # "s":Ljava/lang/String;
    .local v8, "record":Lorg/xbill/DNS/Record;
    :goto_0
    iget-object v3, p0, Lg;->a:Lorg/xbill/DNS/v;

    const/4 v4, 0x2

    invoke-virtual {v3, v8, v4}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 400
    invoke-virtual {p0, v8}, Lg;->a(Ljava/lang/Object;)V

    .line 401
    return-void

    .line 394
    .end local v8    # "record":Lorg/xbill/DNS/Record;
    .restart local v0    # "iseol":Z
    .restart local v2    # "type":I
    .restart local v9    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {v1, v2, v6, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v8

    .restart local v8    # "record":Lorg/xbill/DNS/Record;
    goto :goto_0

    .line 397
    .end local v0    # "iseol":Z
    .end local v2    # "type":I
    .end local v8    # "record":Lorg/xbill/DNS/Record;
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    invoke-static {v1, v6, v6, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v8

    .restart local v8    # "record":Lorg/xbill/DNS/Record;
    goto :goto_0
.end method

.method e(Lorg/xbill/DNS/at;)V
    .locals 4
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget v1, p0, Lg;->g:I

    iget-wide v2, p0, Lg;->f:J

    invoke-virtual {p0, p1, v1, v2, v3}, Lg;->a(Lorg/xbill/DNS/at;IJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 406
    .local v0, "record":Lorg/xbill/DNS/Record;
    iget-object v1, p0, Lg;->a:Lorg/xbill/DNS/v;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 407
    invoke-virtual {p0, v0}, Lg;->a(Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method f(Lorg/xbill/DNS/at;)V
    .locals 8
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "name":Lorg/xbill/DNS/Name;
    const/4 v5, 0x1

    .line 417
    .local v5, "type":I
    iget v0, p0, Lg;->g:I

    .line 419
    .local v0, "dclass":I
    iget-object v6, p0, Lg;->e:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v6}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 420
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v4

    .line 421
    .local v4, "token":Lorg/xbill/DNS/at$a;
    invoke-virtual {v4}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 422
    iget-object v6, v4, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-static {v6}, Lorg/xbill/DNS/au;->a(Ljava/lang/String;)I

    move-result v5

    .line 423
    if-gez v5, :cond_0

    .line 424
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid type"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 425
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v4

    .line 426
    invoke-virtual {v4}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 427
    iget-object v6, v4, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-static {v6}, Lorg/xbill/DNS/g;->a(Ljava/lang/String;)I

    move-result v0

    .line 428
    if-gez v0, :cond_1

    .line 429
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid class"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 433
    :cond_1
    invoke-static {v1, v5, v0}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v3

    .line 434
    .local v3, "rec":Lorg/xbill/DNS/Record;
    invoke-static {v3}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/v;

    move-result-object v2

    .line 435
    .local v2, "newQuery":Lorg/xbill/DNS/v;
    iget-object v6, p0, Lg;->c:Lorg/xbill/DNS/ad;

    if-nez v6, :cond_2

    .line 436
    new-instance v6, Lorg/xbill/DNS/am;

    iget-object v7, p0, Lg;->d:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/xbill/DNS/am;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lg;->c:Lorg/xbill/DNS/ad;

    .line 437
    :cond_2
    iget-object v6, p0, Lg;->c:Lorg/xbill/DNS/ad;

    invoke-interface {v6, v2}, Lorg/xbill/DNS/ad;->a(Lorg/xbill/DNS/v;)Lorg/xbill/DNS/v;

    move-result-object v6

    iput-object v6, p0, Lg;->b:Lorg/xbill/DNS/v;

    .line 438
    iget-object v6, p0, Lg;->b:Lorg/xbill/DNS/v;

    invoke-virtual {p0, v6}, Lg;->a(Ljava/lang/Object;)V

    .line 439
    return-void
.end method

.method g(Lorg/xbill/DNS/at;)V
    .locals 5
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "s":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lg;->h:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Error opening "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lg;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method h(Lorg/xbill/DNS/at;)Z
    .locals 14
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "expected":Ljava/lang/String;
    const/4 v11, 0x0

    .line 475
    .local v11, "value":Ljava/lang/String;
    const/4 v4, 0x1

    .line 478
    .local v4, "flag":Z
    iget-object v12, p0, Lg;->b:Lorg/xbill/DNS/v;

    if-nez v12, :cond_0

    .line 479
    const-string v12, "No response has been received"

    invoke-virtual {p0, v12}, Lg;->a(Ljava/lang/Object;)V

    .line 480
    const/4 v12, 0x1

    .line 535
    :goto_0
    return v12

    .line 482
    :cond_0
    const-string v12, "rcode"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 483
    iget-object v12, p0, Lg;->b:Lorg/xbill/DNS/v;

    invoke-virtual {v12}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v12

    invoke-virtual {v12}, Lorg/xbill/DNS/r;->d()I

    move-result v5

    .line 484
    .local v5, "rcode":I
    invoke-static {v2}, Lorg/xbill/DNS/ab;->a(Ljava/lang/String;)I

    move-result v12

    if-eq v5, v12, :cond_1

    .line 485
    invoke-static {v5}, Lorg/xbill/DNS/ab;->a(I)Ljava/lang/String;

    move-result-object v11

    .line 486
    const/4 v4, 0x0

    .line 524
    .end local v5    # "rcode":I
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 525
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Expected "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ", received "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lg;->a(Ljava/lang/Object;)V

    .line 528
    :goto_2
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v10

    .line 529
    .local v10, "token":Lorg/xbill/DNS/at$a;
    invoke-virtual {v10}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v12

    if-nez v12, :cond_b

    .line 533
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->b()V

    .end local v10    # "token":Lorg/xbill/DNS/at$a;
    :cond_2
    move v12, v4

    .line 535
    goto :goto_0

    .line 489
    :cond_3
    const-string v12, "serial"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 490
    iget-object v12, p0, Lg;->b:Lorg/xbill/DNS/v;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/xbill/DNS/v;->b(I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 491
    .local v0, "answers":[Lorg/xbill/DNS/Record;
    array-length v12, v0

    const/4 v13, 0x1

    if-lt v12, v13, :cond_4

    const/4 v12, 0x0

    aget-object v12, v0, v12

    instance-of v12, v12, Lorg/xbill/DNS/SOARecord;

    if-nez v12, :cond_5

    .line 492
    :cond_4
    const-string v12, "Invalid response (no SOA)"

    invoke-virtual {p0, v12}, Lg;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 494
    :cond_5
    const/4 v12, 0x0

    aget-object v7, v0, v12

    check-cast v7, Lorg/xbill/DNS/SOARecord;

    .line 495
    .local v7, "soa":Lorg/xbill/DNS/SOARecord;
    invoke-virtual {v7}, Lorg/xbill/DNS/SOARecord;->getSerial()J

    move-result-wide v8

    .line 496
    .local v8, "serial":J
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v12, v8, v12

    if-eqz v12, :cond_1

    .line 497
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 498
    const/4 v4, 0x0

    goto :goto_1

    .line 502
    .end local v0    # "answers":[Lorg/xbill/DNS/Record;
    .end local v7    # "soa":Lorg/xbill/DNS/SOARecord;
    .end local v8    # "serial":J
    :cond_6
    const-string v12, "tsig"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 503
    iget-object v12, p0, Lg;->b:Lorg/xbill/DNS/v;

    invoke-virtual {v12}, Lorg/xbill/DNS/v;->d()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 504
    iget-object v12, p0, Lg;->b:Lorg/xbill/DNS/v;

    invoke-virtual {v12}, Lorg/xbill/DNS/v;->e()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 505
    const-string v11, "ok"

    .line 511
    :goto_3
    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 512
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 507
    :cond_7
    const-string v11, "failed"

    goto :goto_3

    .line 510
    :cond_8
    const-string v11, "unsigned"

    goto :goto_3

    .line 514
    :cond_9
    invoke-static {v3}, Lorg/xbill/DNS/aj;->a(Ljava/lang/String;)I

    move-result v6

    .local v6, "section":I
    if-ltz v6, :cond_a

    .line 515
    iget-object v12, p0, Lg;->b:Lorg/xbill/DNS/v;

    invoke-virtual {v12}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v12

    invoke-virtual {v12, v6}, Lorg/xbill/DNS/r;->i(I)I

    move-result v1

    .line 516
    .local v1, "count":I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-eq v1, v12, :cond_1

    .line 517
    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 518
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 522
    .end local v1    # "count":I
    :cond_a
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Invalid assertion keyword: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lg;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 531
    .end local v6    # "section":I
    .restart local v10    # "token":Lorg/xbill/DNS/at$a;
    :cond_b
    iget-object v12, v10, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lg;->a(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method
