.class public Lorg/xbill/DNS/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/xbill/DNS/Name;

.field private b:Ljava/io/File;

.field private c:Lorg/xbill/DNS/Record;

.field private d:J

.field private e:Lorg/xbill/DNS/u;

.field private f:Lorg/xbill/DNS/at;

.field private g:I

.field private h:I

.field private i:J

.field private j:Z

.field private k:Lorg/xbill/DNS/p;

.field private l:Ljava/util/List;

.field private m:Z


# direct methods
.method constructor <init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .param p3, "initialTTL"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    .line 22
    iput-object v0, p0, Lorg/xbill/DNS/u;->e:Lorg/xbill/DNS/u;

    .line 34
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/u;->b:Ljava/io/File;

    .line 38
    new-instance v0, Lorg/xbill/DNS/at;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/at;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    .line 39
    iput-object p2, p0, Lorg/xbill/DNS/u;->a:Lorg/xbill/DNS/Name;

    .line 40
    iput-wide p3, p0, Lorg/xbill/DNS/u;->d:J

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 108
    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/xbill/DNS/u;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 99
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/xbill/DNS/u;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .param p3, "ttl"    # J

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    .line 22
    iput-object v0, p0, Lorg/xbill/DNS/u;->e:Lorg/xbill/DNS/u;

    .line 84
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p2}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 87
    :cond_0
    new-instance v0, Lorg/xbill/DNS/at;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/at;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    .line 88
    iput-object p2, p0, Lorg/xbill/DNS/u;->a:Lorg/xbill/DNS/Name;

    .line 89
    iput-wide p3, p0, Lorg/xbill/DNS/u;->d:J

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/xbill/DNS/u;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, p2, v2, v3}, Lorg/xbill/DNS/u;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;J)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .param p3, "ttl"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/xbill/DNS/u;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    move-wide v2, v4

    .line 185
    :cond_0
    :goto_0
    return-wide v2

    .line 179
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 180
    .local v2, "l":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_2

    const-wide v6, 0xffffffffL

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    :cond_2
    move-wide v2, v4

    .line 181
    goto :goto_0

    .line 184
    .end local v2    # "l":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, v4

    .line 185
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    iget-object v1, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method private d()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    .line 124
    const/4 v2, 0x0

    .line 133
    .local v2, "seen_class":Z
    const/4 v2, 0x0

    .line 134
    iget-object v3, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v3}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/g;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/xbill/DNS/u;->h:I

    if-ltz v3, :cond_0

    .line 136
    iget-object v3, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v3}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v1

    .line 137
    const/4 v2, 0x1

    .line 140
    :cond_0
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/xbill/DNS/u;->i:J

    .line 142
    :try_start_0
    invoke-static {v1}, Lorg/xbill/DNS/ar;->a(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xbill/DNS/u;->i:J

    .line 143
    iget-object v3, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v3}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 153
    invoke-static {v1}, Lorg/xbill/DNS/g;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/xbill/DNS/u;->h:I

    if-ltz v3, :cond_4

    .line 154
    iget-object v3, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v3}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_2
    :goto_1
    invoke-static {v1}, Lorg/xbill/DNS/au;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/xbill/DNS/u;->g:I

    if-gez v3, :cond_5

    .line 161
    iget-object v3, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid type \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-wide v4, p0, Lorg/xbill/DNS/u;->d:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 147
    iget-wide v4, p0, Lorg/xbill/DNS/u;->d:J

    iput-wide v4, p0, Lorg/xbill/DNS/u;->i:J

    goto :goto_0

    .line 148
    :cond_3
    iget-object v3, p0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xbill/DNS/u;->i:J

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    iput v8, p0, Lorg/xbill/DNS/u;->h:I

    goto :goto_1

    .line 166
    :cond_5
    iget-wide v4, p0, Lorg/xbill/DNS/u;->i:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_7

    .line 167
    iget v3, p0, Lorg/xbill/DNS/u;->g:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_6

    .line 168
    iget-object v3, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    const-string v4, "missing TTL"

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 169
    :cond_6
    iput-boolean v8, p0, Lorg/xbill/DNS/u;->j:Z

    .line 170
    iput-wide v6, p0, Lorg/xbill/DNS/u;->i:J

    .line 172
    :cond_7
    return-void
