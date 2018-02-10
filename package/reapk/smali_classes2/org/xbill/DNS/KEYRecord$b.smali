.class public Lorg/xbill/DNS/KEYRecord$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/KEYRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0xff

.field private static g:Lorg/xbill/DNS/w;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 46
    new-instance v0, Lorg/xbill/DNS/w;

    const-string v1, "KEY protocol"

    invoke-direct {v0, v1, v4}, Lorg/xbill/DNS/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    .line 50
    sget-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/w;->b(I)V

    .line 51
    sget-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/w;->a(Z)V

    .line 53
    sget-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 54
    sget-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    const-string v1, "TLS"

    invoke-virtual {v0, v3, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 55
    sget-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    const-string v1, "EMAIL"

    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 56
    sget-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    const/4 v1, 0x3

    const-string v2, "DNSSEC"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 57
    sget-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    const/4 v1, 0x4

    const-string v2, "IPSEC"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 58
    sget-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    const-string v1, "ANY"

    invoke-virtual {v0, v5, v1}, Lorg/xbill/DNS/w;->a(ILjava/lang/String;)V

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 66
    sget-object v0, Lorg/xbill/DNS/KEYRecord$b;->g:Lorg/xbill/DNS/w;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/w;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
