.class Lokhttp3/internal/b/d$a;
.super Lokio/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/b/d;


# direct methods
.method public constructor <init>(Lokhttp3/internal/b/d;Lokio/x;)V
    .locals 0
    .param p1, "this$0"    # Lokhttp3/internal/b/d;
    .param p2, "delegate"    # Lokio/x;

    .prologue
    .line 282
    iput-object p1, p0, Lokhttp3/internal/b/d$a;->a:Lokhttp3/internal/b/d;

    .line 283
    invoke-direct {p0, p2}, Lokio/h;-><init>(Lokio/x;)V

    .line 284
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lokhttp3/internal/b/d$a;->a:Lokhttp3/internal/b/d;

    invoke-static {v0}, Lokhttp3/internal/b/d;->a(Lokhttp3/internal/b/d;)Lokhttp3/internal/connection/f;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/b/d$a;->a:Lokhttp3/internal/b/d;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/connection/f;->a(ZLokhttp3/internal/b/h;)V

    .line 288
    invoke-super {p0}, Lokio/h;->close()V

    .line 289
    return-void
.end method