.end method

.method private e()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v3}, Lorg/xbill/DNS/at;->d()Ljava/lang/String;

    move-result-object v18

    .line 197
    .local v18, "s":Ljava/lang/String;
    const-string v3, "-"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 198
    .local v17, "n":I
    if-gez v17, :cond_0

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Invalid $GENERATE range specifier: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 200
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 201
    .local v19, "startstr":Ljava/lang/String;
    add-int/lit8 v3, v17, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "endstr":Ljava/lang/String;
    const/16 v20, 0x0

    .line 203
    .local v20, "stepstr":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 204
    if-ltz v17, :cond_1

    .line 205
    add-int/lit8 v3, v17, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 206
    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 208
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/xbill/DNS/u;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 209
    .local v4, "start":J
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/xbill/DNS/u;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 211
    .local v6, "end":J
    if-eqz v20, :cond_3

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/xbill/DNS/u;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 215
    .local v8, "step":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    if-ltz v3, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-ltz v3, :cond_2

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v3, v8, v12

    if-gtz v3, :cond_4

    .line 216
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Invalid $GENERATE range specifier: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 214
    .end local v8    # "step":J
    :cond_3
    const-wide/16 v8, 0x1

    .restart local v8    # "step":J
    goto :goto_0

    .line 219
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v3}, Lorg/xbill/DNS/at;->d()Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, "nameSpec":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/xbill/DNS/u;->d()V

    .line 224
    move-object/from16 v0, p0

    iget v3, v0, Lorg/xbill/DNS/u;->g:I

    invoke-static {v3}, Lorg/xbill/DNS/p;->a(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "$GENERATE does not support "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lorg/xbill/DNS/u;->g:I

    invoke-static {v12}, Lorg/xbill/DNS/au;->b(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " records"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 229
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v3}, Lorg/xbill/DNS/at;->d()Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, "rdataSpec":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v3}, Lorg/xbill/DNS/at;->k()V

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v3}, Lorg/xbill/DNS/at;->b()V

    .line 236
    new-instance v3, Lorg/xbill/DNS/p;

    move-object/from16 v0, p0

    iget v11, v0, Lorg/xbill/DNS/u;->g:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/xbill/DNS/u;->h:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/xbill/DNS/u;->i:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/u;->a:Lorg/xbill/DNS/Name;

    move-object/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lorg/xbill/DNS/p;-><init>(JJJLjava/lang/String;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/xbill/DNS/u;->k:Lorg/xbill/DNS/p;

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/u;->l:Ljava/util/List;

    if-nez v3, :cond_6

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/xbill/DNS/u;->l:Ljava/util/List;

    .line 241
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/u;->l:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/xbill/DNS/u;->k:Lorg/xbill/DNS/p;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method private f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v0}, Lorg/xbill/DNS/at;->k()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/u;->k:Lorg/xbill/DNS/p;

    .line 250
    return-void
.end method

