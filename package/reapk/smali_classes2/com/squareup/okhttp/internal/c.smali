.class public abstract Lcom/squareup/okhttp/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static b:Lcom/squareup/okhttp/internal/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/squareup/okhttp/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/c;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/g;)Lcom/squareup/okhttp/internal/a/q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/d;
.end method

.method public abstract a(Lcom/squareup/okhttp/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/squareup/okhttp/e;Lcom/squareup/okhttp/f;Z)V
.end method

.method public abstract a(Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/Protocol;)V
.end method

.method public abstract a(Lcom/squareup/okhttp/i;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/i;)V
.end method

.method public abstract a(Lcom/squareup/okhttp/p$a;Ljava/lang/String;)V
.end method

.method public abstract a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/g;Lcom/squareup/okhttp/v;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/internal/d;)V
.end method

.method public abstract a(Lcom/squareup/okhttp/t;Lcom/squareup/okhttp/internal/f;)V
.end method

.method public abstract a(Lcom/squareup/okhttp/i;)Z
.end method

.method public abstract b(Lcom/squareup/okhttp/i;)I
.end method

.method public abstract b(Lcom/squareup/okhttp/e;)Lcom/squareup/okhttp/i;
.end method

.method public abstract b(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/i;
.end method

.method public abstract b(Lcom/squareup/okhttp/i;Lcom/squareup/okhttp/internal/a/g;)V
.end method

.method public abstract b(Lcom/squareup/okhttp/i;Ljava/lang/Object;)V
.end method

.method public abstract c(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/internal/f;
.end method

.method public abstract c(Lcom/squareup/okhttp/i;)Z
.end method
