.class public Lorg/xbill/DNS/KEYRecord$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/KEYRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final A:I = 0x9

.field public static final B:I = 0xa

.field public static final C:I = 0xb

.field public static final D:I = 0xc

.field public static final E:I = 0xd

.field public static final F:I = 0xe

.field public static final G:I = 0xf

.field private static H:Lorg/xbill/DNS/w; = null

.field public static final a:I = 0x4000

.field public static final b:I = 0x8000

.field public static final c:I = 0xc000

.field public static final d:I = 0xc000

.field public static final e:I = 0x2000

.field public static final f:I = 0x1000

.field public static final g:I = 0x800

.field public static final h:I = 0x400

.field public static final i:I = 0x0

.field public static final j:I = 0x100

.field public static final k:I = 0x200

.field public static final l:I = 0x300

.field public static final m:I = 0x300

.field public static final n:I = 0x80

.field public static final o:I = 0x40

.field public static final p:I = 0x20

.field public static final q:I = 0x10

.field public static final r:I = 0x0

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:I = 0x3

.field public static final v:I = 0x4

.field public static final w:I = 0x5

.field public static final x:I = 0x6

.field public static final y:I = 0x7

.field public static final z:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 187
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "KEY flags"

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    .line 191
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/w;->b(I)V

    .line 192
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/w;->a(Z)V

    .line 194
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x4000

    const-string v2, "NOCONF"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 195
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const v1, 0x8000

    const-string v2, "NOAUTH"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 196
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const v1, 0xc000

    const-string v2, "NOKEY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 197
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x2000

    const-string v2, "FLAG2"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 198
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x1000

    const-string v2, "EXTEND"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 199
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x800

    const-string v2, "FLAG4"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 200
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x400

    const-string v2, "FLAG5"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 201
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const-string v1, "USER"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 202
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x100

    const-string v2, "ZONE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 203
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x200

    const-string v2, "HOST"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 204
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x300

    const-string v2, "NTYP3"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 205
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x80

    const-string v2, "FLAG8"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 206
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x40

    const-string v2, "FLAG9"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 207
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x20

    const-string v2, "FLAG10"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 208
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x10

    const-string v2, "FLAG11"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 209
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const-string v1, "SIG0"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 210
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/4 v1, 0x1

    const-string v2, "SIG1"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 211
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const-string v1, "SIG2"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 212
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/4 v1, 0x3

    const-string v2, "SIG3"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 213
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/4 v1, 0x4

    const-string v2, "SIG4"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 214
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/4 v1, 0x5

    const-string v2, "SIG5"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 215
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/4 v1, 0x6

    const-string v2, "SIG6"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 216
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/4 v1, 0x7

    const-string v2, "SIG7"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 217
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x8

    const-string v2, "SIG8"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 218
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0x9

    const-string v2, "SIG9"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 219
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0xa

    const-string v2, "SIG10"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 220
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0xb

    const-string v2, "SIG11"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 221
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0xc

    const-string v2, "SIG12"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 222
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0xd

    const-string v2, "SIG13"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 223
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0xe

    const-string v2, "SIG14"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 224
    sget-object v0, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    const/16 v1, 0xf

    const-string v2, "SIG15"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 225
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 237
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 238
    .local v2, "value":I
    if-ltz v2, :cond_0

    const v4, 0xffff

    if-gt v2, v4, :cond_0

    move v3, v2

    .line 253
    :cond_0
    :goto_0
    return v3

    .line 242
    .end local v2    # "value":I
    :catch_0
    move-exception v4

    .line 244
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v0, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v0, "st":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 246
    .restart local v2    # "value":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 247
    sget-object v4, Lorg/xbill/DNS/KEYRecord$a;->H:Lorg/xbill/DNS/w;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v1

    .line 248
    .local v1, "val":I
    if-ltz v1, :cond_0

    .line 251
    or-int/2addr v2, v1

    .line 252
    goto :goto_1

    .end local v1    # "val":I
    :cond_1
    move v3, v2

    .line 253
    goto :goto_0
.end method
