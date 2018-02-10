.class public interface abstract Ljavax/jmdns/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/b$a;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)V
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

.method public abstract a(Ljavax/jmdns/d;)V
.end method

.method public abstract a(Ljavax/jmdns/f;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a()[Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;J)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Z)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;
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

.method public abstract b(Ljavax/jmdns/d;)V
.end method

.method public abstract b(Ljavax/jmdns/f;)V
.end method

.method public abstract b()[Ljava/lang/String;
.end method

.method public abstract b(Ljava/lang/String;)[Ljavax/jmdns/ServiceInfo;
.end method

.method public abstract c(Ljava/lang/String;)Ljava/util/Map;
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

.method public abstract c()[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d()[Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract e()[Ljavax/jmdns/a;
.end method

.method public abstract f()V
.end method

.method public abstract g()[Ljavax/jmdns/d;
.end method
