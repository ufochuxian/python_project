.class final Lorg/xbill/DNS/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lorg/xbill/DNS/ax;->b()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    .line 39
    .local v0, "n":I
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/xbill/DNS/ax;->a(Z)Z

    .line 40
    return-void
.end method
