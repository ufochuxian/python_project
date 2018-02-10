.class public abstract Lokhttp3/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lokhttp3/internal/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lokhttp3/y;

    invoke-direct {v0}, Lokhttp3/y;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract a(Lokhttp3/k;Lokhttp3/a;Lokhttp3/internal/connection/f;)Lokhttp3/internal/connection/c;
.end method

.method public abstract a(Lokhttp3/k;)Lokhttp3/internal/connection/d;
.end method

.method public abstract a(Lokhttp3/e;)Lokhttp3/internal/connection/f;
.end method

.method public abstract a(Ljava/lang/String;)Lokhttp3/u;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract a(Lokhttp3/l;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract a(Lokhttp3/t$a;Ljava/lang/String;)V
.end method

.method public abstract a(Lokhttp3/t$a;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Lokhttp3/y$a;Lokhttp3/internal/a/f;)V
.end method

.method public abstract a(Lokhttp3/k;Lokhttp3/internal/connection/c;)Z
.end method

.method public abstract b(Lokhttp3/e;)V
.end method

.method public abstract b(Lokhttp3/k;Lokhttp3/internal/connection/c;)V
.end method
