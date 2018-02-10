.class public Lorg/xbill/DNS/x;
.super Lorg/xbill/DNS/q;
.source "SourceFile"


# static fields
.field private static final a:J = 0x109876a433ba400L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/xbill/DNS/q;-><init>(I)V

    .line 18
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 26
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/q;-><init>(I[B)V

    .line 27
    return-void
.end method
