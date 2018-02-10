.class Lorg/xbill/DNS/DNSSEC$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;

.field public f:Ljava/math/BigInteger;

.field public g:Ljava/math/BigInteger;

.field h:Ljava/security/spec/EllipticCurve;

.field i:Ljava/security/spec/ECParameterSpec;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "length"    # I
    .param p2, "p_str"    # Ljava/lang/String;
    .param p3, "a_str"    # Ljava/lang/String;
    .param p4, "b_str"    # Ljava/lang/String;
    .param p5, "gx_str"    # Ljava/lang/String;
    .param p6, "gy_str"    # Ljava/lang/String;
    .param p7, "n_str"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x10

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lorg/xbill/DNS/DNSSEC$b;->a:I

    .line 457
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/xbill/DNS/DNSSEC$b;->b:Ljava/math/BigInteger;

    .line 458
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/xbill/DNS/DNSSEC$b;->c:Ljava/math/BigInteger;

    .line 459
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p4, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/xbill/DNS/DNSSEC$b;->d:Ljava/math/BigInteger;

    .line 460
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/xbill/DNS/DNSSEC$b;->e:Ljava/math/BigInteger;

    .line 461
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p6, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/xbill/DNS/DNSSEC$b;->f:Ljava/math/BigInteger;

    .line 462
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p7, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/xbill/DNS/DNSSEC$b;->g:Ljava/math/BigInteger;

    .line 463
    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldFp;

    iget-object v2, p0, Lorg/xbill/DNS/DNSSEC$b;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    iget-object v2, p0, Lorg/xbill/DNS/DNSSEC$b;->c:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/xbill/DNS/DNSSEC$b;->d:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/xbill/DNS/DNSSEC$b;->h:Ljava/security/spec/EllipticCurve;

    .line 464
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    iget-object v1, p0, Lorg/xbill/DNS/DNSSEC$b;->h:Ljava/security/spec/EllipticCurve;

    new-instance v2, Ljava/security/spec/ECPoint;

    iget-object v3, p0, Lorg/xbill/DNS/DNSSEC$b;->e:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/xbill/DNS/DNSSEC$b;->f:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object v3, p0, Lorg/xbill/DNS/DNSSEC$b;->g:Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/xbill/DNS/DNSSEC$b;->i:Ljava/security/spec/ECParameterSpec;

    .line 465
    return-void
.end method
