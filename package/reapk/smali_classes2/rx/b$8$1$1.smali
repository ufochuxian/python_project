.class Lrx/b$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$8$1;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/b$8$1;


# direct methods
.method constructor <init>(Lrx/b$8$1;)V
    .locals 0

    .prologue
    .line 1248
    iput-object p1, p0, Lrx/b$8$1$1;->a:Lrx/b$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 1252
    :try_start_0
    iget-object v0, p0, Lrx/b$8$1$1;->a:Lrx/b$8$1;

    iget-object v0, v0, Lrx/b$8$1;->c:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    iget-object v0, p0, Lrx/b$8$1$1;->a:Lrx/b$8$1;

    iget-object v0, v0, Lrx/b$8$1;->b:Lrx/h$a;

    invoke-virtual {v0}, Lrx/h$a;->unsubscribe()V

    .line 1256
    return-void

    .line 1254
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/b$8$1$1;->a:Lrx/b$8$1;

    iget-object v1, v1, Lrx/b$8$1;->b:Lrx/h$a;

    invoke-virtual {v1}, Lrx/h$a;->unsubscribe()V

    throw v0
.end method
