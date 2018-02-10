.class Lokhttp3/internal/framed/c$c$3;
.super Lokhttp3/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/framed/c$c;->a(Lokhttp3/internal/framed/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/l;

.field final synthetic c:Lokhttp3/internal/framed/c$c;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/c$c;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/l;)V
    .locals 0
    .param p1, "this$1"    # Lokhttp3/internal/framed/c$c;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 732
    iput-object p1, p0, Lokhttp3/internal/framed/c$c$3;->c:Lokhttp3/internal/framed/c$c;

    iput-object p4, p0, Lokhttp3/internal/framed/c$c$3;->a:Lokhttp3/internal/framed/l;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .prologue
    .line 735
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/c$c$3;->c:Lokhttp3/internal/framed/c$c;

    iget-object v0, v0, Lokhttp3/internal/framed/c$c;->c:Lokhttp3/internal/framed/c;

    iget-object v0, v0, Lokhttp3/internal/framed/c;->i:Lokhttp3/internal/framed/b;

    iget-object v1, p0, Lokhttp3/internal/framed/c$c$3;->a:Lokhttp3/internal/framed/l;

    invoke-interface {v0, v1}, Lokhttp3/internal/framed/b;->a(Lokhttp3/internal/framed/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    goto :goto_0
.end method
