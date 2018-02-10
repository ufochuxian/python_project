.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/logging/HttpLoggingInterceptor$a;,
        Lokhttp3/logging/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Lokhttp3/logging/HttpLoggingInterceptor$a;

.field private volatile c:Lokhttp3/logging/HttpLoggingInterceptor$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$a;->a:Lokhttp3/logging/HttpLoggingInterceptor$a;

    invoke-direct {p0, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$a;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$a;)V
    .locals 1
    .param p1, "logger"    # Lokhttp3/logging/HttpLoggingInterceptor$a;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 119
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    .line 120
    return-void
.end method

.method private a(Lokhttp3/t;)Z
    .locals 2
    .param p1, "headers"    # Lokhttp3/t;

    .prologue
    .line 255
    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "contentEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "identity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lokhttp3/v$a;)Lokhttp3/ac;
    .locals 36
    .param p1, "chain"    # Lokhttp3/v$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v16, v0

    .line 140
    .local v16, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    invoke-interface/range {p1 .. p1}, Lokhttp3/v$a;->a()Lokhttp3/aa;

    move-result-object v21

    .line 141
    .local v21, "request":Lokhttp3/aa;
    sget-object v27, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 142
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lokhttp3/v$a;->a(Lokhttp3/aa;)Lokhttp3/ac;

    move-result-object v24

    .line 251
    :cond_0
    :goto_0
    return-object v24

    .line 145
    :cond_1
    sget-object v27, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    .line 146
    .local v17, "logBody":Z
    :goto_1
    if-nez v17, :cond_2

    sget-object v27, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_8

    :cond_2
    const/16 v18, 0x1

    .line 148
    .local v18, "logHeaders":Z
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->d()Lokhttp3/ab;

    move-result-object v22

    .line 149
    .local v22, "requestBody":Lokhttp3/ab;
    if-eqz v22, :cond_9

    const/4 v13, 0x1

    .line 151
    .local v13, "hasRequestBody":Z
    :goto_3
    invoke-interface/range {p1 .. p1}, Lokhttp3/v$a;->b()Lokhttp3/j;

    move-result-object v7

    .line 152
    .local v7, "connection":Lokhttp3/j;
    if-eqz v7, :cond_a

    invoke-interface {v7}, Lokhttp3/j;->d()Lokhttp3/Protocol;

    move-result-object v20

    .line 153
    .local v20, "protocol":Lokhttp3/Protocol;
    :goto_4
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "--> "

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v32, 0x20

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v32, 0x20

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 154
    .local v23, "requestStartMessage":Ljava/lang/String;
    if-nez v18, :cond_3

    if-eqz v13, :cond_3

    .line 155
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v32, " ("

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v22 .. v22}, Lokhttp3/ab;->contentLength()J

    move-result-wide v32

    move-object/from16 v0, v27

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v32, "-byte body)"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 157
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 159
    if-eqz v18, :cond_d

    .line 160
    if-eqz v13, :cond_5

    .line 163
    invoke-virtual/range {v22 .. v22}, Lokhttp3/ab;->contentType()Lokhttp3/w;

    move-result-object v27

    if-eqz v27, :cond_4

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Content-Type: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Lokhttp3/ab;->contentType()Lokhttp3/w;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 166
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lokhttp3/ab;->contentLength()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v27, v32, v34

    if-eqz v27, :cond_5

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Content-Length: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v22 .. v22}, Lokhttp3/ab;->contentLength()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 171
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->c()Lokhttp3/t;

    move-result-object v14

    .line 172
    .local v14, "headers":Lokhttp3/t;
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual {v14}, Lokhttp3/t;->a()I

    move-result v11

    .local v11, "count":I
    :goto_5
    if-ge v15, v11, :cond_b

    .line 173
    invoke-virtual {v14, v15}, Lokhttp3/t;->a(I)Ljava/lang/String;

    move-result-object v19

    .line 175
    .local v19, "name":Ljava/lang/String;
    const-string v27, "Content-Type"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string v27, "Content-Length"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ": "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14, v15}, Lokhttp3/t;->b(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 172
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 145
    .end local v7    # "connection":Lokhttp3/j;
    .end local v11    # "count":I
    .end local v13    # "hasRequestBody":Z
    .end local v14    # "headers":Lokhttp3/t;
    .end local v15    # "i":I
    .end local v17    # "logBody":Z
    .end local v18    # "logHeaders":Z
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "protocol":Lokhttp3/Protocol;
    .end local v22    # "requestBody":Lokhttp3/ab;
    .end local v23    # "requestStartMessage":Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 146
    .restart local v17    # "logBody":Z
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 149
    .restart local v18    # "logHeaders":Z
    .restart local v22    # "requestBody":Lokhttp3/ab;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 152
    .restart local v7    # "connection":Lokhttp3/j;
    .restart local v13    # "hasRequestBody":Z
    :cond_a
    sget-object v20, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    goto/16 :goto_4

    .line 180
    .restart local v11    # "count":I
    .restart local v14    # "headers":Lokhttp3/t;
    .restart local v15    # "i":I
    .restart local v20    # "protocol":Lokhttp3/Protocol;
    .restart local v23    # "requestStartMessage":Ljava/lang/String;
    :cond_b
    if-eqz v17, :cond_c

    if-nez v13, :cond_e

    .line 181
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "--> END "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 202
    .end local v11    # "count":I
    .end local v14    # "headers":Lokhttp3/t;
    .end local v15    # "i":I
    :cond_d
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    .line 203
    .local v28, "startNs":J
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lokhttp3/v$a;->a(Lokhttp3/aa;)Lokhttp3/ac;

    move-result-object v24

    .line 204
    .local v24, "response":Lokhttp3/ac;
    sget-object v27, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v32

    sub-long v32, v32, v28

    move-object/from16 v0, v27

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v30

    .line 206
    .local v30, "tookMs":J
    invoke-virtual/range {v24 .. v24}, Lokhttp3/ac;->h()Lokhttp3/ad;

    move-result-object v25

    .line 207
    .local v25, "responseBody":Lokhttp3/ad;
    invoke-virtual/range {v25 .. v25}, Lokhttp3/ad;->contentLength()J

    move-result-wide v8

    .line 208
    .local v8, "contentLength":J
    const-wide/16 v32, -0x1

    cmp-long v27, v8, v32

    if-eqz v27, :cond_11

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v32, "-byte"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "bodySize":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v32, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "<-- "

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Lokhttp3/ac;->c()I

    move-result v33

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v33, 0x20

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Lokhttp3/ac;->e()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v33, 0x20

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 210
    invoke-virtual/range {v24 .. v24}, Lokhttp3/ac;->a()Lokhttp3/aa;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lokhttp3/aa;->a()Lokhttp3/u;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v33, " ("

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v33, "ms"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    if-nez v18, :cond_12

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, ", "

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v34, " body"

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    :goto_8
    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v33, 0x29

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 209
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 213
    if-eqz v18, :cond_0

    .line 214
    invoke-virtual/range {v24 .. v24}, Lokhttp3/ac;->g()Lokhttp3/t;

    move-result-object v14

    .line 215
    .restart local v14    # "headers":Lokhttp3/t;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    invoke-virtual {v14}, Lokhttp3/t;->a()I

    move-result v11

    .restart local v11    # "count":I
    :goto_9
    if-ge v15, v11, :cond_13

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Lokhttp3/t;->a(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ": "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14, v15}, Lokhttp3/t;->b(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 215
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 182
    .end local v4    # "bodySize":Ljava/lang/String;
    .end local v8    # "contentLength":J
    .end local v24    # "response":Lokhttp3/ac;
    .end local v25    # "responseBody":Lokhttp3/ad;
    .end local v28    # "startNs":J
    .end local v30    # "tookMs":J
    :cond_e
    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->c()Lokhttp3/t;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->a(Lokhttp3/t;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "--> END "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " (encoded body omitted)"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 185
    :cond_f
    new-instance v5, Lokio/c;

    invoke-direct {v5}, Lokio/c;-><init>()V

    .line 186
    .local v5, "buffer":Lokio/c;
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lokhttp3/ab;->writeTo(Lokio/d;)V

    .line 188
    sget-object v6, Lokhttp3/logging/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    .line 189
    .local v6, "charset":Ljava/nio/charset/Charset;
    invoke-virtual/range {v22 .. v22}, Lokhttp3/ab;->contentType()Lokhttp3/w;

    move-result-object v10

    .line 190
    .local v10, "contentType":Lokhttp3/w;
    if-eqz v10, :cond_10

    .line 191
    sget-object v27, Lokhttp3/logging/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lokhttp3/w;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 194
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    const-string v32, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    invoke-virtual {v5, v6}, Lokio/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "--> END "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v21 .. v21}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 198
    invoke-virtual/range {v22 .. v22}, Lokhttp3/ab;->contentLength()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-byte body)"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 197
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 208
    .end local v5    # "buffer":Lokio/c;
    .end local v6    # "charset":Ljava/nio/charset/Charset;
    .end local v10    # "contentType":Lokhttp3/w;
    .end local v11    # "count":I
    .end local v14    # "headers":Lokhttp3/t;
    .end local v15    # "i":I
    .restart local v8    # "contentLength":J
    .restart local v24    # "response":Lokhttp3/ac;
    .restart local v25    # "responseBody":Lokhttp3/ad;
    .restart local v28    # "startNs":J
    .restart local v30    # "tookMs":J
    :cond_11
    const-string v4, "unknown-length"

    goto/16 :goto_7

    .line 210
    .restart local v4    # "bodySize":Ljava/lang/String;
    :cond_12
    const-string v27, ""

    goto/16 :goto_8

    .line 219
    .restart local v11    # "count":I
    .restart local v14    # "headers":Lokhttp3/t;
    .restart local v15    # "i":I
    :cond_13
    if-eqz v17, :cond_14

    invoke-static/range {v24 .. v24}, Lokhttp3/internal/http/HttpEngine;->hasBody(Lokhttp3/Response;)Z

    move-result v27

    if-nez v27, :cond_15

    .line 220
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    const-string v32, "<-- END HTTP"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_15
    invoke-virtual/range {v24 .. v24}, Lokhttp3/ac;->g()Lokhttp3/t;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->a(Lokhttp3/t;)Z

    move-result v27

    if-eqz v27, :cond_16

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    const-string v32, "<-- END HTTP (encoded body omitted)"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_16
    invoke-virtual/range {v25 .. v25}, Lokhttp3/ad;->source()Lokio/e;

    move-result-object v26

    .line 225
    .local v26, "source":Lokio/e;
    const-wide v32, 0x7fffffffffffffffL

    move-object/from16 v0, v26

    move-wide/from16 v1, v32

    invoke-interface {v0, v1, v2}, Lokio/e;->b(J)Z

    .line 226
    invoke-interface/range {v26 .. v26}, Lokio/e;->b()Lokio/c;

    move-result-object v5

    .line 228
    .restart local v5    # "buffer":Lokio/c;
    sget-object v6, Lokhttp3/logging/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    .line 229
    .restart local v6    # "charset":Ljava/nio/charset/Charset;
    invoke-virtual/range {v25 .. v25}, Lokhttp3/ad;->contentType()Lokhttp3/w;

    move-result-object v10

    .line 230
    .restart local v10    # "contentType":Lokhttp3/w;
    if-eqz v10, :cond_17

    .line 232
    :try_start_0
    sget-object v27, Lokhttp3/logging/HttpLoggingInterceptor;->a:Ljava/nio/charset/Charset;

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lokhttp3/w;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 242
    :cond_17
    const-wide/16 v32, 0x0

    cmp-long v27, v8, v32

    if-eqz v27, :cond_18

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    const-string v32, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    invoke-virtual {v5}, Lokio/c;->C()Lokio/c;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lokio/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 247
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "<-- END HTTP ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v5}, Lokio/c;->a()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-byte body)"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :catch_0
    move-exception v12

    .line 234
    .local v12, "e":Ljava/nio/charset/UnsupportedCharsetException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    const-string v32, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    const-string v32, "Couldn\'t decode the response body; charset is likely malformed."

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->b:Lokhttp3/logging/HttpLoggingInterceptor$a;

    move-object/from16 v27, v0

    const-string v32, "<-- END HTTP"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public a(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 2
    .param p1, "level"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .prologue
    .line 128
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level == null. Use Level.NONE instead."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->c:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 130
    return-object p0
.end method
