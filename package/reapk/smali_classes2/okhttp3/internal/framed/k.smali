.class public interface abstract Lokhttp3/internal/framed/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lokhttp3/internal/framed/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lokhttp3/internal/framed/k$1;

    invoke-direct {v0}, Lokhttp3/internal/framed/k$1;-><init>()V

    sput-object v0, Lokhttp3/internal/framed/k;->a:Lokhttp3/internal/framed/k;

    return-void
.end method


# virtual methods
.method public abstract a(ILokhttp3/internal/framed/ErrorCode;)V
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/e;",
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
            "Lokhttp3/internal/framed/e;",
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
