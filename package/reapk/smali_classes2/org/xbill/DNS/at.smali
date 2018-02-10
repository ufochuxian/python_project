.class public Lorg/xbill/DNS/at;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/at$1;,
        Lorg/xbill/DNS/at$b;,
        Lorg/xbill/DNS/at$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private i:Ljava/io/PushbackInputStream;

.field private j:Z

.field private k:I

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Lorg/xbill/DNS/at$a;

.field private o:Ljava/lang/StringBuffer;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, " \t\n;()\""

    sput-object v0, Lorg/xbill/DNS/at;->g:Ljava/lang/String;

    .line 35
    const-string v0, "\""

    sput-object v0, Lorg/xbill/DNS/at;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/at;-><init>(Ljava/io/InputStream;)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/at;->p:Z

    .line 177
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/at;->q:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    instance-of v1, p1, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_0

    .line 148
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object p1, v0

    .line 149
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/xbill/DNS/at;->i:Ljava/io/PushbackInputStream;

    .line 150
    iput-boolean v3, p0, Lorg/xbill/DNS/at;->j:Z

    .line 151
    iput v3, p0, Lorg/xbill/DNS/at;->k:I

    .line 152
    iput-boolean v3, p0, Lorg/xbill/DNS/at;->l:Z

    .line 153
    sget-object v1, Lorg/xbill/DNS/at;->g:Ljava/lang/String;

    iput-object v1, p0, Lorg/xbill/DNS/at;->m:Ljava/lang/String;

    .line 154
    new-instance v1, Lorg/xbill/DNS/at$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/xbill/DNS/at$a;-><init>(Lorg/xbill/DNS/at$1;)V

    iput-object v1, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    .line 155
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    .line 156
    const-string v1, "<none>"

    iput-object v1, p0, Lorg/xbill/DNS/at;->q:Ljava/lang/String;

    .line 157
    const/4 v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/at;->r:I

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/at;-><init>(Ljava/io/InputStream;)V

    .line 167
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v0

    .line 382
    .local v0, "next":Lorg/xbill/DNS/at$a;
    iget v1, v0, Lorg/xbill/DNS/at$a;->a:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 383
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 384
    :cond_0
    iget-object v1, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    return-object v1
.end method

.method private c(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/at;->i:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 199
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 200
    iget v0, p0, Lorg/xbill/DNS/at;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/at;->r:I

    goto :goto_0
.end method

.method private p()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 182
    iget-object v2, p0, Lorg/xbill/DNS/at;->i:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 183
    .local v0, "c":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 184
    iget-object v2, p0, Lorg/xbill/DNS/at;->i:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 185
    .local v1, "next":I
    if-eq v1, v3, :cond_0

    .line 186
    iget-object v2, p0, Lorg/xbill/DNS/at;->i:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 187
    :cond_0
    const/16 v0, 0xa

    .line 189
    .end local v1    # "next":I
    :cond_1
    if-ne v0, v3, :cond_2

    .line 190
    iget v2, p0, Lorg/xbill/DNS/at;->r:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/xbill/DNS/at;->r:I

    .line 191
    :cond_2
    return v0
.end method

.method private q()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, "skipped":I
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/at;->p()I

    move-result v0

    .line 208
    .local v0, "c":I
    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    .line 209
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    iget v2, p0, Lorg/xbill/DNS/at;->k:I

    if-gtz v2, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0, v0}, Lorg/xbill/DNS/at;->c(I)V

    .line 211
    return v1

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 215
    goto :goto_0
.end method

