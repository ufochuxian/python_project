.class public Lorg/xbill/DNS/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/aq$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/xbill/DNS/Name;

.field public static final b:Lorg/xbill/DNS/Name;

.field public static final c:Lorg/xbill/DNS/Name;

.field public static final d:Lorg/xbill/DNS/Name;

.field public static final e:Lorg/xbill/DNS/Name;

.field public static final f:Lorg/xbill/DNS/Name;

.field public static final g:Lorg/xbill/DNS/Name;

.field public static final h:S = 0x12cs

.field private static final i:Ljava/lang/String; = "HMAC-MD5.SIG-ALG.REG.INT."

.field private static final j:Ljava/lang/String; = "hmac-sha1."

.field private static final k:Ljava/lang/String; = "hmac-sha224."

.field private static final l:Ljava/lang/String; = "hmac-sha256."

.field private static final m:Ljava/lang/String; = "hmac-sha384."

.field private static final n:Ljava/lang/String; = "hmac-sha512."


# instance fields
.field private o:Lorg/xbill/DNS/Name;

.field private p:Lorg/xbill/DNS/Name;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "HMAC-MD5.SIG-ALG.REG.INT."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/aq;->a:Lorg/xbill/DNS/Name;

    .line 29
    sget-object v0, Lorg/xbill/DNS/aq;->a:Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/aq;->b:Lorg/xbill/DNS/Name;

    .line 32
    const-string v0, "hmac-sha1."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/aq;->c:Lorg/xbill/DNS/Name;

    .line 39
    const-string v0, "hmac-sha224."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/aq;->d:Lorg/xbill/DNS/Name;

    .line 42
    const-string v0, "hmac-sha256."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/aq;->e:Lorg/xbill/DNS/Name;

    .line 45
    const-string v0, "hmac-sha384."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/aq;->f:Lorg/xbill/DNS/Name;

    .line 48
    const-string v0, "hmac-sha512."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/aq;->g:Lorg/xbill/DNS/Name;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-object v0, Lorg/xbill/DNS/aq;->a:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/aq;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Lorg/xbill/DNS/aq;->a:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/aq;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "hmac-md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lorg/xbill/DNS/aq;->a:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    .line 159
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/aq;->b()V

    .line 160
    return-void

    .line 147
    :cond_0
    const-string v0, "hmac-sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Lorg/xbill/DNS/aq;->c:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, "hmac-sha224"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Lorg/xbill/DNS/aq;->d:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 151
    :cond_2
    const-string v0, "hmac-sha256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    sget-object v0, Lorg/xbill/DNS/aq;->e:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 153
    :cond_3
    const-string v0, "hmac-sha384"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    sget-object v0, Lorg/xbill/DNS/aq;->f:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 155
    :cond_4
    const-string v0, "hmac-sha512"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    sget-object v0, Lorg/xbill/DNS/aq;->g:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 158
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "algorithm"    # Lorg/xbill/DNS/Name;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p3}, Lorg/xbill/DNS/b/d;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/aq;->s:[B

    .line 120
    iget-object v1, p0, Lorg/xbill/DNS/aq;->s:[B

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid TSIG key string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_0
    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/aq;->o:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iput-object p1, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    .line 129
    invoke-direct {p0}, Lorg/xbill/DNS/aq;->b()V

    .line 130
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid TSIG key name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V
    .locals 0
    .param p1, "algorithm"    # Lorg/xbill/DNS/Name;
    .param p2, "name"    # Lorg/xbill/DNS/Name;
    .param p3, "key"    # [B

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lorg/xbill/DNS/aq;->o:Lorg/xbill/DNS/Name;

    .line 94
    iput-object p1, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    .line 95
    iput-object p3, p0, Lorg/xbill/DNS/aq;->s:[B

    .line 96
    invoke-direct {p0}, Lorg/xbill/DNS/aq;->b()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[B)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "key"    # [B

    .prologue
    .line 107
    sget-object v0, Lorg/xbill/DNS/aq;->a:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/aq;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V

    .line 108
    return-void
.end method

.method static a(Lorg/xbill/DNS/aq;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/aq;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/xbill/DNS/aq;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 187
    const-string v2, "[:/]"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, v6, :cond_0

    .line 189
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid TSIG key specification"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_0
    array-length v2, v1

    if-ne v2, v3, :cond_1

    .line 193
    :try_start_0
    new-instance v2, Lorg/xbill/DNS/aq;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-direct {v2, v3, v4, v5}, Lorg/xbill/DNS/aq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-object v2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "[:/]"

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 198
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v2, Lorg/xbill/DNS/aq;

    sget-object v3, Lorg/xbill/DNS/aq;->a:Lorg/xbill/DNS/Name;

    aget-object v4, v1, v7

    aget-object v5, v1, v8

    invoke-direct {v2, v3, v4, v5}, Lorg/xbill/DNS/aq;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b(Lorg/xbill/DNS/aq;)I
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/aq;

    .prologue
    .line 16
    iget v0, p0, Lorg/xbill/DNS/aq;->r:I

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/16 v2, 0x40

    .line 63
    iget-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/aq;->a:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "md5"

    iput-object v0, p0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    .line 65
    iput v2, p0, Lorg/xbill/DNS/aq;->r:I

    .line 83
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/aq;->c:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string v0, "sha-1"

    iput-object v0, p0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    .line 68
    iput v2, p0, Lorg/xbill/DNS/aq;->r:I

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/aq;->d:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    const-string v0, "sha-224"

    iput-object v0, p0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    .line 71
    iput v2, p0, Lorg/xbill/DNS/aq;->r:I

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/aq;->e:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    const-string v0, "sha-256"

    iput-object v0, p0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    .line 74
    iput v2, p0, Lorg/xbill/DNS/aq;->r:I

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/aq;->g:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    const-string v0, "sha-512"

    iput-object v0, p0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    .line 77
    iput v3, p0, Lorg/xbill/DNS/aq;->r:I

    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/aq;->f:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    const-string v0, "sha-384"

    iput-object v0, p0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    .line 80
    iput v3, p0, Lorg/xbill/DNS/aq;->r:I

    goto :goto_0

    .line 82
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static c(Lorg/xbill/DNS/aq;)[B
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/aq;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/aq;->s:[B

    return-object v0
.end method

.method static d(Lorg/xbill/DNS/aq;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/aq;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/aq;->o:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method static e(Lorg/xbill/DNS/aq;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/aq;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/xbill/DNS/aq;->o:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public a(Lorg/xbill/DNS/v;[BLorg/xbill/DNS/TSIGRecord;)I
    .locals 1
    .param p1, "m"    # Lorg/xbill/DNS/v;
    .param p2, "b"    # [B
    .param p3, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 459
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/xbill/DNS/aq;->b(Lorg/xbill/DNS/v;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v0

    return v0
.end method

.method public a(Lorg/xbill/DNS/v;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;
    .locals 22
    .param p1, "m"    # Lorg/xbill/DNS/v;
    .param p2, "b"    # [B
    .param p3, "error"    # I
    .param p4, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 213
    const/16 v3, 0x12

    move/from16 v0, p3

    if-eq v0, v3, :cond_8

    .line 214
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 218
    .local v9, "timeSigned":Ljava/util/Date;
    :goto_0
    const/4 v2, 0x0

    .line 219
    .local v2, "hmac":Lorg/xbill/DNS/b/a;
    if-eqz p3, :cond_0

    const/16 v3, 0x12

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 220
    :cond_0
    new-instance v2, Lorg/xbill/DNS/b/a;

    .end local v2    # "hmac":Lorg/xbill/DNS/b/a;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/xbill/DNS/aq;->r:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xbill/DNS/aq;->s:[B

    invoke-direct {v2, v3, v4, v5}, Lorg/xbill/DNS/b/a;-><init>(Ljava/lang/String;I[B)V

    .line 222
    .restart local v2    # "hmac":Lorg/xbill/DNS/b/a;
    :cond_1
    const-string v3, "tsigfudge"

    invoke-static {v3}, Lorg/xbill/DNS/z;->e(Ljava/lang/String;)I

    move-result v10

    .line 223
    .local v10, "fudge":I
    if-ltz v10, :cond_2

    const/16 v3, 0x7fff

    if-le v10, v3, :cond_3

    .line 224
    :cond_2
    const/16 v10, 0x12c

    .line 226
    :cond_3
    if-eqz p4, :cond_4

    .line 227
    new-instance v15, Lorg/xbill/DNS/i;

    invoke-direct {v15}, Lorg/xbill/DNS/i;-><init>()V

    .line 228
    .local v15, "out":Lorg/xbill/DNS/i;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v15, v3}, Lorg/xbill/DNS/i;->c(I)V

    .line 229
    if-eqz v2, :cond_4

    .line 230
    invoke-virtual {v15}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 231
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 236
    .end local v15    # "out":Lorg/xbill/DNS/i;
    :cond_4
    if-eqz v2, :cond_5

    .line 237
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 239
    :cond_5
    new-instance v15, Lorg/xbill/DNS/i;

    invoke-direct {v15}, Lorg/xbill/DNS/i;-><init>()V

    .line 240
    .restart local v15    # "out":Lorg/xbill/DNS/i;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/aq;->o:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v15}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/i;)V

    .line 241
    const/16 v3, 0xff

    invoke-virtual {v15, v3}, Lorg/xbill/DNS/i;->c(I)V

    .line 242
    const-wide/16 v4, 0x0

    invoke-virtual {v15, v4, v5}, Lorg/xbill/DNS/i;->a(J)V

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v15}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/i;)V

    .line 244
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v16, v4, v6

    .line 245
    .local v16, "time":J
    const/16 v3, 0x20

    shr-long v4, v16, v3

    long-to-int v0, v4

    move/from16 v18, v0

    .line 246
    .local v18, "timeHigh":I
    const-wide v4, 0xffffffffL

    and-long v20, v16, v4

    .line 247
    .local v20, "timeLow":J
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 248
    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 249
    invoke-virtual {v15, v10}, Lorg/xbill/DNS/i;->c(I)V

    .line 251
    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 252
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lorg/xbill/DNS/i;->c(I)V

    .line 254
    if-eqz v2, :cond_6

    .line 255
    invoke-virtual {v15}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 258
    :cond_6
    if-eqz v2, :cond_9

    .line 259
    invoke-virtual {v2}, Lorg/xbill/DNS/b/a;->a()[B

    move-result-object v11

    .line 263
    .local v11, "signature":[B
    :goto_1
    const/4 v14, 0x0

    .line 264
    .local v14, "other":[B
    const/16 v3, 0x12

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 265
    new-instance v15, Lorg/xbill/DNS/i;

    .end local v15    # "out":Lorg/xbill/DNS/i;
    invoke-direct {v15}, Lorg/xbill/DNS/i;-><init>()V

    .line 266
    .restart local v15    # "out":Lorg/xbill/DNS/i;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v16, v4, v6

    .line 267
    const/16 v3, 0x20

    shr-long v4, v16, v3

    long-to-int v0, v4

    move/from16 v18, v0

    .line 268
    const-wide v4, 0xffffffffL

    and-long v20, v16, v4

    .line 269
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 270
    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 271
    invoke-virtual {v15}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v14

    .line 274
    :cond_7
    new-instance v3, Lorg/xbill/DNS/TSIGRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/aq;->o:Lorg/xbill/DNS/Name;

    const/16 v5, 0xff

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v12

    invoke-virtual {v12}, Lorg/xbill/DNS/r;->c()I

    move-result v12

    move/from16 v13, p3

    invoke-direct/range {v3 .. v14}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    return-object v3

    .line 216
    .end local v2    # "hmac":Lorg/xbill/DNS/b/a;
    .end local v9    # "timeSigned":Ljava/util/Date;
    .end local v10    # "fudge":I
    .end local v11    # "signature":[B
    .end local v14    # "other":[B
    .end local v15    # "out":Lorg/xbill/DNS/i;
    .end local v16    # "time":J
    .end local v18    # "timeHigh":I
    .end local v20    # "timeLow":J
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v9

    .restart local v9    # "timeSigned":Ljava/util/Date;
    goto/16 :goto_0

    .line 261
    .restart local v2    # "hmac":Lorg/xbill/DNS/b/a;
    .restart local v10    # "fudge":I
    .restart local v15    # "out":Lorg/xbill/DNS/i;
    .restart local v16    # "time":J
    .restart local v18    # "timeHigh":I
    .restart local v20    # "timeLow":J
    :cond_9
    const/4 v3, 0x0

    new-array v11, v3, [B

    .restart local v11    # "signature":[B
    goto :goto_1
.end method

.method public a(Lorg/xbill/DNS/v;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 3
    .param p1, "m"    # Lorg/xbill/DNS/v;
    .param p2, "error"    # I
    .param p3, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    const/4 v2, 0x3

    .line 287
    invoke-virtual {p1}, Lorg/xbill/DNS/v;->h()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/xbill/DNS/aq;->a(Lorg/xbill/DNS/v;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 288
    .local v0, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1, v0, v2}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 289
    iput v2, p1, Lorg/xbill/DNS/v;->c:I

    .line 290
    return-void
.end method

.method public a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 1
    .param p1, "m"    # Lorg/xbill/DNS/v;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/xbill/DNS/aq;->a(Lorg/xbill/DNS/v;ILorg/xbill/DNS/TSIGRecord;)V

    .line 300
    return-void
.end method

.method public a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/TSIGRecord;Z)V
    .locals 22
    .param p1, "m"    # Lorg/xbill/DNS/v;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;
    .param p3, "first"    # Z

    .prologue
    .line 309
    if-eqz p3, :cond_0

    .line 310
    invoke-virtual/range {p0 .. p2}, Lorg/xbill/DNS/aq;->a(Lorg/xbill/DNS/v;Lorg/xbill/DNS/TSIGRecord;)V

    .line 347
    :goto_0
    return-void

    .line 313
    :cond_0
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 315
    .local v9, "timeSigned":Ljava/util/Date;
    new-instance v2, Lorg/xbill/DNS/b/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/xbill/DNS/aq;->r:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/xbill/DNS/aq;->s:[B

    invoke-direct {v2, v4, v5, v6}, Lorg/xbill/DNS/b/a;-><init>(Ljava/lang/String;I[B)V

    .line 317
    .local v2, "hmac":Lorg/xbill/DNS/b/a;
    const-string v4, "tsigfudge"

    invoke-static {v4}, Lorg/xbill/DNS/z;->e(Ljava/lang/String;)I

    move-result v10

    .line 318
    .local v10, "fudge":I
    if-ltz v10, :cond_1

    const/16 v4, 0x7fff

    if-le v10, v4, :cond_2

    .line 319
    :cond_1
    const/16 v10, 0x12c

    .line 321
    :cond_2
    new-instance v15, Lorg/xbill/DNS/i;

    invoke-direct {v15}, Lorg/xbill/DNS/i;-><init>()V

    .line 322
    .local v15, "out":Lorg/xbill/DNS/i;
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v15, v4}, Lorg/xbill/DNS/i;->c(I)V

    .line 323
    invoke-virtual {v15}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 327
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->h()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 329
    new-instance v15, Lorg/xbill/DNS/i;

    .end local v15    # "out":Lorg/xbill/DNS/i;
    invoke-direct {v15}, Lorg/xbill/DNS/i;-><init>()V

    .line 330
    .restart local v15    # "out":Lorg/xbill/DNS/i;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v16, v4, v6

    .line 331
    .local v16, "time":J
    const/16 v4, 0x20

    shr-long v4, v16, v4

    long-to-int v0, v4

    move/from16 v18, v0

    .line 332
    .local v18, "timeHigh":I
    const-wide v4, 0xffffffffL

    and-long v20, v16, v4

    .line 333
    .local v20, "timeLow":J
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 334
    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 335
    invoke-virtual {v15, v10}, Lorg/xbill/DNS/i;->c(I)V

    .line 337
    invoke-virtual {v15}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 339
    invoke-virtual {v2}, Lorg/xbill/DNS/b/a;->a()[B

    move-result-object v11

    .line 340
    .local v11, "signature":[B
    const/4 v14, 0x0

    .line 342
    .local v14, "other":[B
    new-instance v3, Lorg/xbill/DNS/TSIGRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/aq;->o:Lorg/xbill/DNS/Name;

    const/16 v5, 0xff

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v12

    invoke-virtual {v12}, Lorg/xbill/DNS/r;->c()I

    move-result v12

    const/4 v13, 0x0

    invoke-direct/range {v3 .. v14}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    .line 345
    .local v3, "r":Lorg/xbill/DNS/Record;
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/v;->a(Lorg/xbill/DNS/Record;I)V

    .line 346
    const/4 v4, 0x3

    move-object/from16 v0, p1

    iput v4, v0, Lorg/xbill/DNS/v;->c:I

    goto/16 :goto_0
.end method

.method public b(Lorg/xbill/DNS/v;[BILorg/xbill/DNS/TSIGRecord;)B
    .locals 28
    .param p1, "m"    # Lorg/xbill/DNS/v;
    .param p2, "b"    # [B
    .param p3, "length"    # I
    .param p4, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 365
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lorg/xbill/DNS/v;->c:I

    .line 366
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->c()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v22

    .line 367
    .local v22, "tsig":Lorg/xbill/DNS/TSIGRecord;
    new-instance v8, Lorg/xbill/DNS/b/a;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/aq;->r:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/aq;->s:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v8, v0, v1, v2}, Lorg/xbill/DNS/b/a;-><init>(Ljava/lang/String;I[B)V

    .line 368
    .local v8, "hmac":Lorg/xbill/DNS/b/a;
    if-nez v22, :cond_0

    .line 369
    const/16 v23, 0x1

    .line 441
    :goto_0
    return v23

    .line 371
    :cond_0
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/aq;->o:Lorg/xbill/DNS/Name;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/aq;->p:Lorg/xbill/DNS/Name;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 372
    :cond_1
    const-string v23, "verbose"

    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 373
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v24, "BADKEY failure"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    :cond_2
    const/16 v23, 0x11

    goto :goto_0

    .line 376
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 377
    .local v12, "now":J
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 378
    .local v16, "then":J
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v23

    move/from16 v0, v23

    int-to-long v6, v0

    .line 379
    .local v6, "fudge":J
    sub-long v24, v12, v16

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v6

    cmp-long v23, v24, v26

    if-lez v23, :cond_5

    .line 380
    const-string v23, "verbose"

    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 381
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v24, "BADTIME failure"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    :cond_4
    const/16 v23, 0x12

    goto :goto_0

    .line 385
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v23

    const/16 v24, 0x11

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 388
    new-instance v11, Lorg/xbill/DNS/i;

    invoke-direct {v11}, Lorg/xbill/DNS/i;-><init>()V

    .line 389
    .local v11, "out":Lorg/xbill/DNS/i;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 390
    invoke-virtual {v11}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 391
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 393
    .end local v11    # "out":Lorg/xbill/DNS/i;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v23

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Lorg/xbill/DNS/r;->h(I)V

    .line 394
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/r;->a()[B

    move-result-object v5

    .line 395
    .local v5, "header":[B
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/v;->a()Lorg/xbill/DNS/r;

    move-result-object v23

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Lorg/xbill/DNS/r;->g(I)V

    .line 396
    invoke-virtual {v8, v5}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 398
    move-object/from16 v0, p1

    iget v0, v0, Lorg/xbill/DNS/v;->b:I

    move/from16 v23, v0

    array-length v0, v5

    move/from16 v24, v0

    sub-int v9, v23, v24

    .line 399
    .local v9, "len":I
    array-length v0, v5

    move/from16 v23, v0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1, v9}, Lorg/xbill/DNS/b/a;->a([BII)V

    .line 401
    new-instance v11, Lorg/xbill/DNS/i;

    invoke-direct {v11}, Lorg/xbill/DNS/i;-><init>()V

    .line 402
    .restart local v11    # "out":Lorg/xbill/DNS/i;
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/i;)V

    .line 403
    move-object/from16 v0, v22

    iget v0, v0, Lorg/xbill/DNS/TSIGRecord;->dclass:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 404
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/xbill/DNS/TSIGRecord;->ttl:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 405
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/i;)V

    .line 406
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v18, v24, v26

    .line 407
    .local v18, "time":J
    const/16 v23, 0x20

    shr-long v24, v18, v23

    move-wide/from16 v0, v24

    long-to-int v15, v0

    .line 408
    .local v15, "timeHigh":I
    const-wide v24, 0xffffffffL

    and-long v20, v18, v24

    .line 409
    .local v20, "timeLow":J
    invoke-virtual {v11, v15}, Lorg/xbill/DNS/i;->c(I)V

    .line 410
    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Lorg/xbill/DNS/i;->a(J)V

    .line 411
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 412
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 413
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v23

    if-eqz v23, :cond_8

    .line 414
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 415
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 420
    :goto_1
    invoke-virtual {v11}, Lorg/xbill/DNS/i;->d()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/xbill/DNS/b/a;->a([B)V

    .line 422
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v14

    .line 423
    .local v14, "signature":[B
    invoke-virtual {v8}, Lorg/xbill/DNS/b/a;->c()I

    move-result v4

    .line 424
    .local v4, "digestLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/aq;->q:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "md5"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v10, 0xa

    .line 426
    .local v10, "minDigestLength":I
    :goto_2
    array-length v0, v14

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v4, :cond_a

    .line 427
    const-string v23, "verbose"

    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 428
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v24, "BADSIG: signature too long"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    :cond_7
    const/16 v23, 0x10

    goto/16 :goto_0

    .line 417
    .end local v4    # "digestLength":I
    .end local v10    # "minDigestLength":I
    .end local v14    # "signature":[B
    :cond_8
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/i;->c(I)V

    goto :goto_1

    .line 424
    .restart local v4    # "digestLength":I
    .restart local v14    # "signature":[B
    :cond_9
    div-int/lit8 v10, v4, 0x2

    goto :goto_2

    .line 430
    .restart local v10    # "minDigestLength":I
    :cond_a
    array-length v0, v14

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v0, v10, :cond_c

    .line 431
    const-string v23, "verbose"

    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 432
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v24, "BADSIG: signature too short"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    :cond_b
    const/16 v23, 0x10

    goto/16 :goto_0

    .line 434
    :cond_c
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v8, v14, v0}, Lorg/xbill/DNS/b/a;->a([BZ)Z

    move-result v23

    if-nez v23, :cond_e

    .line 435
    const-string v23, "verbose"

    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/z;->c(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 436
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v24, "BADSIG: signature verification"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    :cond_d
    const/16 v23, 0x10

    goto/16 :goto_0

    .line 440
    :cond_e
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lorg/xbill/DNS/v;->c:I

    .line 441
    const/16 v23, 0x0

    goto/16 :goto_0
.end method
