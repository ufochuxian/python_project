.class Lcom/squareup/okhttp/internal/a$2;
.super Lcom/squareup/okhttp/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/a;->l()Lokio/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/squareup/okhttp/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 303
    const-class v0, Lcom/squareup/okhttp/internal/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/squareup/okhttp/internal/a$2;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/squareup/okhttp/internal/a;Lokio/w;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/internal/a;
    .param p2, "delegate"    # Lokio/w;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/squareup/okhttp/internal/a$2;->b:Lcom/squareup/okhttp/internal/a;

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/b;-><init>(Lokio/w;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 305
    sget-boolean v0, Lcom/squareup/okhttp/internal/a$2;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$2;->b:Lcom/squareup/okhttp/internal/a;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a$2;->b:Lcom/squareup/okhttp/internal/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/a;->a(Lcom/squareup/okhttp/internal/a;Z)Z

    .line 307
    return-void
.end method