.method private r()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 220
    iget v0, p0, Lorg/xbill/DNS/at;->k:I

    if-lez v0, :cond_0

    .line 221
    const-string v0, "unbalanced parentheses"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 222
    :cond_0
    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 583
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v1

    .line 584
    .local v1, "t":Lorg/xbill/DNS/at$a;
    invoke-virtual {v1}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 590
    invoke-virtual {p0}, Lorg/xbill/DNS/at;->b()V

    .line 591
    if-nez v0, :cond_2

    .line 592
    const/4 v2, 0x0

    .line 593
    :goto_1
    return-object v2

    .line 586
    :cond_0
    if-nez v0, :cond_1

    .line 587
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 588
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    iget-object v2, v1, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public a(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 4
    .param p1, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    const-string v3, "a name"

    invoke-direct {p0, v3}, Lorg/xbill/DNS/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "next":Ljava/lang/String;
    :try_start_0
    invoke-static {v2, p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 516
    .local v1, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    new-instance v3, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v3, v1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v3
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v1    # "name":Lorg/xbill/DNS/Name;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 518
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    .restart local v1    # "name":Lorg/xbill/DNS/Name;
    :cond_0
    return-object v1
.end method

.method public a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 710
    new-instance v0, Lorg/xbill/DNS/at$b;

    iget-object v1, p0, Lorg/xbill/DNS/at;->q:Ljava/lang/String;

    iget v2, p0, Lorg/xbill/DNS/at;->r:I

    invoke-direct {v0, v1, v2, p1}, Lorg/xbill/DNS/at$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public a()Lorg/xbill/DNS/at$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0, v0}, Lorg/xbill/DNS/at;->a(ZZ)Lorg/xbill/DNS/at$a;

    move-result-object v0

    return-object v0
.end method

.method public a(ZZ)Lorg/xbill/DNS/at$a;
    .locals 10
    .param p1, "wantWhitespace"    # Z
    .param p2, "wantComment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 238
    iget-boolean v3, p0, Lorg/xbill/DNS/at;->j:Z

    if-eqz v3, :cond_3

    .line 239
    iput-boolean v5, p0, Lorg/xbill/DNS/at;->j:Z

    .line 240
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    iget v3, v3, Lorg/xbill/DNS/at$a;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 241
    if-eqz p1, :cond_3

    .line 242
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    .line 335
    :goto_0
    return-object v3

    .line 243
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    iget v3, v3, Lorg/xbill/DNS/at$a;->a:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 244
    if-eqz p2, :cond_3

    .line 245
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    goto :goto_0

    .line 247
    :cond_1
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    iget v3, v3, Lorg/xbill/DNS/at$a;->a:I

    if-ne v3, v8, :cond_2

    .line 248
    iget v3, p0, Lorg/xbill/DNS/at;->r:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/xbill/DNS/at;->r:I

    .line 249
    :cond_2
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    goto :goto_0

    .line 252
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/at;->q()I

    move-result v1

    .line 253
    .local v1, "skipped":I
    if-lez v1, :cond_4

    if-eqz p1, :cond_4

    .line 254
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    const/4 v4, 0x2

    invoke-static {v3, v4, v7}, Lorg/xbill/DNS/at$a;->a(Lorg/xbill/DNS/at$a;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;

    move-result-object v3

    goto :goto_0

    .line 255
    :cond_4
    const/4 v2, 0x3

    .line 256
    .local v2, "type":I
    iget-object v3, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 258
    :goto_1
    invoke-direct {p0}, Lorg/xbill/DNS/at;->p()I

    move-result v0

    .line 259
    .local v0, "c":I
    if-eq v0, v6, :cond_5

    iget-object v3, p0, Lorg/xbill/DNS/at;->m:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_16

    .line 260
    :cond_5
    if-ne v0, v6, :cond_8

    .line 261
    iget-boolean v3, p0, Lorg/xbill/DNS/at;->l:Z

    if-eqz v3, :cond_6

    .line 262
    const-string v3, "EOF in quoted string"

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 264
    :cond_6
    iget-object v3, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 265
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    invoke-static {v3, v5, v7}, Lorg/xbill/DNS/at$a;->a(Lorg/xbill/DNS/at$a;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;

    move-result-object v3

    goto :goto_0

    .line 267
    :cond_7
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    iget-object v4, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    invoke-static {v3, v2, v4}, Lorg/xbill/DNS/at$a;->a(Lorg/xbill/DNS/at$a;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;

    move-result-object v3

    goto :goto_0

    .line 269
    :cond_8
    iget-object v3, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_15

    if-eq v2, v9, :cond_15

    .line 270
    const/16 v3, 0x28

    if-ne v0, v3, :cond_9

    .line 271
    iget v3, p0, Lorg/xbill/DNS/at;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/xbill/DNS/at;->k:I

    .line 272
    invoke-direct {p0}, Lorg/xbill/DNS/at;->q()I

    goto :goto_1

    .line 274
    :cond_9
    const/16 v3, 0x29

    if-ne v0, v3, :cond_b

    .line 275
    iget v3, p0, Lorg/xbill/DNS/at;->k:I

    if-gtz v3, :cond_a

    .line 276
    const-string v3, "invalid close parenthesis"

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 279
    :cond_a
    iget v3, p0, Lorg/xbill/DNS/at;->k:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/xbill/DNS/at;->k:I

    .line 280
    invoke-direct {p0}, Lorg/xbill/DNS/at;->q()I

    goto :goto_1

    .line 282
    :cond_b
    const/16 v3, 0x22

    if-ne v0, v3, :cond_d

    .line 283
    iget-boolean v3, p0, Lorg/xbill/DNS/at;->l:Z

    if-nez v3, :cond_c

    .line 284
    iput-boolean v8, p0, Lorg/xbill/DNS/at;->l:Z

    .line 285
    sget-object v3, Lorg/xbill/DNS/at;->h:Ljava/lang/String;

    iput-object v3, p0, Lorg/xbill/DNS/at;->m:Ljava/lang/String;

    .line 286
    const/4 v2, 0x4

    goto :goto_1

    .line 288
    :cond_c
    iput-boolean v5, p0, Lorg/xbill/DNS/at;->l:Z

    .line 289
    sget-object v3, Lorg/xbill/DNS/at;->g:Ljava/lang/String;

    iput-object v3, p0, Lorg/xbill/DNS/at;->m:Ljava/lang/String;

    .line 290
    invoke-direct {p0}, Lorg/xbill/DNS/at;->q()I

    goto :goto_1

    .line 293
    :cond_d
    const/16 v3, 0xa

    if-ne v0, v3, :cond_e

    .line 294
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    invoke-static {v3, v8, v7}, Lorg/xbill/DNS/at$a;->a(Lorg/xbill/DNS/at$a;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;

    move-result-object v3

    goto/16 :goto_0

    .line 295
    :cond_e
    const/16 v3, 0x3b

    if-ne v0, v3, :cond_14

    .line 297
    :goto_2
    invoke-direct {p0}, Lorg/xbill/DNS/at;->p()I

    move-result v0

    .line 298
    const/16 v3, 0xa

    if-eq v0, v3, :cond_f

    if-ne v0, v6, :cond_10

    .line 302
    :cond_f
    if-eqz p2, :cond_11

    .line 303
    invoke-direct {p0, v0}, Lorg/xbill/DNS/at;->c(I)V

    .line 304
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    const/4 v4, 0x5

    iget-object v5, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    invoke-static {v3, v4, v5}, Lorg/xbill/DNS/at$a;->a(Lorg/xbill/DNS/at$a;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;

    move-result-object v3

    goto/16 :goto_0

    .line 300
    :cond_10
    iget-object v3, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 305
    :cond_11
    if-ne v0, v6, :cond_12

    if-eq v2, v9, :cond_12

    .line 308
    invoke-direct {p0}, Lorg/xbill/DNS/at;->r()V

    .line 309
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    invoke-static {v3, v5, v7}, Lorg/xbill/DNS/at$a;->a(Lorg/xbill/DNS/at$a;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;

    move-result-object v3

    goto/16 :goto_0

    .line 310
    :cond_12
    iget v3, p0, Lorg/xbill/DNS/at;->k:I

    if-lez v3, :cond_13

    .line 311
    invoke-direct {p0}, Lorg/xbill/DNS/at;->q()I

    .line 312
    iget-object v3, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 315
    :cond_13
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    invoke-static {v3, v8, v7}, Lorg/xbill/DNS/at$a;->a(Lorg/xbill/DNS/at$a;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;

    move-result-object v3

    goto/16 :goto_0

    .line 317
    :cond_14
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 319
    :cond_15
    invoke-direct {p0, v0}, Lorg/xbill/DNS/at;->c(I)V

    .line 331
    iget-object v3, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_1a

    if-eq v2, v9, :cond_1a

    .line 332
    invoke-direct {p0}, Lorg/xbill/DNS/at;->r()V

    .line 333
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    invoke-static {v3, v5, v7}, Lorg/xbill/DNS/at$a;->a(Lorg/xbill/DNS/at$a;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;

    move-result-object v3

    goto/16 :goto_0

    .line 321
    :cond_16
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_19

    .line 322
    invoke-direct {p0}, Lorg/xbill/DNS/at;->p()I

    move-result v0

    .line 323
    if-ne v0, v6, :cond_17

    .line 324
    const-string v3, "unterminated escape sequence"

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 325
    :cond_17
    iget-object v3, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    :cond_18
    iget-object v3, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 326
    :cond_19
    iget-boolean v3, p0, Lorg/xbill/DNS/at;->l:Z

    if-eqz v3, :cond_18

    const/16 v3, 0xa

    if-ne v0, v3, :cond_18

    .line 327
    const-string v3, "newline in quoted string"

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 335
    :cond_1a
    iget-object v3, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    iget-object v4, p0, Lorg/xbill/DNS/at;->o:Ljava/lang/StringBuffer;

    invoke-static {v3, v2, v4}, Lorg/xbill/DNS/at$a;->a(Lorg/xbill/DNS/at$a;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/at$a;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public a(I)[B
    .locals 4
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    const-string v2, "an address"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "next":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/xbill/DNS/a;->b(Ljava/lang/String;I)[B

    move-result-object v0

    .line 539
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 540
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 541
    :cond_0
    return-object v0
.end method

.method public a(Lorg/xbill/DNS/b/c;)[B
    .locals 3
    .param p1, "b32"    # Lorg/xbill/DNS/b/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    const-string v2, "a base32 string"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "next":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/b/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 698
    .local v0, "array":[B
    if-nez v0, :cond_0

    .line 699
    const-string v2, "invalid base32 encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 700
    :cond_0
    return-object v0
.end method

.method public a(Z)[B
    .locals 3
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-direct {p0}, Lorg/xbill/DNS/at;->s()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 610
    if-eqz p1, :cond_0

    .line 611
    const-string v2, "expected base64 encoded string"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 613
    :cond_0
    const/4 v0, 0x0

    .line 618
    :cond_1
    return-object v0

    .line 615
    :cond_2
    invoke-static {v1}, Lorg/xbill/DNS/b/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 616
    .local v0, "array":[B
    if-nez v0, :cond_1

    .line 617
    const-string v2, "invalid base64 encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public b(I)Ljava/net/InetAddress;
    .locals 3
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    const-string v2, "an address"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "next":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, p1}, Lorg/xbill/DNS/a;->c(Ljava/lang/String;I)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-boolean v0, p0, Lorg/xbill/DNS/at;->j:Z

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unget multiple tokens"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/at;->n:Lorg/xbill/DNS/at$a;

    iget v0, v0, Lorg/xbill/DNS/at$a;->a:I

    if-ne v0, v1, :cond_1

    .line 360
    iget v0, p0, Lorg/xbill/DNS/at;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/at;->r:I

    .line 361
    :cond_1
    iput-boolean v1, p0, Lorg/xbill/DNS/at;->j:Z

    .line 362
    return-void
.end method

.method public b(Z)[B
    .locals 3
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    invoke-direct {p0}, Lorg/xbill/DNS/at;->s()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 648
    if-eqz p1, :cond_0

    .line 649
    const-string v2, "expected hex encoded string"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 651
    :cond_0
    const/4 v0, 0x0

    .line 656
    :cond_1
    return-object v0

    .line 653
    :cond_2
    invoke-static {v1}, Lorg/xbill/DNS/b/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 654
    .local v0, "array":[B
    if-nez v0, :cond_1

    .line 655
    const-string v2, "invalid hex encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v0

    .line 373
    .local v0, "next":Lorg/xbill/DNS/at$a;
    invoke-virtual {v0}, Lorg/xbill/DNS/at$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    const-string v1, "expected a string"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 376
    :cond_0
    iget-object v1, v0, Lorg/xbill/DNS/at$a;->b:Ljava/lang/String;

    return-object v1
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const-string v0, "an identifier"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    const-string v2, "an integer"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "next":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    const-string v2, "expected an integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 411
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "expected an integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public f()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lorg/xbill/DNS/at;->e()J

    move-result-wide v0

    .line 428
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 429
    :cond_0
    const-string v2, "expected an 32 bit unsigned integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 430
    :cond_1
    return-wide v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 729
    invoke-virtual {p0}, Lorg/xbill/DNS/at;->o()V

    .line 730
    return-void
.end method

.method public g()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/xbill/DNS/at;->e()J

    move-result-wide v0

    .line 444
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 445
    :cond_0
    const-string v2, "expected an 16 bit unsigned integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 446
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public h()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/xbill/DNS/at;->e()J

    move-result-wide v0

    .line 460
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 461
    :cond_0
    const-string v2, "expected an 8 bit unsigned integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 462
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public i()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    const-string v2, "a TTL value"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "next":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lorg/xbill/DNS/ar;->a(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "expected a TTL value"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public j()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    const-string v2, "a TTL-like value"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "next":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Lorg/xbill/DNS/ar;->a(Ljava/lang/String;Z)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "expected a TTL-like value"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lorg/xbill/DNS/at;->a()Lorg/xbill/DNS/at$a;

    move-result-object v0

    .line 571
    .local v0, "next":Lorg/xbill/DNS/at$a;
    iget v1, v0, Lorg/xbill/DNS/at$a;->a:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lorg/xbill/DNS/at$a;->a:I

    if-eqz v1, :cond_0

    .line 572
    const-string v1, "expected EOL or EOF"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 574
    :cond_0
    return-void
.end method

.method public l()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/at;->a(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public m()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/at;->b(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public n()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    const-string v2, "a hex string"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/at;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "next":Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/b/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 682
    .local v0, "array":[B
    if-nez v0, :cond_0

    .line 683
    const-string v2, "invalid hex encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 684
    :cond_0
    return-object v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 718
    iget-boolean v0, p0, Lorg/xbill/DNS/at;->p:Z

    if-eqz v0, :cond_0

    .line 720
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/at;->i:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    goto :goto_0
.end method
