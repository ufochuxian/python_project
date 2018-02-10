.class public abstract Ljavax/jmdns/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "3.4.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static a()Ljavax/jmdns/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, v1, v1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljavax/jmdns/a;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/net/InetAddress;)Ljavax/jmdns/a;
    .locals 2
    .param p0, "addr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/net/InetAddress;Ljava/lang/String;)Ljavax/jmdns/a;
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-direct {v0, p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;-><init>(Ljava/net/InetAddress;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;J)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract a(Ljavax/jmdns/a$a;)Ljavax/jmdns/a$a;
.end method

.method public abstract a(Ljava/lang/String;Ljavax/jmdns/e;)V
.end method

.method public abstract a(Ljavax/jmdns/ServiceInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljavax/jmdns/f;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract b(Ljava/lang/String;J)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;ZJ)V
.end method

.method public abstract b(Ljava/lang/String;Ljavax/jmdns/e;)V
.end method

.method public abstract b(Ljavax/jmdns/ServiceInfo;)V
.end method

.method public abstract b(Ljavax/jmdns/f;)V
.end method

.method public abstract b(Ljava/lang/String;)Z
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract c(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract d()Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract f()V
.end method

.method public abstract g()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract h()Ljavax/jmdns/a$a;
.end method
