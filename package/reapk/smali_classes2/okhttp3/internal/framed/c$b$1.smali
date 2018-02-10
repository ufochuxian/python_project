.class final Lokhttp3/internal/framed/c$b$1;
.super Lokhttp3/internal/framed/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 899
    invoke-direct {p0}, Lokhttp3/internal/framed/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/internal/framed/d;)V
    .locals 1
    .param p1, "stream"    # Lokhttp3/internal/framed/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/ErrorCode;)V

    .line 902
    return-void
.end method
