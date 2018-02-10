.class public final Lorg/xbill/DNS/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field private static h:Lorg/xbill/DNS/w;

.field private static i:[Ljava/lang/String;

.field private static j:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 35
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "Message Section"

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    .line 37
    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lorg/xbill/DNS/aj;->i:[Ljava/lang/String;

    .line 38
    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lorg/xbill/DNS/aj;->j:[Ljava/lang/String;

    .line 41
    sget-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/w;->b(I)V

    .line 42
    sget-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/w;->a(Z)V

    .line 44
    sget-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    const-string v1, "qd"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 45
    sget-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    const-string v1, "an"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 46
    sget-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    const-string v1, "au"

    invoke-virtual {v0, v5, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 47
    sget-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    const-string v1, "ad"

    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 49
    sget-object v0, Lorg/xbill/DNS/aj;->i:[Ljava/lang/String;

    const-string v1, "QUESTIONS"

    aput-object v1, v0, v4

    .line 50
    sget-object v0, Lorg/xbill/DNS/aj;->i:[Ljava/lang/String;

    const-string v1, "ANSWERS"

    aput-object v1, v0, v3

    .line 51
    sget-object v0, Lorg/xbill/DNS/aj;->i:[Ljava/lang/String;

    const-string v1, "AUTHORITY RECORDS"

    aput-object v1, v0, v5

    .line 52
    sget-object v0, Lorg/xbill/DNS/aj;->i:[Ljava/lang/String;

    const-string v1, "ADDITIONAL RECORDS"

    aput-object v1, v0, v2

    .line 54
    sget-object v0, Lorg/xbill/DNS/aj;->j:[Ljava/lang/String;

    const-string v1, "ZONE"

    aput-object v1, v0, v4

    .line 55
    sget-object v0, Lorg/xbill/DNS/aj;->j:[Ljava/lang/String;

    const-string v1, "PREREQUISITES"

    aput-object v1, v0, v3

    .line 56
    sget-object v0, Lorg/xbill/DNS/aj;->j:[Ljava/lang/String;

    const-string v1, "UPDATE RECORDS"

    aput-object v1, v0, v5

    .line 57
    sget-object v0, Lorg/xbill/DNS/aj;->j:[Ljava/lang/String;

    const-string v1, "ADDITIONAL RECORDS"

    aput-object v1, v0, v2

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 66
    sget-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 72
    sget-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->a(I)V

    .line 73
    sget-object v0, Lorg/xbill/DNS/aj;->i:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 82
    sget-object v0, Lorg/xbill/DNS/aj;->h:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->a(I)V

    .line 83
    sget-object v0, Lorg/xbill/DNS/aj;->j:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
