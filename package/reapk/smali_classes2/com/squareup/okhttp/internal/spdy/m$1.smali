.class Lcom/squareup/okhttp/internal/spdy/m$1;
.super Lcom/squareup/okhttp/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/m;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

.field final synthetic d:Lcom/squareup/okhttp/internal/spdy/m;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/m;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/spdy/m;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/m$1;->d:Lcom/squareup/okhttp/internal/spdy/m;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/m$1;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/m$1;->c:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/e;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 3

    .prologue
    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/m$1;->d:Lcom/squareup/okhttp/internal/spdy/m;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/m$1;->a:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/m$1;->c:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/m;->b(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0
.end method
