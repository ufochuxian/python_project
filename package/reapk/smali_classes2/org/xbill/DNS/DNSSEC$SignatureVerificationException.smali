.class public Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;
.super Lorg/xbill/DNS/DNSSEC$DNSSECException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureVerificationException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 311
    const-string v0, "signature verification failed"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    .line 312
    return-void
.end method
