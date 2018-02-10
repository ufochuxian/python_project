.class public interface abstract Lcom/squareup/okhttp/internal/spdy/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/squareup/okhttp/internal/spdy/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/j$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/j$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/j;->a:Lcom/squareup/okhttp/internal/spdy/j;

    return-void
.end method


# virtual methods
.method public abstract a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/c;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract a(ILokio/e;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
