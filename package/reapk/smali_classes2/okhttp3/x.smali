.class public final Lokhttp3/x;
.super Lokhttp3/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/x$a;,
        Lokhttp3/x$b;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/w;

.field public static final b:Lokhttp3/w;

.field public static final c:Lokhttp3/w;

.field public static final d:Lokhttp3/w;

.field public static final e:Lokhttp3/w;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private final i:Lokio/ByteString;

.field private final j:Lokhttp3/w;

.field private final k:Lokhttp3/w;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/x$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 34
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    sput-object v0, Lokhttp3/x;->a:Lokhttp3/w;

    .line 41
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    sput-object v0, Lokhttp3/x;->b:Lokhttp3/w;

    .line 48
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    sput-object v0, Lokhttp3/x;->c:Lokhttp3/w;

    .line 54
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    sput-object v0, Lokhttp3/x;->d:Lokhttp3/w;

    .line 61
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    sput-object v0, Lokhttp3/x;->e:Lokhttp3/w;

    .line 63
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/x;->f:[B

    .line 64
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lokhttp3/x;->g:[B

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lokhttp3/x;->h:[B

    return-void

    .line 63
    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 64
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 65
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lokio/ByteString;Lokhttp3/w;Ljava/util/List;)V
    .locals 2
    .param p1, "boundary"    # Lokio/ByteString;
    .param p2, "type"    # Lokhttp3/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/w;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/x$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Lokhttp3/x$b;>;"
    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/x;->m:J

    .line 74
    iput-object p1, p0, Lokhttp3/x;->i:Lokio/ByteString;

    .line 75
    iput-object p2, p0, Lokhttp3/x;->j:Lokhttp3/w;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/w;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->k:Lokhttp3/w;

    .line 77
    invoke-static {p3}, Lokhttp3/internal/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/x;->l:Ljava/util/List;

    .line 78
    return-void
.end method

.method private a(Lokio/d;Z)J
    .locals 18
    .param p1, "sink"    # Lokio/d;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const-wide/16 v4, 0x0

    .line 125
    .local v4, "byteCount":J
    const/4 v3, 0x0

    .line 126
    .local v3, "byteCountBuffer":Lokio/c;
    if-eqz p2, :cond_0

    .line 127
    new-instance v3, Lokio/c;

    .end local v3    # "byteCountBuffer":Lokio/c;
    invoke-direct {v3}, Lokio/c;-><init>()V

    .restart local v3    # "byteCountBuffer":Lokio/c;
    move-object/from16 p1, v3

    .line 130
    :cond_0
    const/4 v12, 0x0

    .local v12, "p":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/x;->l:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "partCount":I
    :goto_0
    if-ge v12, v14, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/x;->l:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lokhttp3/x$b;

    .line 132
    .local v13, "part":Lokhttp3/x$b;
    invoke-static {v13}, Lokhttp3/x$b;->a(Lokhttp3/x$b;)Lokhttp3/t;

    move-result-object v11

    .line 133
    .local v11, "headers":Lokhttp3/t;
    invoke-static {v13}, Lokhttp3/x$b;->b(Lokhttp3/x$b;)Lokhttp3/ab;

    move-result-object v2

    .line 135
    .local v2, "body":Lokhttp3/ab;
    sget-object v15, Lokhttp3/x;->h:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->d([B)Lokio/d;

    .line 136
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/x;->i:Lokio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->d(Lokio/ByteString;)Lokio/d;

    .line 137
    sget-object v15, Lokhttp3/x;->g:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->d([B)Lokio/d;

    .line 139
    if-eqz v11, :cond_1

    .line 140
    const/4 v9, 0x0

    .local v9, "h":I
    invoke-virtual {v11}, Lokhttp3/t;->a()I

    move-result v10

    .local v10, "headerCount":I
    :goto_1
    if-ge v9, v10, :cond_1

    .line 141
    invoke-virtual {v11, v9}, Lokhttp3/t;->a(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v15

    sget-object v16, Lokhttp3/x;->f:[B

    .line 142
    invoke-interface/range {v15 .. v16}, Lokio/d;->d([B)Lokio/d;

    move-result-object v15

    .line 143
    invoke-virtual {v11, v9}, Lokhttp3/t;->b(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v15

    sget-object v16, Lokhttp3/x;->g:[B

    .line 144
    invoke-interface/range {v15 .. v16}, Lokio/d;->d([B)Lokio/d;

    .line 140
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 148
    .end local v9    # "h":I
    .end local v10    # "headerCount":I
    :cond_1
    invoke-virtual {v2}, Lokhttp3/ab;->contentType()Lokhttp3/w;

    move-result-object v8

    .line 149
    .local v8, "contentType":Lokhttp3/w;
    if-eqz v8, :cond_2

    .line 150
    const-string v15, "Content-Type: "

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v15

    .line 151
    invoke-virtual {v8}, Lokhttp3/w;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v15

    sget-object v16, Lokhttp3/x;->g:[B

    .line 152
    invoke-interface/range {v15 .. v16}, Lokio/d;->d([B)Lokio/d;

    .line 155
    :cond_2
    invoke-virtual {v2}, Lokhttp3/ab;->contentLength()J

    move-result-wide v6

    .line 156
    .local v6, "contentLength":J
    const-wide/16 v16, -0x1

    cmp-long v15, v6, v16

    if-eqz v15, :cond_4

    .line 157
    const-string v15, "Content-Length: "

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->b(Ljava/lang/String;)Lokio/d;

    move-result-object v15

    .line 158
    invoke-interface {v15, v6, v7}, Lokio/d;->n(J)Lokio/d;

    move-result-object v15

    sget-object v16, Lokhttp3/x;->g:[B

    .line 159
    invoke-interface/range {v15 .. v16}, Lokio/d;->d([B)Lokio/d;

    .line 166
    :cond_3
    sget-object v15, Lokhttp3/x;->g:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->d([B)Lokio/d;

    .line 168
    if-eqz p2, :cond_5

    .line 169
    add-long/2addr v4, v6

    .line 174
    :goto_2
    sget-object v15, Lokhttp3/x;->g:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->d([B)Lokio/d;

    .line 130
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 160
    :cond_4
    if-eqz p2, :cond_3

    .line 162
    invoke-virtual {v3}, Lokio/c;->x()V

    .line 163
    const-wide/16 v16, -0x1

    .line 187
    .end local v2    # "body":Lokhttp3/ab;
    .end local v6    # "contentLength":J
    .end local v8    # "contentType":Lokhttp3/w;
    .end local v11    # "headers":Lokhttp3/t;
    .end local v13    # "part":Lokhttp3/x$b;
    :goto_3
    return-wide v16

    .line 171
    .restart local v2    # "body":Lokhttp3/ab;
    .restart local v6    # "contentLength":J
    .restart local v8    # "contentType":Lokhttp3/w;
    .restart local v11    # "headers":Lokhttp3/t;
    .restart local v13    # "part":Lokhttp3/x$b;
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lokhttp3/ab;->writeTo(Lokio/d;)V

    goto :goto_2

    .line 177
    .end local v2    # "body":Lokhttp3/ab;
    .end local v6    # "contentLength":J
    .end local v8    # "contentType":Lokhttp3/w;
    .end local v11    # "headers":Lokhttp3/t;
    .end local v13    # "part":Lokhttp3/x$b;
    :cond_6
    sget-object v15, Lokhttp3/x;->h:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->d([B)Lokio/d;

    .line 178
    move-object/from16 v0, p0

    iget-object v15, v0, Lokhttp3/x;->i:Lokio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->d(Lokio/ByteString;)Lokio/d;

    .line 179
    sget-object v15, Lokhttp3/x;->h:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->d([B)Lokio/d;

    .line 180
    sget-object v15, Lokhttp3/x;->g:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lokio/d;->d([B)Lokio/d;

    .line 182
    if-eqz p2, :cond_7

    .line 183
    invoke-virtual {v3}, Lokio/c;->a()J

    move-result-wide v16

    add-long v4, v4, v16

    .line 184
    invoke-virtual {v3}, Lokio/c;->x()V

    :cond_7
    move-wide/from16 v16, v4

    .line 187
    goto :goto_3
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "target"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    .line 201
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :sswitch_0
    const-string v3, "%0A"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 209
    :sswitch_1
    const-string v3, "%0D"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 212
    :sswitch_2
    const-string v3, "%22"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    .end local v0    # "ch":C
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    return-object p0

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public a()Lokhttp3/w;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lokhttp3/x;->j:Lokhttp3/w;

    return-object v0
.end method

.method public a(I)Lokhttp3/x$b;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/x;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/x$b;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lokhttp3/x;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lokhttp3/x;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-wide v0, p0, Lokhttp3/x;->m:J

    .line 108
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 109
    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .restart local v0    # "result":J
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lokhttp3/x;->a(Lokio/d;Z)J

    move-result-wide v0

    .end local v0    # "result":J
    iput-wide v0, p0, Lokhttp3/x;->m:J

    goto :goto_0
.end method

.method public contentType()Lokhttp3/w;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/x;->k:Lokhttp3/w;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/x$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lokhttp3/x;->l:Ljava/util/List;

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .locals 1
    .param p1, "sink"    # Lokio/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/x;->a(Lokio/d;Z)J

    .line 114
    return-void
.end method
