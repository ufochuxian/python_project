.class final Ljavax/jmdns/impl/i$a;
.super Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71adf8c0a9a573a8L


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 51
    invoke-direct {p0}, Ljavax/jmdns/impl/DNSStatefulObject$DefaultImplementation;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/i$a;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 53
    return-void
.end method
