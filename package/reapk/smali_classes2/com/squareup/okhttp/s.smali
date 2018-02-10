.class public final Lcom/squareup/okhttp/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/s$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/squareup/okhttp/r;

.field public static final b:Lcom/squareup/okhttp/r;

.field public static final c:Lcom/squareup/okhttp/r;

.field public static final d:Lcom/squareup/okhttp/r;

.field public static final e:Lcom/squareup/okhttp/r;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private final i:Lokio/ByteString;

.field private j:Lcom/squareup/okhttp/r;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/p;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 38
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/s;->a:Lcom/squareup/okhttp/r;

    .line 45
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/s;->b:Lcom/squareup/okhttp/r;

    .line 53
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/s;->c:Lcom/squareup/okhttp/r;

    .line 60
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/s;->d:Lcom/squareup/okhttp/r;

    .line 68
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/squareup/okhttp/r;->a(Ljava/lang/String;)Lcom/squareup/okhttp/r;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/s;->e:Lcom/squareup/okhttp/r;

    .line 70
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/okhttp/s;->f:[B

    .line 71
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/squareup/okhttp/s;->g:[B

    .line 72
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/squareup/okhttp/s;->h:[B

    return-void

    .line 70
    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 71
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 72
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/s;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/squareup/okhttp/s;->a:Lcom/squareup/okhttp/r;

    iput-object v0, p0, Lcom/squareup/okhttp/s;->j:Lcom/squareup/okhttp/r;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/s;->k:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/s;->l:Ljava/util/List;

    .line 92
    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/s;->i:Lokio/ByteString;

    .line 93
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "target"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    .line 145
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 148
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :sswitch_0
    const-string v3, "%0A"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 153
    :sswitch_1
    const-string v3, "%0D"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 156
    :sswitch_2
    const-string v3, "%22"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 163
    .end local v0    # "ch":C
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    return-object p0

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic b()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/squareup/okhttp/s;->h:[B

    return-object v0
.end method

.method static synthetic c()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/squareup/okhttp/s;->g:[B

    return-object v0
.end method

.method static synthetic d()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/squareup/okhttp/s;->f:[B

    return-object v0
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/s;
    .locals 2
    .param p1, "headers"    # Lcom/squareup/okhttp/p;
    .param p2, "body"    # Lcom/squareup/okhttp/w;

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "body == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected header: Content-Length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/s;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/squareup/okhttp/s;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-object p0
.end method

.method public a(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/s;
    .locals 3
    .param p1, "type"    # Lcom/squareup/okhttp/r;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/s;->j:Lcom/squareup/okhttp/r;

    .line 108
    return-object p0
.end method

.method public a(Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/s;
    .locals 1
    .param p1, "body"    # Lcom/squareup/okhttp/w;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/s;->a(Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/s;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-static {v1, p2}, Lcom/squareup/okhttp/w;->a(Lcom/squareup/okhttp/r;Ljava/lang/String;)Lcom/squareup/okhttp/w;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/okhttp/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/s;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "value"    # Lcom/squareup/okhttp/w;

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "disposition":Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Lcom/squareup/okhttp/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    if-eqz p2, :cond_1

    .line 181
    const-string v1, "; filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {v0, p2}, Lcom/squareup/okhttp/s;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Content-Disposition"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/squareup/okhttp/p;->a([Ljava/lang/String;)Lcom/squareup/okhttp/p;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/squareup/okhttp/s;->a(Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/w;)Lcom/squareup/okhttp/s;

    move-result-object v1

    return-object v1
.end method

.method public a()Lcom/squareup/okhttp/w;
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/squareup/okhttp/s;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/s$a;

    iget-object v1, p0, Lcom/squareup/okhttp/s;->j:Lcom/squareup/okhttp/r;

    iget-object v2, p0, Lcom/squareup/okhttp/s;->i:Lokio/ByteString;

    iget-object v3, p0, Lcom/squareup/okhttp/s;->k:Ljava/util/List;

    iget-object v4, p0, Lcom/squareup/okhttp/s;->l:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/s$a;-><init>(Lcom/squareup/okhttp/r;Lokio/ByteString;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