.method private g()Lorg/xbill/DNS/Record;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/u;->k:Lorg/xbill/DNS/p;

    invoke-virtual {v1}, Lorg/xbill/DNS/p;->a()Lorg/xbill/DNS/Record;
    :try_end_0
    .catch Lorg/xbill/DNS/at$b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lorg/xbill/DNS/at$b;
    iget-object v1, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Parsing $GENERATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xbill/DNS/at$b;->getBaseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 260
    .end local v0    # "e":Lorg/xbill/DNS/at$b;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    iget-object v1, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Parsing $GENERATE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public a()Lorg/xbill/DNS/Record;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->e:Lorg/xbill/DNS/u;

    if-eqz v6, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->e:Lorg/xbill/DNS/u;

    invoke-virtual {v6}, Lorg/xbill/DNS/u;->b()Lorg/xbill/DNS/Record;

    move-result-object v16

    .line 279
    .local v16, "rec":Lorg/xbill/DNS/Record;
    if-eqz v16, :cond_1

    .line 373
    .end local v16    # "rec":Lorg/xbill/DNS/Record;
    :cond_0
    :goto_0
    return-object v16

    .line 281
    .restart local v16    # "rec":Lorg/xbill/DNS/Record;
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/xbill/DNS/u;->e:Lorg/xbill/DNS/u;

    .line 283
    .end local v16    # "rec":Lorg/xbill/DNS/Record;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->k:Lorg/xbill/DNS/p;

    if-eqz v6, :cond_3

    .line 284
    invoke-direct/range {p0 .. p0}, Lorg/xbill/DNS/u;->g()Lorg/xbill/DNS/Record;

    move-result-object v16

    .line 285
    .restart local v16    # "rec":Lorg/xbill/DNS/Record;
    if-nez v16, :cond_0

    .line 287
    invoke-direct/range {p0 .. p0}, Lorg/xbill/DNS/u;->f()V

    .line 292
    .end local v16    # "rec":Lorg/xbill/DNS/Record;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/xbill/DNS/at;->a(ZZ)Lorg/xbill/DNS/at$a;

    move-result-object v18

    .line 293
    .local v18, "token":Lorg/xbill/DNS/at$a;
    move-object/from16 v0, v18

    iget v6, v0, Lorg/xbill/DNS/at$a;->a:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 294
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v6}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v14

    .line 295
    .local v14, "next":Lorg/xbill/DNS/at$a;
    iget v6, v14, Lorg/xbill/DNS/at$a;->a:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 297
    iget v6, v14, Lorg/xbill/DNS/at$a;->a:I

    if-nez v6, :cond_4

    .line 298
    const/16 v16, 0x0

    goto :goto_0

    .line 300
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v6}, Lorg/xbill/DNS/at;->b()V

    .line 301
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    if-nez v6, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    const-string v7, "no owner"

    invoke-virtual {v6, v7}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v6

    throw v6

    .line 303
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    .line 364
    .end local v14    # "next":Lorg/xbill/DNS/at$a;
    .local v5, "name":Lorg/xbill/DNS/Name;
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/xbill/DNS/u;->d()V

    .line 365
    move-object/from16 v0, p0

    iget v6, v0, Lorg/xbill/DNS/u;->g:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/xbill/DNS/u;->h:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/xbill/DNS/u;->i:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/xbill/DNS/u;->a:Lorg/xbill/DNS/Name;

    invoke-static/range {v5 .. v11}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    .line 367
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/xbill/DNS/u;->j:Z

    if-eqz v6, :cond_7

    .line 368
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    check-cast v6, Lorg/xbill/DNS/SOARecord;

    invoke-virtual {v6}, Lorg/xbill/DNS/SOARecord;->getMinimum()J

    move-result-wide v20

    .line 369
    .local v20, "ttl":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Lorg/xbill/DNS/Record;->setTTL(J)V

    .line 370
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/xbill/DNS/u;->d:J

    .line 371
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/xbill/DNS/u;->j:Z

    .line 373
    .end local v20    # "ttl":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    move-object/from16 v16, v0

    goto/16 :goto_0

    .line 305
    .end local v5    # "name":Lorg/xbill/DNS/Name;
    :cond_8
    move-object/from16 v0, v18

    iget v6, v0, Lorg/xbill/DNS/at$a;->a:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 307
    move-object/from16 v0, v18

    iget v6, v0, Lorg/xbill/DNS/at$a;->a:I

    if-nez v6, :cond_9

    .line 308
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 309
    :cond_9
    move-object/from16 v0, v18

    iget-object v6, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x24

    if-ne v6, v7, :cond_12

    .line 310
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 312
    .local v17, "s":Ljava/lang/String;
    const-string v6, "$ORIGIN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 313
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    sget-object v7, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v6, v7}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/xbill/DNS/u;->a:Lorg/xbill/DNS/Name;

    .line 314
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v6}, Lorg/xbill/DNS/at;->k()V

    goto/16 :goto_1

    .line 316
    :cond_a
    const-string v6, "$TTL"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 317
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v6}, Lorg/xbill/DNS/at;->i()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/xbill/DNS/u;->d:J

    .line 318
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v6}, Lorg/xbill/DNS/at;->k()V

    goto/16 :goto_1

    .line 320
    :cond_b
    const-string v6, "$INCLUDE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 321
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v6}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->b:Ljava/io/File;

    if-eqz v6, :cond_d

    .line 324
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->b:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v15

    .line 325
    .local v15, "parent":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v15    # "parent":Ljava/lang/String;
    .local v13, "newfile":Ljava/io/File;
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/xbill/DNS/u;->a:Lorg/xbill/DNS/Name;

    .line 330
    .local v12, "incorigin":Lorg/xbill/DNS/Name;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v6}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v18

    .line 331
    invoke-virtual/range {v18 .. v18}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 332
    move-object/from16 v0, v18

    iget-object v6, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    sget-object v7, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/xbill/DNS/u;->a(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v12

    .line 334
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v6}, Lorg/xbill/DNS/at;->k()V

    .line 336
    :cond_c
    new-instance v6, Lorg/xbill/DNS/u;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/xbill/DNS/u;->d:J

    invoke-direct {v6, v13, v12, v8, v9}, Lorg/xbill/DNS/u;-><init>(Ljava/io/File;Lorg/xbill/DNS/Name;J)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/xbill/DNS/u;->e:Lorg/xbill/DNS/u;

    .line 342
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/u;->b()Lorg/xbill/DNS/Record;

    move-result-object v16

    goto/16 :goto_0

    .line 327
    .end local v12    # "incorigin":Lorg/xbill/DNS/Name;
    .end local v13    # "newfile":Ljava/io/File;
    :cond_d
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v13    # "newfile":Ljava/io/File;
    goto :goto_3

    .line 343
    .end local v4    # "filename":Ljava/lang/String;
    .end local v13    # "newfile":Ljava/io/File;
    :cond_e
    const-string v6, "$GENERATE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 344
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->k:Lorg/xbill/DNS/p;

    if-eqz v6, :cond_f

    .line 345
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "cannot nest $GENERATE"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 347
    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/xbill/DNS/u;->e()V

    .line 348
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/xbill/DNS/u;->m:Z

    if-eqz v6, :cond_10

    .line 349
    invoke-direct/range {p0 .. p0}, Lorg/xbill/DNS/u;->f()V

    goto/16 :goto_1

    .line 352
    :cond_10
    invoke-direct/range {p0 .. p0}, Lorg/xbill/DNS/u;->g()Lorg/xbill/DNS/Record;

    move-result-object v16

    goto/16 :goto_0

    .line 354
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Invalid directive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v6

    throw v6

    .line 357
    .end local v17    # "s":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 358
    .restart local v17    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->a:Lorg/xbill/DNS/Name;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6}, Lorg/xbill/DNS/u;->a(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v5

    .line 359
    .restart local v5    # "name":Lorg/xbill/DNS/Name;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 360
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/u;->c:Lorg/xbill/DNS/Record;

    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    goto/16 :goto_2
.end method

.method public a(Z)V
    .locals 1
    .param p1, "wantExpand"    # Z

    .prologue
    .line 406
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/xbill/DNS/u;->m:Z

    .line 407
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lorg/xbill/DNS/Record;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, "rec":Lorg/xbill/DNS/Record;
    :try_start_0
    invoke-virtual {p0}, Lorg/xbill/DNS/u;->a()Lorg/xbill/DNS/Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 391
    if-nez v0, :cond_0

    .line 392
    iget-object v1, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v1}, Lorg/xbill/DNS/at;->o()V

    .line 395
    :cond_0
    return-object v0

    .line 391
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 392
    iget-object v2, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v2}, Lorg/xbill/DNS/at;->o()V

    :cond_1
    throw v1
.end method

.method public c()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/xbill/DNS/u;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lorg/xbill/DNS/u;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lorg/xbill/DNS/u;->f:Lorg/xbill/DNS/at;

    invoke-virtual {v0}, Lorg/xbill/DNS/at;->o()V

    .line 426
    :cond_0
    return-void
.end method
