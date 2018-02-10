.class Lrx/internal/operators/c$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c$a;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/c$a;

.field private b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/internal/operators/c$a;)V
    .locals 0

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/c$a$1;, "Lrx/internal/operators/c$a.1;"
    iput-object p1, p0, Lrx/internal/operators/c$a$1;->a:Lrx/internal/operators/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/c$a$1;, "Lrx/internal/operators/c$a.1;"
    iget-object v0, p0, Lrx/internal/operators/c$a$1;->a:Lrx/internal/operators/c$a;

    iget-object v0, v0, Lrx/internal/operators/c$a;->a:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/c$a$1;->b:Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lrx/internal/operators/c$a$1;->b:Ljava/lang/Object;

    invoke-static {v0}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/c$a$1;, "Lrx/internal/operators/c$a.1;"
    const/4 v1, 0x0

    .line 108
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/c$a$1;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lrx/internal/operators/c$a$1;->a:Lrx/internal/operators/c$a;

    iget-object v0, v0, Lrx/internal/operators/c$a;->a:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/c$a$1;->b:Ljava/lang/Object;

    .line 111
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/c$a$1;->b:Ljava/lang/Object;

    invoke-static {v0}, Lrx/internal/operators/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lrx/internal/operators/c$a$1;->b:Ljava/lang/Object;

    throw v0

    .line 114
    :cond_1
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/c$a$1;->b:Ljava/lang/Object;

    invoke-static {v0}, Lrx/internal/operators/v;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lrx/internal/operators/c$a$1;->b:Ljava/lang/Object;

    invoke-static {v0}, Lrx/internal/operators/v;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 117
    :cond_2
    iget-object v0, p0, Lrx/internal/operators/c$a$1;->b:Ljava/lang/Object;

    invoke-static {v0}, Lrx/internal/operators/v;->f(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 120
    iput-object v1, p0, Lrx/internal/operators/c$a$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/c$a$1;, "Lrx/internal/operators/c$a.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
